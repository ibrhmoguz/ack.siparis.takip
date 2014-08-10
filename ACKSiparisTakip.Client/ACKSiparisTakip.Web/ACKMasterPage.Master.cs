using ACKSiparisTakip.Business.ACKBusiness.DataTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACKSiparisTakip.Web
{
    public partial class ACKMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SeciliMenuAyarla();
            }
        }

        private void SeciliMenuAyarla()
        {
            string url = Request.Url.AbsoluteUri;

            if (url.Contains("Siparis"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 0;
            }
            else if (url.Contains("IsTakvimi"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 1;
            }
            else if (url.Contains("YonetimKonsolu") ||
                     url.Contains("KullaniciTanimlama") ||
                     url.Contains("PersonelTanimlama"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 2;
            }
        }

        protected void RadRibbonBarMenu_Command(object sender, CommandEventArgs e)
        {
            string urlSiparis = "SiparisForm.aspx?KapiTipi=";
            string urlKullanici = "KullaniciTanimlama.aspx";
            string urlPersonel = "PersonelTanimlama.aspx";
            string urlIsTakvimi = "IsTakvimi.aspx";

            switch (e.CommandName)
            {
                case "SiparisEkleNova":
                    Response.Redirect(urlSiparis + KapiTipi.Nova.ToString());
                    break;
                case "SiparisEkleKroma":
                    Response.Redirect(urlSiparis + KapiTipi.Kroma.ToString());
                    break;
                case "SiparisEkleGuard":
                    Response.Redirect(urlSiparis + KapiTipi.Guard.ToString());
                    break;
                case "KullaniciEkle":
                    Response.Redirect(urlKullanici);
                    break;
                case "PersonelEkle":
                    Response.Redirect(urlPersonel);
                    break;
                case "IsTakvimiGoruntule":
                    Response.Redirect(urlIsTakvimi);
                    break;
                default:
                    break;
            }
        }
    }
}