using WPFTools.Communication.ServiceClients;
using WPFTools.Communication.Services;
using WPFTools.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace WorkManager.Clients
{
    public class StartupServiceClient : Client<IStartupService>, IStartupService, IStartupContext
    {
        public StartupServiceClient() : base(typeof(StartupServiceClient).Assembly) { }

        public DomainMetadata GetDomainMetadata() => Channel.GetDomainMetadata();
        public bool IsTestVersion() => Channel.IsTestVersion();
        public LoginResult Login(string userName, string password, LoginMetadata metadata) => Channel.Login(userName, password, metadata);
        public LogoutResult Logout(LogoutMetadata metadata) => Channel.Logout(metadata);
        public ComponentsValidationResult ValidateComponents(ComponentsValidationMetadata metadata) => Channel.ValidateComponents(metadata);

        public bool ValidateConnection()
        {
            Open();
            return State == CommunicationState.Opened;
        }
    }
}
