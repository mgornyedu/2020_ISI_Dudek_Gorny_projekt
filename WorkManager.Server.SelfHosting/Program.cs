using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;

namespace WorkManager.Server.SelfHosting
{
    class Program
    {
        static void Main(string[] args)
        {
            var service = new SelfHostService();
            if (Environment.UserInteractive)
                service.RunAsConsole(args);
            else
                ServiceBase.Run(service);
        }
    }
}
