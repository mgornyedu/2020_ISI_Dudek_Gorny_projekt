using WPFTools.Communication.Services;
using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using WorkManager.Data.Enums;
using WorkManager.Data.Models;
using WorkManager.Server.ServiceContracts;

namespace WorkManager.Clients
{
    public class MainServiceClient : Client<IMainService>, IMainService, IMetadataUsers
    {
        public IEnumerable<EFAccount> GetUsers(bool? inUseFilter) => Channel.GetUsers(inUseFilter);
        public EFAccount GetUser(int id) => Channel.GetUser(id);
        public EFAccount UpdateUser(EFAccount user) => Channel.UpdateUser(user);
        public bool CheckIfUserExists(EFAccount user) => Channel.CheckIfUserExists(user);
        public EFAccountView InsertUser(EFAccount user) => Channel.InsertUser(user);
        public bool RemoveUser(int id) => Channel.RemoveUser(id);
        public EFAccount CreateUser() => Channel.CreateUser();

        public Project GetProject(int id) => Channel.GetProject(id); 

        public IEnumerable<V_Project> GetProjects(bool? inUse) => Channel.GetProjects(inUse);

        public Task GetTask(int id) => Channel.GetTask(id);

        public IEnumerable<Task> GetTasks(bool? inUse) => Channel.GetTasks(inUse);
        public IEnumerable<V_Task> GetTasks(TaskState state, int projectId) => Channel.GetTasks(state, projectId);

        public Resource GetResource(int id) => Channel.GetResource(id);

        public IEnumerable<V_Resource> GetResources(bool? inUse) => Channel.GetResources(inUse);

        public Team GetTeam(int id) => Channel.GetTeam(id);

        public IEnumerable<V_Team> GetTeams(bool? inUse) => Channel.GetTeams(inUse);

        public bool CanRemoveResource(int id) => Channel.CanRemoveResource(id);
        public bool RemoveResource(int id) => Channel.RemoveResource(id);
        public bool CanRemoveProject(int id) => Channel.CanRemoveProject(id);
        public bool RemoveProject(int id) => Channel.RemoveProject(id);
        public bool CanRemoveTeam(int id) => Channel.CanRemoveTeam(id);
        public bool RemoveTeam(int id) => Channel.RemoveTeam(id);

        public Project CreateProject() => Channel.CreateProject();

        public Team CreateTeam() => Channel.CreateTeam();

        public IEnumerable<EFValuesHistory> GetValuesHistory(DateTime? from, DateTime? to) => Channel.GetValuesHistory(from, to);

        public bool RemoveTask(int id) => Channel.RemoveTask(id);

        public IEnumerable<AssignableModel> GetAccounts(int projectId) => Channel.GetAccounts(projectId);

        public void UpdateTaskState(int id, TaskState state) => Channel.UpdateTaskState(id, state);

        public bool CanRemoveUser(int id) => Channel.CanRemoveUser(id);

        public IEnumerable<V_ProjectStat> GetProjectStats() => Channel.GetProjectStats();

        public IEnumerable<V_AccountStat> GetAccountStats() => Channel.GetAccountStats();
    }
}
