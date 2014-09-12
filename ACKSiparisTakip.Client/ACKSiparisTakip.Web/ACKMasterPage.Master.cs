using ACKSiparisTakip.Business.ACKBusiness.DataTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace ACKSiparisTakip.Web
{
    public partial class ACKMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SeciliMenuAyarla();
                YetkiyeGoreMenuAyarla();
            }
        }

        private void YetkiyeGoreMenuAyarla()
        {
            if (Session["user"] != null)
            {
                LabelUserName.Text += Session["user"].ToString();
            }
            if (Session["yetki"] != null && Session["yetki"].ToString() != "Yönetici")
            {
                RadRibbonBarMenu.Tabs[2].Visible = false;
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
                     url.Contains("PersonelTanimlama") ||
                     url.Contains("Hatalar") ||
                     url.Contains("FormOgeGuncelleme"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 2;
            }
            else if (url.Contains("SifreGuncelleme"))
            {
                RadRibbonBarMenu.SelectedTabIndex = 3;
            }

            if (url.Contains("SiparisFormGoruntule"))
            {
                rbgSiparisIslemleri.Visible = true;
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
            string urlFormOgeGuncelle = "FormOgeGuncelleme.aspx";
            string urlIsTakvimi = "IsTakvimi.aspx";
            string urlSifre = "SifreGuncelleme.aspx";
            string urlSiparisSorgula = "SiparisSorgula.aspx";
            string urlMontajSorgula = "MontajSorgula.aspx";
            string urlHatalar = "Hatalar.aspx";

            switch (e.CommandName)
            {
                case "SiparisEkleNova":
                    NavigateUrl(urlSiparisFormKayit + KapiTipi.Nova.ToString());
                    break;
                case "SiparisEkleKroma":
                    NavigateUrl(urlSiparisFormKayit + KapiTipi.Kroma.ToString());
                    break;
                case "SiparisEkleGuard":
                    NavigateUrl(urlSiparisFormKayit + KapiTipi.Guard.ToString());
                    break;
                case "KullaniciEkle":
                    NavigateUrl(urlKullanici);
                    break;
                case "PersonelEkle":
                    NavigateUrl(urlPersonel);
                    break;
                case "FormOgeGuncelle":
                    Response.Redirect(urlFormOgeGuncelle);
                    break;
                case "IsTakvimiGoruntule":
                    NavigateUrl(urlIsTakvimi);
                    break;
                case "SiparisGuncelle":
                    NavigateUrl(urlSiparisFormGuncelle);
                    break;
                case "SifreGuncelle":
                    NavigateUrl(urlSifre);
                    break;
                case "SiparisSorgula":
                    NavigateUrl(urlSiparisSorgula);
                    break;
                case "MontajSorgula":
                    NavigateUrl(urlMontajSorgula);
                    break;
                case "HataListesi":
                    NavigateUrl(urlHatalar);
                    break;
                default:
                    break;
            }
        }

        private void NavigateUrl(string url)
        {
            Response.Redirect(url);
        }

        protected void LB_Logout_Click(object sender, EventArgs e)
        {
            Session.Clear();

            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cookies[FormsAuthentication.FormsCookieName].Expires = DateTime.Now;
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}