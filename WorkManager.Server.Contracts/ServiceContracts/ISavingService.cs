using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using WorkManager.Data.Models;

namespace WorkManager.Server.ServiceContracts
{
    [ServiceKnownType(typeof(Team))]
    [ServiceKnownType(typeof(Task))]
    [ServiceKnownType(typeof(Resource))]
    [ServiceKnownType(typeof(Project))]
    [ServiceKnownType(typeof(TaskTime))]
    [ServiceKnownType(typeof(TaskResource))]
    [ServiceKnownType(typeof(TeamAccount))]
    [ServiceKnownType(typeof(ProjectResource))]
    [ServiceKnownType(typeof(EFAccount))]
    [ServiceContract(SessionMode = SessionMode.Required)]
    public interface ISavingService
    {
        [OperationContract()]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Commit();
        [OperationContract(IsOneWay = true)]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Rollback();

        [OperationContract]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        int Insert(EFModel<int> model);

        [OperationContract(Name = "HistoryModelInsert")]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        int Insert(EFHistoryModel<int> model);

        [OperationContract(Name = "SimpleInsert")]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Insert(EFModel model);

        [OperationContract()]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void CascadeInsert(EFModel model);

        [OperationContract]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Modify(EFModel model);

        [OperationContract(Name = "HistoryModelModify")]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Modify(EFHistoryModel<int> model);

        [OperationContract]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Remove(EFModel model);

        [OperationContract(Name = "HistoryModelRemove")]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Remove(EFHistoryModel<int> model);

        [OperationContract]
        [TransactionFlow(TransactionFlowOption.NotAllowed)]
        void Delete(EFExcludableModel<int> model);


    }
}
