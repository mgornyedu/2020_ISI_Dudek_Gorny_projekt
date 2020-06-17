using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using WorkManager.Data.Enums;
using WorkManager.Data.Models;

namespace WorkManager.Server.ServiceContracts
{
    [ServiceContract]
    public interface IMainService
    {
        [OperationContract]
        IEnumerable<EFAccount> GetUsers(bool? inUseFilter);
        [OperationContract]
        EFAccount GetUser(int id);
        [OperationContract]
        EFAccount UpdateUser(EFAccount user);
        [OperationContract]
        bool CheckIfUserExists(EFAccount user);
        [OperationContract]
        EFAccountView InsertUser(EFAccount user);
        [OperationContract]
        bool RemoveUser(int id);
        [OperationContract]
        EFAccount CreateUser();
        [OperationContract]
        bool CanRemoveUser(int id);
        [OperationContract]
        IEnumerable<V_AccountStat> GetAccountStats();

        [OperationContract]
        Project GetProject(int id);
        [OperationContract]
        IEnumerable<V_Project> GetProjects(bool? inUse);
        [OperationContract]
        bool CanRemoveProject(int id);
        [OperationContract]
        bool RemoveProject(int id);
        [OperationContract]
        Project CreateProject();
        [OperationContract]
        IEnumerable<V_ProjectStat> GetProjectStats();

        [OperationContract]
        Task GetTask(int id);
        [OperationContract]
        IEnumerable<Task> GetTasks(bool? inUse);
        [OperationContract(Name = "GetTasksByState")]
        IEnumerable<V_Task> GetTasks(TaskState state, int projectId);
        [OperationContract]
        bool RemoveTask(int id);

        [OperationContract]
        Resource GetResource(int id);
        [OperationContract]
        IEnumerable<V_Resource> GetResources(bool? inUse);
        [OperationContract]
        bool CanRemoveResource(int id);
        [OperationContract]
        bool RemoveResource(int id);

        [OperationContract]
        Team GetTeam(int id);
        [OperationContract]
        IEnumerable<V_Team> GetTeams(bool? inUse);
        [OperationContract]
        bool CanRemoveTeam(int id);
        [OperationContract]
        bool RemoveTeam(int id);
        [OperationContract]
        Team CreateTeam();

        [OperationContract]
        IEnumerable<EFValuesHistory> GetValuesHistory(DateTime? from, DateTime? to);
        [OperationContract(Name = "GetAccountsForProject")]
        IEnumerable<AssignableModel> GetAccounts(int projectId);
        [OperationContract]
        void UpdateTaskState(int id, TaskState state);
    }
}
