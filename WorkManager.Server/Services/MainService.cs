using WPFTools.Communication.Services;
using WPFTools.DataAccess;
using WPFTools.Enums;
using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WorkManager.Data.DataAccess;
using WorkManager.Data.Enums;
using WorkManager.Data.Models;
using WorkManager.Server.ServiceContracts;

namespace WorkManager.Server.Services
{
    public class MainService : Service<DataContext>, IMainService, IMetadataUsers
    {
        private readonly ResourceRepository _ResourceRepository = new ResourceRepository();
        private readonly TaskRepository _TaskRepository = new TaskRepository();
        private readonly ProjectRepository _ProjectRepository = new ProjectRepository();
        private readonly TeamRepository _TeamRepository = new TeamRepository();
        private readonly AuthorizationRepository _AuthorizationRepository = new AuthorizationRepository();
        private readonly HistoryRepository _HistoryRepository = new HistoryRepository();
        private readonly SavingRepository _SavingRepository = new SavingRepository();

        public Resource GetResource(int id) => _ResourceRepository.Get<Resource>(DataContext, id);
        public IEnumerable<V_Resource> GetResources(bool? inUse) => _ResourceRepository.GetAll<V_Resource>(DataContext, inUse);

        public Task GetTask(int id)
        {
            var result = _TaskRepository.GetTask(DataContext, id);
            result.AssignResources(_TaskRepository.GetResources(DataContext, new int[0]));
            return result;
        }

        public IEnumerable<Task> GetTasks(bool? inUse) => _TaskRepository.GetAll<Task>(DataContext, inUse);
        public IEnumerable<V_Task> GetTasks(TaskState state, int projectId) => _TaskRepository.GetTasks(DataContext, state, projectId);

        public Project GetProject(int id)
        {
            var result = _ProjectRepository.GetProject(DataContext, id);
            result.AssignResources(_ProjectRepository.GetResources(DataContext, new int[0]), _ProjectRepository.GetTeams(DataContext, null));
            return result;
        }
        public IEnumerable<V_Project> GetProjects(bool? inUse) => _ProjectRepository.GetAll<V_Project>(DataContext, inUse);

        public Team GetTeam(int id)
        {
            var result = _TeamRepository.GetTeam(DataContext, id);
            result.AssignAccountTeams(_TeamRepository.GetAccounts(DataContext, result.AccountTeams.Select(x => x.AccountId).ToArray()));
            return result;
        }
        public IEnumerable<V_Team> GetTeams(bool? inUse) => _TeamRepository.GetAll<V_Team>(DataContext, inUse);

        public IEnumerable<EFAccount> GetUsers(bool? InUseFilter)
        {
            return _AuthorizationRepository.GetUsers(DataContext, InUseFilter);
        }
        public EFAccount GetUser(int id)
        {
            return _AuthorizationRepository.GetUser(DataContext, id);
        }
        public EFAccount UpdateUser(EFAccount user)
        {
            return _AuthorizationRepository.UpdateUser(DataContext, user);
        }
        public bool CheckIfUserExists(EFAccount user)
        {
            return _AuthorizationRepository.CheckIfUserExists(DataContext, user.UserName, user.Id);
        }
        public EFAccountView InsertUser(EFAccount account)
        {
            _AuthorizationRepository.InsertUser(DataContext, account);
            EFAccount user = _AuthorizationRepository.GetUser(DataContext, account.Id);
            return new EFAccountView() { UserName = user.UserName, Id = user.Id, InUse = user.InUse, Name = user.Name, Surname = user.Surname };
        }
        public bool RemoveUser(int id)
        {
            return _SavingRepository.Remove<EFAccount>(DataContext, id, Client.ModUser, Client.ModComp);
        }
        public EFAccount CreateUser()
        {
            EFAccount account = new EFAccount()
            {
                TrackingState = TrackingState.Added
            };
            return account;
        }

        public void Dispose()
        {
            DataContext.Dispose();
        }

        public bool CanRemoveResource(int id)
        {
            return _ResourceRepository.CanRemoveResource(DataContext, id);
        }

        public bool RemoveResource(int id)
        {
            return _SavingRepository.Remove<Resource>(DataContext, id, Client.ModUser, Client.ModComp);
        }

        public bool CanRemoveProject(int id)
        {
            return _ProjectRepository.CanRemoveProject(DataContext, id);
        }

        public bool RemoveProject(int id)
        {
            return _SavingRepository.Remove<Project>(DataContext, id, Client.ModUser, Client.ModComp);
        }

        public bool CanRemoveTeam(int id)
        {
            return _TeamRepository.CanRemoveTeam(DataContext, id);
        }

        public bool RemoveTeam(int id)
        {
            return _SavingRepository.Remove<Team>(DataContext, id, Client.ModUser, Client.ModComp);
        }

        public Project CreateProject()
        {
            var result = new Project()
            {
                TrackingState = TrackingState.Added,
                ResourceForProject = new System.Collections.ObjectModel.ObservableCollection<ProjectResource>()
            };
            result.AssignResources(_ProjectRepository.GetResources(DataContext, new int[0]), _ProjectRepository.GetTeams(DataContext, null));
            return result;
        }

        public Team CreateTeam()
        {
            var result = new Team()
            {
                TrackingState = TrackingState.Added,
                AccountTeams = new System.Collections.ObjectModel.ObservableCollection<TeamAccount>()
            };
            result.AssignAccountTeams(_TeamRepository.GetAccounts(DataContext, new int[0]));
            return result;
        }

        public IEnumerable<EFValuesHistory> GetValuesHistory(DateTime? from, DateTime? to)
        {
            return _HistoryRepository.GetValuesHistory(DataContext, from, to);
        }

        public bool RemoveTask(int id)
        {
            return _SavingRepository.Remove<Task>(DataContext, id, Client.ModUser, Client.ModComp);
        }

        public IEnumerable<AssignableModel> GetAccounts(int projectId)
        {
            return _ProjectRepository.GetAccounts(DataContext, projectId);
        }

        public void UpdateTaskState(int id, TaskState state)
        {
            _TaskRepository.UpdateTaskState(DataContext, id, state, Client.ModUser, Client.ModComp);
        }

        public bool CanRemoveUser(int id)
        {
            return _TeamRepository.CanRemoveUser(DataContext, id);
        }

        public IEnumerable<V_ProjectStat> GetProjectStats()
        {
            return _ProjectRepository.GetProjectStats(DataContext);
        }

        public IEnumerable<V_AccountStat> GetAccountStats()
        {
            return _ProjectRepository.GetAccountStats(DataContext);
        }
    }
}
