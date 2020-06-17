using WPFTools.Communication.ServiceClients;
using WPFTools.Models;

namespace WorkManager.Clients
{
    public class SavingServiceClient : Client<Server.ServiceContracts.ISavingService>, Server.ServiceContracts.ISavingService
    {
        public SavingServiceClient() : base() { }

        public void Commit() => Channel.Commit();

        public void Rollback() => Channel.Rollback();

        public void CascadeInsert(EFModel model) => Channel.CascadeInsert(model);

        public void Delete(EFExcludableModel<int> model) => Channel.Delete(model);

        public int Insert(EFModel<int> model) => Channel.Insert(model);

        public int Insert(EFHistoryModel<int> model) => Channel.Insert(model);

        public void Insert(EFModel model) => Channel.Insert(model);

        public void Modify(EFModel model) => Channel.Modify(model);

        public void Modify(EFHistoryModel<int> model) => Channel.Modify(model);

        public void Remove(EFModel model) => Channel.Remove(model);

        public void Remove(EFHistoryModel<int> model) => Channel.Remove(model);

    }
}
