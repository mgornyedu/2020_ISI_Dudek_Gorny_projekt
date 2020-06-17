using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using WorkManager.Server.Services;

namespace WorkManager.Server.SelfHosting
{
    class SelfHostService : WPFTools.Services.HostService
    {
        public SelfHostService() : base(nameof(SelfHostService)) { }

        protected override IEnumerable<ServiceHost> GetServices()
        {
            string ip = "localhost";//10.0.0.4
            yield return new ServiceHost(typeof(StartupService), new Uri[] {
                new Uri($"net.tcp://{ip}:3302/"),
            });
            yield return new ServiceHost(typeof(SavingService), new Uri[] {
                new Uri($"net.tcp://{ip}:3302/"),
            });
            yield return new ServiceHost(typeof(MainService), new Uri[] {
                new Uri($"net.tcp://{ip}:3302/"),
            });
        }
    }
}
