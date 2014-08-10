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

            if (url.Contains("SiparisForm"))
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
            else if (url.Contains("SifreGuncelleme"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 3;
            }

            if (url.Contains("SiparisFormGoruntule"))
            {
                rbbSiparisGuncelle.Visible = true;
                rbbSiparisYazdir.Visible = true;
            }
        }

        protected void RadRibbonBarMenu_Command(object sender, CommandEventArgs e)
        {
            string siparisNo = String.Empty;
            if (Request.QueryString["SiparisNo"] != null)
                siparisNo = Request.QueryString["SiparisNo"].ToString();

            string urlSiparisFormKayit = "SiparisFormKayit.aspx?KapiTipi=";
            string urlSiparisFormGuncelle = "SiparisFormGuncelle.aspx?SiparisNo=" + siparisNo;
            string urlKullanici = "KullaniciTanimlama.aspx";
            string urlPersonel = "PersonelTanimlama.aspx";
            string urlIsTakvimi = "IsTakvimi.aspx";
            string urlSifre = "SifreGuncelleme.aspx";

            switch (e.CommandName)
            {
                case "SiparisEkleNova":
                    Response.Redirect(urlSiparisFormKayit + KapiTipi.Nova.ToString());
                    break;
                case "SiparisEkleKroma":
                    Response.Redirect(urlSiparisFormKayit + KapiTipi.Kroma.ToString());
                    break;
                case "SiparisEkleGuard":
                    Response.Redirect(urlSiparisFormKayit + KapiTipi.Guard.ToString());
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
                case "SiparisGuncelle":
                    Response.Redirect(urlSiparisFormGuncelle);
					break;
                case "SifreGuncelle":
                    Response.Redirect(urlSifre);
                    break;
                default:
                    break;
            }
        }
    }
}