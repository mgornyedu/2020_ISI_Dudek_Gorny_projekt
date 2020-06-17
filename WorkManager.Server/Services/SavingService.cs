using WPFTools.Attributes;
using WPFTools.DataAccess;
using WPFTools.Models;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.ServiceModel;
using System.Transactions;
using WorkManager.Data.DataAccess;
using WorkManager.Data.Models;
using WorkManager.Server.ServiceContracts;

namespace WorkManager.Server.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession, ConcurrencyMode = ConcurrencyMode.Single,
                     ReleaseServiceInstanceOnTransactionComplete = false,
                     TransactionAutoCompleteOnSessionClose = false)]
    public class SavingService : Service<DataContext>, ISavingService 
    {
        protected SavingRepository SavingRepository { get; } = new SavingRepository();
        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public virtual void Commit() => OperationContext.Current.SetTransactionComplete();

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public virtual void Rollback() => Transaction.Current.Rollback();


        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void CascadeInsert(EFModel model)
        {
            BaseCascadeInsert(model);
            DataContext.SaveChanges();
        }
        protected void BaseCascadeInsert(EFModel model)
        {
            var type = model.GetType();
            foreach (var property in type.GetProperties())
            {
                if (property.GetCustomAttribute<DeepTrackingPropertyAttribute>() != null)
                {
                    if (property.GetValue(model) is EFModel subModel)
                        BaseCascadeInsert(subModel);
                }
                else if (property.GetCustomAttribute<DeepTrackingCollectionAttribute>() != null)
                {
                    if (property.GetValue(model) is IEnumerable<EFModel> enumerable)
                        foreach (var item in enumerable.ToList())
                            BaseCascadeInsert(item);
                }
            }
            type.GetProperty("ModUser")?.SetValue(model, Client.ModUser);
            type.GetProperty("ModComp")?.SetValue(model, Client.ModComp);
            DataContext.Entry(model).State = Microsoft.EntityFrameworkCore.EntityState.Added;
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Delete(EFExcludableModel<int> model)
        {
            model.ModComp = Client.ModComp;
            model.ModUser = Client.ModUser;
            SavingRepository.Delete(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public int Insert(EFModel<int> model)
        {
            return SavingRepository.Insert(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public int Insert(EFHistoryModel<int> model)
        {
            model.ModComp = Client.ModComp;
            model.ModUser = Client.ModUser;
            return SavingRepository.Insert(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Insert(EFModel model)
        {
            SavingRepository.Insert(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Modify(EFModel model)
        {
            SavingRepository.Update(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Modify(EFHistoryModel<int> model)
        {
            model.ModComp = Client.ModComp;
            model.ModUser = Client.ModUser;
            SavingRepository.Update(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Remove(EFModel model)
        {
            SavingRepository.Remove(DataContext, model);
        }

        [OperationBehavior(TransactionScopeRequired = true, TransactionAutoComplete = false)]
        public void Remove(EFHistoryModel<int> model)
        {
            model.ModComp = Client.ModComp;
            model.ModUser = Client.ModUser;
            SavingRepository.Remove(DataContext, model);
        }
    }
}
