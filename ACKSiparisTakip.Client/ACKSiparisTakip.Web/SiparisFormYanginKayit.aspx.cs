using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Business.ACKBusiness.DataTypes;
using ACKSiparisTakip.Web.Helper;
using Telerik.Web.UI;
using System.Globalization;

namespace ACKSiparisTakip.Web
{
    public partial class SiparisFormYanginKayit : ACKBasePage
    {
        private static string ANKARA_IL_KODU = "6";

        public KapiTipi KapiTip
        {
            get
            {
                if (!String.IsNullOrWhiteSpace(Request.QueryString["KapiTipi"]))
                {
                    string tip = Request.QueryString["KapiTipi"].ToString();
                    if (tip == KapiTipi.Nova.ToString())
                        return KapiTipi.Nova;
                    else if (tip == KapiTipi.Kroma.ToString())
                        return KapiTipi.Kroma;
                    else if (tip == KapiTipi.Guard.ToString())
                        return KapiTipi.Guard;
                    else
                        return KapiTipi.Yangin;
                }
                else
                    return KapiTipi.Nova;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.MaintainScrollPositionOnPostBack = true;

            if (!Page.IsPostBack)
            {
                FormDoldur();
                CurrencyAyarla();
            }
        }

        private void CurrencyAyarla()
        {
            CultureInfo c = new CultureInfo("TR-tr");
            txtNakitPesin.Culture = c;
            txtNakitKalan.Culture = c;
            txtKKartiPesin.Culture = c;
            txtKKartiKalan.Culture = c;
            txtCekPesin.Culture = c;
            txtCekKalan.Culture = c;
        }

        private void FormDoldur()
        {
            string seriId = ((int)this.KapiTip).ToString();
            string seriAdi = "YANGIN";
       
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ID", seriId);
            prms.Add("KAPISERI", seriAdi);

            DataSet ds = new SiparisIslemleriBS().RefTanimlariniGetir(prms);
            if (ds.Tables.Count == 0)
                return;

            DataTable dtKapiModeli = ds.Tables["KAPIMODELI"];
            DataTable dtKapiRenk = ds.Tables["KAPIRENK"];
            DataTable dtKilitSistem = ds.Tables["KILITSISTEM"];
            DataTable dtEsik = ds.Tables["ESIK"];
            DataTable dtMontajSekli = ds.Tables["MONTAJSEKLI"];
            DataTable dtTeslimSekli = ds.Tables["TESLIMSEKLI"];
            DataTable dtPersonel = ds.Tables["PERSONEL"];
            DataTable dtCekmeKol = ds.Tables["CEKMEKOL"];

            DropDownBindEt(ddlIcKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlDisKapiModeli, dtKapiModeli); 
            DropDownBindEt(ddlYanginMetalRengi, dtKapiRenk);
            DropDownBindEt(ddlKilitSistemi, dtKilitSistem);
            DropDownBindEt(ddlEsik, dtEsik);
            DropDownBindEt(ddlMontajSekli, dtMontajSekli);
            DropDownBindEt(ddlTeslimSekli, dtTeslimSekli);
            DropDownBindEt(ddlOlcumAlan, dtPersonel);
            DropDownBindEt(ddlCekmeKolu, dtCekmeKol);

            IlleriGetir();
        }

        private void DropDownBindEt(Telerik.Web.UI.RadDropDownList ddl, DataTable dt)
        {
            ddl.DataSource = dt;
            ddl.DataTextField = "AD";
            ddl.DataValueField = "ID";
            ddl.DataBind();
            ddl.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));
        }

        
        protected void IlleriGetir()
        {
            DataTable dt = new SiparisIslemleriBS().IlleriGetir();
            if (dt.Rows.Count > 0)
            {
                ddlMusteriIl.DataSource = dt;
                ddlMusteriIl.DataTextField = "ILAD";
                ddlMusteriIl.DataValueField = "ILKOD";
                ddlMusteriIl.DataBind();

                ddlMusteriIl.FindItemByValue(ANKARA_IL_KODU).Selected = true;
                IlceleriGetir(ANKARA_IL_KODU);
            }
            else
            {
                ddlMusteriIl.DataSource = null;
                ddlMusteriIl.DataBind();
            }
        }

        protected void IlceleriGetir(string ilKod)
        {
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ILKOD", ilKod);

            DataTable dt = new SiparisIslemleriBS().IlceleriGetir(prms);

            if (dt.Rows.Count > 0)
            {
                ddlMusteriIlce.DataSource = dt;
                ddlMusteriIlce.DataTextField = "ILCEAD";
                ddlMusteriIlce.DataValueField = "ILCEKOD";
                ddlMusteriIlce.DataBind();
            }
            else
            {
                ddlMusteriIlce.DataSource = null;
                ddlMusteriIlce.DataBind();
            }
        }

        protected void SemtleriGetir(string ilceKod)
        {
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ILCEKOD", ilceKod);

            DataTable dt = new SiparisIslemleriBS().SemtleriGetir(prms);

            if (dt.Rows.Count > 0)
            {
                ddlMusteriSemt.DataSource = dt;
                ddlMusteriSemt.DataTextField = "SEMTAD";
                ddlMusteriSemt.DataValueField = "SEMTKOD";
                ddlMusteriSemt.DataBind();
            }
            else
            {
                ddlMusteriSemt.DataSource = null;
                ddlMusteriSemt.DataBind();
            }
        }
        protected void ddlMusteriIl_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
        {
            ddlMusteriIlce.Text = "";
            ddlMusteriIlce.Items.Clear();
            ddlMusteriSemt.Items.Clear();
            ddlMusteriSemt.Text = "";
            IlceleriGetir(e.Value);
        }

        protected void ddlMusteriIlce_SelectedIndexChanged(object sender, RadComboBoxSelectedIndexChangedEventArgs e)
        {
            ddlMusteriSemt.Items.Clear();
            ddlMusteriSemt.Text = "";
            SemtleriGetir(e.Value);
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Musteri musteri = new Musteri();
            Siparis siparis = new Siparis();
            Olcum olcum = new Olcum();
            Sozlesme sozlesme = new Sozlesme();

            if (!string.IsNullOrEmpty(txtAd.Text)) musteri.MusteriAd = txtAd.Text;
            if (!string.IsNullOrEmpty(txtSoyad.Text)) musteri.MusteriSoyad = txtSoyad.Text;
            if (!string.IsNullOrEmpty(txtAdres.Text)) musteri.MusteriAdres = txtAdres.Text;
            if (!string.IsNullOrEmpty(txtCepTel.Text)) musteri.MusteriCepTel = txtCepTel.Text;
            if (!string.IsNullOrEmpty(txtEvTel.Text)) musteri.MusteriEvTel = txtEvTel.Text;
            if (ComboBoxCheck(ddlMusteriIl)) musteri.MusteriIl = ddlMusteriIl.SelectedItem.Text;
            if (ComboBoxCheck(ddlMusteriIlce)) musteri.MusteriIlce = ddlMusteriIlce.SelectedItem.Text;
            if (ComboBoxCheck(ddlMusteriSemt)) musteri.MusteriSemt = ddlMusteriSemt.SelectedItem.Text;
            if (!string.IsNullOrEmpty(txtIsTel.Text)) musteri.MusteriIsTel = txtIsTel.Text;
            if (!string.IsNullOrEmpty(txtBayiAdi.Text)) siparis.BayiAd = txtBayiAdi.Text;
            if (DropDownCheck(ddlCekmeKolu)) siparis.CekmeKolu = ddlCekmeKolu.SelectedText;
            if (DropDownCheck(ddlDisKapiModeli)) siparis.DisKapiModel = ddlDisKapiModeli.SelectedText;
            if (DropDownCheck(ddlEsik)) siparis.Esik = ddlEsik.SelectedText;
            if (DropDownCheck(ddlIcKapiModeli)) siparis.IcKapiModel = ddlIcKapiModeli.SelectedText;
            if (DropDownCheck(ddlKilitSistemi)) siparis.KilitSistem = ddlKilitSistemi.SelectedText;
            siparis.SiparisTarih = DateTime.Now;
            if (!string.IsNullOrWhiteSpace(txtNot.Text)) siparis.Not = txtNot.Text;
           
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.Durum = "BEKLEYEN";
            if (!string.IsNullOrEmpty(txtFirmaAdi.Text)) siparis.FirmaAdi = txtFirmaAdi.Text;
           
            siparis.SiparisAdedi = string.IsNullOrWhiteSpace(txtSiparisAdedi.Text) ? "1" : txtSiparisAdedi.Text;
            if (!string.IsNullOrWhiteSpace(txtNakitPesin.Text)) siparis.NakitPesin = Convert.ToDouble(txtNakitPesin.Text);
            if (!string.IsNullOrWhiteSpace(txtNakitKalan.Text)) siparis.NakitKalan = Convert.ToDouble(txtNakitKalan.Text);
            siparis.NakitOdemeNot = string.IsNullOrWhiteSpace(txtNakitOdemeNotu.Text) ? null : txtNakitOdemeNotu.Text;

            if (!string.IsNullOrWhiteSpace(txtKKartiPesin.Text))
                siparis.KKartiPesin = Convert.ToDouble(txtKKartiPesin.Text);
            else
                siparis.KKartiPesin = null;
            if (!string.IsNullOrWhiteSpace(txtKKartiKalan.Text))
                siparis.KKartiKalan = Convert.ToDouble(txtKKartiKalan.Text);
            else
                siparis.KKartiKalan = null;
            siparis.KKartiOdemeNot = string.IsNullOrWhiteSpace(txtKKartiOdemeNotu.Text) ? null : txtKKartiOdemeNotu.Text;

            if (!string.IsNullOrWhiteSpace(txtCekPesin.Text))
                siparis.CekPesin = Convert.ToDouble(txtCekPesin.Text);
            else
                siparis.CekPesin = null;
            if (!string.IsNullOrWhiteSpace(txtCekKalan.Text))
                siparis.CekKalan = Convert.ToDouble(txtCekKalan.Text);
            else
                siparis.CekKalan = null;
            siparis.CekOdemeNot = string.IsNullOrWhiteSpace(txtCekOdemeNotu.Text) ? null : txtCekOdemeNotu.Text;

            
            if (DropDownCheck(ddlMontajSekli)) olcum.MontajSekli = ddlMontajSekli.SelectedText;
            if (DropDownCheck(ddlOlcumAlan)) olcum.OlcumAlanKisi = ddlOlcumAlan.SelectedText;
            if (!string.IsNullOrEmpty(txtOlcumBilgileri.Text)) olcum.OlcumBilgi = txtOlcumBilgileri.Text;
            if (rdtOlcuTarihSaat.SelectedDate != null) olcum.OlcumTarih = rdtOlcuTarihSaat.SelectedDate.Value;
            if (DropDownCheck(ddlTeslimSekli)) olcum.TeslimSekli = ddlTeslimSekli.SelectedText;

            sozlesme.MontajDurum = "A";
            if (rdpTeslimTarihi.SelectedDate != null) sozlesme.MontajTeslimTarih = rdpTeslimTarihi.SelectedDate.Value;
            if (!string.IsNullOrEmpty(txtVergiDairesi.Text)) sozlesme.VergiDairesi = txtVergiDairesi.Text;
            if (!string.IsNullOrEmpty(txtVergiNumarasi.Text)) sozlesme.VergiNumarası = txtVergiNumarasi.Text;
            if (!string.IsNullOrEmpty(txtFiyat.Text)) sozlesme.Fiyat = txtFiyat.Text;

            string seriAdi = this.KapiTip.ToString().ToUpper();
            string siparisNo = new SiparisIslemleriBS().SiparisKaydet(musteri, siparis, olcum, sozlesme);

            if (siparisNo != string.Empty)
            {
                MessageBox.Basari(this, "Sipariş eklendi.");
                Response.Redirect("~/SiparisFormGoruntule.aspx?SayfaModu=Kayit" + "&" + "SiparisNo=" + siparisNo + "&SeriAdi=" + seriAdi);
            }
            else
                MessageBox.Hata(this, "Sipariş eklenemedi.");
        }

        protected void btnIleri_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtAdres.Text) ||
                ddlMusteriIlce.SelectedItem == null ||
                string.IsNullOrWhiteSpace(ddlMusteriIlce.SelectedItem.Text) ||
                ddlMusteriIl.SelectedItem == null ||
                string.IsNullOrWhiteSpace(ddlMusteriIl.SelectedItem.Text) ||
                ddlMusteriSemt.SelectedItem == null ||
                string.IsNullOrWhiteSpace(ddlMusteriSemt.SelectedItem.Text))
            {
                MessageBox.Hata(this, "İl, ilçe ve semt alanlarını doldurmalısınız!");
                return;
            }

            tbMusteriSozlesme.Visible = true;
            txtMusteriAdres.Text = txtAdres.Text + " " + ddlMusteriSemt.SelectedItem.Text + "  " + ddlMusteriIlce.SelectedItem.Text + "  " + ddlMusteriIl.SelectedItem.Text;
            txtMusteriCepTel.Text = txtCepTel.Text;
        }

        private bool DropDownCheck(RadDropDownList ddl)
        {
            if (ddl.SelectedItem == null || ddl.SelectedIndex == 0)
                return false;
            else
                return true;
        }

        private bool ComboBoxCheck(RadComboBox rcb)
        {
            if (rcb.SelectedItem == null || rcb.SelectedIndex == 0)
                return false;
            else
                return true;
        }
    }
}