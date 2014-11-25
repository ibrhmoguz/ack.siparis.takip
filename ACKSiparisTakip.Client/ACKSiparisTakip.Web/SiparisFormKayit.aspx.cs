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

namespace ACKSiparisTakip.Web
{
    public partial class SiparisFormKayit : System.Web.UI.Page
    {
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
            }
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
            KapiNumaralariDoldur();
        }

        private void KapiNumaralariDoldur()
        {
            if (ddlKapiNo.Items != null && ddlKapiNo.Items.Count > 0)
                ddlKapiNo.Items.Clear();

            for (int i = 1; i <= 100; i++)
            {
                ddlKapiNo.Items.Add(new RadComboBoxItem(i.ToString(), i.ToString()));
            }

            ddlKapiNo.Items.Insert(0, new Telerik.Web.UI.RadComboBoxItem("Seçiniz", "0"));
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
                ddlMusteriIlce.DataValueField = "PKEY";
                ddlMusteriIlce.DataBind();
            }
            else
            {
                ddlMusteriIlce.DataSource = null;
                ddlMusteriIlce.DataBind();
            }
        }

        protected void ddlMusteriIl_SelectedIndexChanged(object sender, Telerik.Web.UI.RadComboBoxSelectedIndexChangedEventArgs e)
        {
            ddlMusteriIlce.Text = "";
            IlceleriGetir(e.Value);
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            Musteri musteri = new Musteri();
            Siparis siparis = new Siparis();
            Olcum olcum = new Olcum();
            Sozlesme sozlesme = new Sozlesme();

            musteri.MusteriAd = txtAd.Text;
            musteri.MusteriSoyad = txtSoyad.Text;
            musteri.MusteriAdres = txtAdres.Text;
            musteri.MusteriCepTel = txtCepTel.Text;
            musteri.MusteriEvTel = txtEvTel.Text;
            musteri.MusteriIl = ddlMusteriIl.SelectedItem.Text;
            musteri.MusteriIlce = ddlMusteriIlce.SelectedItem.Text;
            musteri.MusteriIsTel = txtIsTel.Text;

            siparis.AksesuarRenk = ddlAksesuarRengi.SelectedText;
            siparis.AluminyumRenk = ddlAluminyumRengi.SelectedText;
            siparis.Baba = ddlBaba.SelectedText;
            siparis.BarelTip = ddlBarelTipi.SelectedText;
            siparis.BayiAd = txtBayiAdi.Text;
            siparis.CekmeKolu = ddlCekmeKolu.SelectedText;
            siparis.Cita = ddlCita.SelectedText;
            siparis.ContaRenk = ddlContaRengi.SelectedText;
            siparis.DisKapiModel = ddlDisKapiModeli.SelectedText;
            siparis.DisKapiRenk = ddlDisKapiRengi.SelectedText;
            siparis.Durbun = ddlDurbun.SelectedText;
            siparis.Esik = ddlEsik.SelectedText;
            siparis.IcKapiModel = ddlIcKapiModeli.SelectedText;
            siparis.IcKapiRenk = ddlIcKapiRengi.SelectedText;
            siparis.KapiNo = ddlKapiNo.SelectedValue;
            siparis.KilitSistem = ddlKilitSistemi.SelectedText;
            siparis.PervazTip = ddlPervazTipi.SelectedText;
            siparis.SiparisTarih = DateTime.Now;
            siparis.TacTip = ddlTacTipi.SelectedText;
            siparis.Taktak = ddlTaktak.SelectedText;
            siparis.KapiTipi = this.KapiTip.ToString();

            olcum.MontajdaTakilacak = txtMontajdaTakilacaklar.Text;
            olcum.MontajSekli = ddlMontajSekli.SelectedText;
            olcum.OlcumAlanKisi = ddlOlcumAlan.SelectedText;
            olcum.OlcumBilgi = txtOlcumBilgileri.Text;
            olcum.OlcumTarih = rdtOlcuTarihSaat.SelectedDate.Value;
            olcum.TeslimSekli = ddlTeslimSekli.SelectedText;

            sozlesme.KalanOdeme = txtKalanOdeme.Text;
            sozlesme.MontajDurum = "A";
            sozlesme.MontajTeslimTarih = rdpTeslimTarihi.SelectedDate.Value;
            sozlesme.Pesinat = txtPesinat.Text;
            sozlesme.VergiDairesi = txtVergiDairesi.Text;
            sozlesme.VergiNumarası = txtVergiNumarasi.Text;
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
            tbMusteriSozlesme.Visible = true;
            txtMusteriAdSoyad.Text = txtAd.Text + " " + txtSoyad.Text;
            txtMusteriAdres.Text = txtAdres.Text + " " + ddlMusteriIlce.SelectedItem.Text + "  " + ddlMusteriIl.SelectedItem.Text;
            txtMusteriCepTel.Text = txtCepTel.Text;
        }
    }
}