using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using WebFrame.DataType.Common.Logging;

namespace ACKSiparisTakip.Web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception exc = this.Server.GetLastError();
            string user = Session["user"] != null ? Session["user"].ToString() : String.Empty;
            new LogWriter().Write(AppModules.ACKSiparisTakip, System.Diagnostics.EventLogEntryType.Error, exc, "", "", "", user);
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}