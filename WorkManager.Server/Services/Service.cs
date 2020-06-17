using WPFTools.Models;
using Newtonsoft.Json;
using System;
using System.Linq;
using System.ServiceModel;
using WorkManager.Data.Models;

namespace WorkManager.Server.Services
{
    public abstract class Service<T> : Service where T : EFContext, new()
    {
        public Service()
        {
            DataContext = new T();
        }
        public T DataContext { get; }
    }
    public abstract class Service
    {
        public Service()
        {
            var clientInfoJson = OperationContext.Current.IncomingMessageHeaders.GetHeader<string>("ClientInfo", "WorkManager");
            Client = JsonConvert.DeserializeObject<ClientInfo>(clientInfoJson);
        }
        public ClientInfo Client { get; }
    }
    public abstract class SingleService
    {
        protected Guid GetClientGuid()
        {
            var clientInfoJson = OperationContext.Current.IncomingMessageHeaders.GetHeader<string>("ClientInfo", "WorkManager");
            return JsonConvert.DeserializeObject<ClientInfo>(clientInfoJson).Guid;
        }
    }
}
