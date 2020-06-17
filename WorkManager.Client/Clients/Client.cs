using WPFTools;
using WPFTools.Attributes;
using System;
using System.Configuration;
using System.Linq;
using System.Reflection;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.ServiceModel.Configuration;
using System.ServiceModel.Description;
using System.Text.RegularExpressions;
using System.Xml;
using WorkManager.Data.Models;

namespace WorkManager.Clients
{
    public class Client<T> : ClientBase<T> where T : class
    {
        public Client() : base(ClientEndpointFactory<T>.GetServiceEndpoint()) { }
        public Client(string address) : base(ClientEndpointFactory<T>.GetServiceEndpoint(address)) { }
        public Client(Assembly assembly) : base(ClientEndpointFactory<T>.GetServiceEndpoint(assembly)) { }
        public Client(Assembly assembly, string address) : base(ClientEndpointFactory<T>.GetServiceEndpoint(assembly, address)) { }
        public T GetChannel() => Channel;
    }

   
}
