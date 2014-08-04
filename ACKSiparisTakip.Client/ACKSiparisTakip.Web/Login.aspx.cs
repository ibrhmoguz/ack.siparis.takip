using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparsTakip.Business.ACKBusiness;
using System.Configuration;

namespace ACKSiparisTakip.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LB_Login_Click(object sender, EventArgs e)
        {

         
            Dictionary<string,object> prms=new Dictionary<string,object>();
            prms.Add("KULLANICIADI", userName.Text);
            prms.Add("SIFRE", password.Text);

            DataTable dt = new SiparisIslemleriBS().KullaniciBilgisiGetir(prms);



            if (dt.Rows.Count > 0)
            {
                FormsAuthentication.RedirectFromLoginPage(userName.Text, false);
                Session["yetki"] = dt.Rows[0]["YETKI"].ToString();
                Session["sifre"] = password.Text;
                Session["user"] = userName.Text;
                Response.Redirect("Default.aspx");

            }
            else
            {
                
                //MessageBox.Show("Kullanıcı adı ya da şifre hatalı. Tekrar deneyiniz.");
            }

        }

        protected void LB_Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
           
            FormsAuthenticationProvider.LogOut();
        }
    }
}