using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ACKSiparisTakip.Web
{
    public class ACKBasePage : System.Web.UI.Page
    {
        protected override void OnLoad(EventArgs e)
        {
            if (Session["yetki"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            base.OnLoad(e);
        }
    }
}