using WPFTools.Attributes;
using WPFTools.Communication.Services;
using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using WorkManager.Data.Models;

namespace WorkManager.Server.Services
{
    [ServiceBehavior(InstanceContextMode = InstanceContextMode.PerSession, ConcurrencyMode = ConcurrencyMode.Single)]
    public class StartupService : Service<DataContext>, IStartupService
    {
        private readonly static List<Guid> clients = new List<Guid>();
        public ComponentsValidationResult ValidateComponents(ComponentsValidationMetadata metadata)
        {
            var atr = Assembly.GetEntryAssembly().GetCustomAttribute<AssemblyServerAttribute>();
            var serverAssembly = AppDomain.CurrentDomain.GetAssemblies().FirstOrDefault(x => x.GetName().Name == atr.AssemblyName);
            string version = serverAssembly.GetName().Version.ToString();
            if (!AssemblyCustomVersionAttribute.IsMatch(version, metadata.ServerVersionPattern))
                return new ComponentsValidationResult(WPFTools.Enums.ComponentsValidationResult.InvalidServerVersion);
            metadata.DatabaseVersionPattern = serverAssembly.GetCustomAttribute<AssemblyDatabaseVersionAttribute>()?.Version;
            metadata.LicenseAttribute = serverAssembly.GetCustomAttribute<LicenseAttribute>();
            if (!clients.Contains(Client.Guid))
                clients.Add(Client.Guid);
            if (metadata.LicenseAttribute is MaxSessionLicenseAttribute maxSessionLicense && maxSessionLicense != null)
                maxSessionLicense.CurrentSessionCount = clients.Count;
            var res = DataContext.ValidateComponents(metadata);
            if (res.Result == WPFTools.Enums.ComponentsValidationResult.Success && res.LicenseResult == WPFTools.Enums.LicenseValidationResult.Success)
                return res;
            clients.Remove(Client.Guid);
            return res;
        }

        public LoginResult Login(string userName, string password, LoginMetadata metadata)
        {
            return DataContext.Login(userName, password, metadata);
        }

        public LogoutResult Logout(LogoutMetadata metadata)
        {
            clients.Remove(Client.Guid);
            return DataContext.Logout(metadata);
        }

        public DomainMetadata GetDomainMetadata()
        {
            return DataContext.GetDomainMetadata();
        }

        public bool IsTestVersion()
        {
            return DataContext.IsTestVersion();
        }
    }
}
