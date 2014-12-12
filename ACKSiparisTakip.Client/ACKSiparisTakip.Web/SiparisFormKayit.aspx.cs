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
    public partial class SiparisFormKayit : ACKBasePage
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
                    else
                        return KapiTipi.Guard;
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
            string seriAdi = this.KapiTip.ToString().ToUpper();

            lblKapiTur.Text = seriAdi;
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ID", seriId);
            prms.Add("KAPISERI", seriAdi);

            DataSet ds = new SiparisIslemleriBS().RefTanimlariniGetir(prms);
            if (ds.Tables.Count == 0)
                return;

            DataTable dtKapiModeli = ds.Tables["KAPIMODELI"];
            DataTable dtKapiRenk = ds.Tables["KAPIRENK"];
            DataTable dtKilitSistem = ds.Tables["KILITSISTEM"];
            DataTable dtCita = ds.Tables["CITA"];
            DataTable dtEsik = ds.Tables["ESIK"];
            DataTable dtAksesuarRenk = ds.Tables["AKSESUARRENK"];
            DataTable dtMontajSekli = ds.Tables["MONTAJSEKLI"];
            DataTable dtTeslimSekli = ds.Tables["TESLIMSEKLI"];
            DataTable dtAluminyumRenk = ds.Tables["ALUMINYUMRENK"];
            DataTable dtTacTip = ds.Tables["TACTIP"];
            DataTable dtPervazTip = ds.Tables["PERVAZTIP"];
            DataTable dtContaRenk = ds.Tables["CONTARENK"];
            DataTable dtPersonel = ds.Tables["PERSONEL"];
            DataTable dtBarelTip = ds.Tables["BARELTIP"];
            DataTable dtCekmeKol = ds.Tables["CEKMEKOL"];

            DropDownBindEt(ddlIcKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlDisKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlIcKapiRengi, dtKapiRenk);
            DropDownBindEt(ddlDisKapiRengi, dtKapiRenk);
            DropDownBindEt(ddlKilitSistemi, dtKilitSistem);
            DropDownBindEt(ddlCita, dtCita);
            DropDownBindEt(ddlEsik, dtEsik);
            DropDownBindEt(ddlAksesuarRengi, dtAksesuarRenk);
            DropDownBindEt(ddlMontajSekli, dtMontajSekli);
            DropDownBindEt(ddlTeslimSekli, dtTeslimSekli);
            DropDownBindEt(ddlAluminyumRengi, dtAluminyumRenk);
            DropDownBindEt(ddlTacTipi, dtTacTip);
            DropDownBindEt(ddlPervazTipi, dtPervazTip);
            DropDownBindEt(ddlContaRengi, dtContaRenk);
            DropDownBindEt(ddlOlcumAlan, dtPersonel);
            DropDownBindEt(ddlBarelTipi, dtBarelTip);
            DropDownBindEt(ddlCekmeKolu, dtCekmeKol);

            Kontrol();
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

        private void Kontrol()
        {
            if (this.KapiTip.ToString() == "Guard")
            {
                trGuard1.Visible = true;
                trGuard2.Visible = true;
            }
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

            if (!string.IsNullOrEmpty(txtAd.Text))
            musteri.MusteriAd = txtAd.Text;
            if (!string.IsNullOrEmpty(txtSoyad.Text))
            musteri.MusteriSoyad = txtSoyad.Text;
            if (!string.IsNullOrEmpty(txtAdres.Text))
            musteri.MusteriAdres = txtAdres.Text;
            if (!string.IsNullOrEmpty(txtCepTel.Text))
            musteri.MusteriCepTel = txtCepTel.Text;
            if (!string.IsNullOrEmpty(txtEvTel.Text))
            musteri.MusteriEvTel = txtEvTel.Text;
            if (ddlMusteriIl.SelectedIndex!=0)
                musteri.MusteriIl = ddlMusteriIl.SelectedItem.Text;

            if (ddlMusteriIlce.SelectedIndex!=0)
                musteri.MusteriIlce = ddlMusteriIlce.SelectedItem.Text;
            if (ddlMusteriSemt.SelectedIndex==0)
                musteri.MusteriSemt = ddlMusteriSemt.SelectedItem.Text;
            if (!string.IsNullOrEmpty(txtIsTel.Text))   
                musteri.MusteriIsTel = txtIsTel.Text;
            if (ddlAksesuarRengi.SelectedIndex==0)
                siparis.AksesuarRenk = ddlAksesuarRengi.SelectedText;
            if (ddlAluminyumRengi.SelectedIndex==0)
                siparis.AluminyumRenk = ddlAluminyumRengi.SelectedText;
            if (ddlBaba.SelectedIndex!=0)
                siparis.Baba = ddlBaba.SelectedText;
            if (ddlBarelTipi.SelectedIndex != 0)
                siparis.BarelTip = ddlBarelTipi.SelectedText;
            if (!string.IsNullOrEmpty(txtBayiAdi.Text))   
            siparis.BayiAd = txtBayiAdi.Text;
            if (ddlCekmeKolu.SelectedIndex != 0)
                siparis.CekmeKolu = ddlCekmeKolu.SelectedText;
            if (ddlCita.SelectedIndex == 0)
                siparis.Cita = ddlCita.SelectedText;
            if (ddlContaRengi.SelectedIndex != 0)
                siparis.ContaRenk = ddlContaRengi.SelectedText;
            if (ddlDisKapiModeli.SelectedIndex != 0)
                siparis.DisKapiModel = ddlDisKapiModeli.SelectedText;
            if (ddlDisKapiRengi.SelectedIndex != 0)
                siparis.DisKapiRenk = ddlDisKapiRengi.SelectedText;
            if (ddlDurbun.SelectedIndex != 0)
                siparis.Durbun = ddlDurbun.SelectedText;
            if (ddlEsik.SelectedIndex != 0)
                siparis.Esik = ddlEsik.SelectedText;
            if (ddlEsik.SelectedIndex != 0)
                siparis.Esik = ddlEsik.SelectedText;
            if (ddlIcKapiModeli.SelectedIndex != 0)
                siparis.IcKapiModel = ddlIcKapiModeli.SelectedText;
            if (ddlIcKapiRengi.SelectedIndex != 0)
                siparis.IcKapiRenk = ddlIcKapiRengi.SelectedText;
            if (ddlKilitSistemi.SelectedIndex != 0)
                siparis.KilitSistem = ddlKilitSistemi.SelectedText;
            if (ddlPervazTipi.SelectedIndex != 0)
                siparis.PervazTip = ddlPervazTipi.SelectedText;
            if (ddlTacTipi.SelectedIndex != 0)
                siparis.TacTip = ddlTacTipi.SelectedText;
          
            siparis.SiparisTarih = DateTime.Now;

            if (ddlTaktak.SelectedIndex != 0)
                siparis.Taktak = ddlTaktak.SelectedText;
      
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.Durum = "BEKLEYEN";
            if (!string.IsNullOrEmpty(txtFirmaAdi.Text))
                siparis.FirmaAdi = txtFirmaAdi.Text;

            if (ddlKayitYapanKam.SelectedIndex != 0)
                siparis.KayıtYapanKamera = ddlKayitYapanKam.SelectedText;
            if (ddlKayitsizKam.SelectedIndex != 0)
                siparis.KayıtYapmayanKamera = ddlKayitsizKam.SelectedText;
            if (ddlAlarm.SelectedIndex != 0)
                siparis.Alarm = ddlAlarm.SelectedText;
            if (ddlOtomatikKilit.SelectedIndex != 0)
                siparis.OtomatikKilit = ddlOtomatikKilit.SelectedText;
            
            siparis.SiparisAdedi = string.IsNullOrWhiteSpace(txtSiparisAdedi.Text) ? "1" : txtSiparisAdedi.Text;

            if (!string.IsNullOrWhiteSpace(txtNakitPesin.Text))
                siparis.NakitPesin = Convert.ToDouble(txtNakitPesin.Text);
            else
                siparis.NakitPesin = null;

            if (!string.IsNullOrWhiteSpace(txtNakitKalan.Text))
                siparis.NakitKalan = Convert.ToDouble(txtNakitKalan.Text);
            else
                siparis.NakitKalan = null;
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

            if (!string.IsNullOrEmpty(txtMontajdaTakilacaklar.Text))
            olcum.MontajdaTakilacak = txtMontajdaTakilacaklar.Text;
            if (ddlMontajSekli.SelectedIndex != 0)
                olcum.MontajSekli = ddlMontajSekli.SelectedText;
            if (ddlOlcumAlan.SelectedIndex != 0)
                olcum.OlcumAlanKisi = ddlOlcumAlan.SelectedText;
            if (!string.IsNullOrEmpty(txtOlcumBilgileri.Text))
            olcum.OlcumBilgi = txtOlcumBilgileri.Text;
            if (rdtOlcuTarihSaat.SelectedDate!=null)
            olcum.OlcumTarih = rdtOlcuTarihSaat.SelectedDate.Value;
            if (ddlTeslimSekli.SelectedIndex != 0)
            olcum.TeslimSekli = ddlTeslimSekli.SelectedText;
            
            sozlesme.MontajDurum = "A";
            if (rdpTeslimTarihi.SelectedDate != null)
                sozlesme.MontajTeslimTarih = rdpTeslimTarihi.SelectedDate.Value;
            if (!string.IsNullOrEmpty(txtVergiDairesi.Text))
            sozlesme.VergiDairesi = txtVergiDairesi.Text;
            if (!string.IsNullOrEmpty(txtVergiNumarasi.Text))
            sozlesme.VergiNumarası = txtVergiNumarasi.Text;
            if (!string.IsNullOrEmpty(txtFiyat.Text))
            sozlesme.Fiyat = txtFiyat.Text;

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
    }
}
