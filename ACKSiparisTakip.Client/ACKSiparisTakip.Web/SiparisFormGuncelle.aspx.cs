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
    public partial class SiparisFormGuncelle : ACKBasePage
    {
        public string SayfaModu
        {
            get
            {
                if (!String.IsNullOrEmpty(Request.QueryString["SayfaModu"]))
                {
                    return Request.QueryString["SayfaModu"].ToString();
                }
                else
                    return String.Empty;
            }
        }

        public string SiparisNo
        {
            get
            {
                if (!String.IsNullOrEmpty(Request.QueryString["SiparisNo"]))
                {
                    return Request.QueryString["SiparisNo"].ToString();
                }
                else
                    return String.Empty;
            }
        }

        public string SeriAdi
        {
            get
            {
                if (!String.IsNullOrEmpty(Request.QueryString["SeriAdi"]))
                {
                    return Request.QueryString["SeriAdi"].ToString();
                }
                else
                    return String.Empty;
            }
        }

        public KapiTipi KapiTip
        {
            get
            {
                if (!String.IsNullOrWhiteSpace(Request.QueryString["SeriAdi"]))
                {
                    string tip = Request.QueryString["SeriAdi"].ToString();
                    if (tip == KapiTipi.Nova.ToString().ToUpper())
                        return KapiTipi.Nova;
                    else if (tip == KapiTipi.Kroma.ToString().ToUpper())
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
            if (Session["yetki"].ToString() == "Kullanici")
            {
                MessageBox.Hata(this, "Bu sayfaya erişim yetkiniz yoktur!");
                return;
            }

            if (!Page.IsPostBack)
            {
                FormDoldur();
                FormBilgileriniGetir();
                KapiTurAyarla();
            }
        }

        private void FormBilgileriniGetir()
        {
            lblKapiTur.Text = this.SeriAdi;
            txtSiparisNo.Text = this.SiparisNo;

            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("SIPARISNO", this.SiparisNo);

            DataTable dtSiparis = new SiparisIslemleriBS().SiparisBilgileriniGetir(prms);
            if (dtSiparis.Rows.Count == 0)
                return;

            DataRow rowSiparis = dtSiparis.Rows[0];

            DataTable dtMontaj = new MontajBS().MontajBilgisiGetir(this.SiparisNo);
            if (dtMontaj.Rows.Count == 0)
                return;

            DataRow rowMontaj = dtMontaj.Rows[0];

            Musteri musteri = new Musteri();
            Siparis siparis = new Siparis();
            Olcum olcum = new Olcum();
            Sozlesme sozlesme = new Sozlesme();

            musteri.MusteriAd = (rowSiparis["MUSTERIAD"] != DBNull.Value) ? rowSiparis["MUSTERIAD"].ToString() : String.Empty;
            musteri.MusteriSoyad = (rowSiparis["MUSTERISOYAD"] != DBNull.Value) ? rowSiparis["MUSTERISOYAD"].ToString() : String.Empty;
            musteri.MusteriAdres = (rowSiparis["MUSTERIADRES"] != DBNull.Value) ? rowSiparis["MUSTERIADRES"].ToString() : String.Empty;
            musteri.MusteriCepTel = (rowSiparis["MUSTERICEPTEL"] != DBNull.Value) ? rowSiparis["MUSTERICEPTEL"].ToString() : String.Empty;
            musteri.MusteriEvTel = (rowSiparis["MUSTERIEVTEL"] != DBNull.Value) ? rowSiparis["MUSTERIEVTEL"].ToString() : String.Empty;
            musteri.MusteriIl = (rowSiparis["MUSTERIIL"] != DBNull.Value) ? rowSiparis["MUSTERIIL"].ToString() : String.Empty;
            musteri.MusteriIlce = (rowSiparis["MUSTERIILCE"] != DBNull.Value) ? rowSiparis["MUSTERIILCE"].ToString() : String.Empty;
            musteri.MusteriIsTel = (rowSiparis["MUSTERIISTEL"] != DBNull.Value) ? rowSiparis["MUSTERIISTEL"].ToString() : String.Empty;

            siparis.AksesuarRenk = (rowSiparis["AKSESUARRENK"] != DBNull.Value) ? rowSiparis["AKSESUARRENK"].ToString() : String.Empty;
            siparis.AluminyumRenk = (rowSiparis["ALUMINYUMRENK"] != DBNull.Value) ? rowSiparis["ALUMINYUMRENK"].ToString() : String.Empty;
            siparis.Baba = (rowSiparis["BABA"] != DBNull.Value) ? rowSiparis["BABA"].ToString() : String.Empty;
            siparis.BarelTip = (rowSiparis["BARELTIP"] != DBNull.Value) ? rowSiparis["BARELTIP"].ToString() : String.Empty;
            siparis.BayiAd = (rowSiparis["BAYIADI"] != DBNull.Value) ? rowSiparis["BAYIADI"].ToString() : String.Empty;
            siparis.CekmeKolu = (rowSiparis["CEKMEKOLU"] != DBNull.Value) ? rowSiparis["CEKMEKOLU"].ToString() : String.Empty;
            siparis.Cita = (rowSiparis["CITA"] != DBNull.Value) ? rowSiparis["CITA"].ToString() : String.Empty;
            siparis.ContaRenk = (rowSiparis["CONTARENK"] != DBNull.Value) ? rowSiparis["CONTARENK"].ToString() : String.Empty;
            siparis.DisKapiModel = (rowSiparis["DISKAPIMODEL"] != DBNull.Value) ? rowSiparis["DISKAPIMODEL"].ToString() : String.Empty;
            siparis.DisKapiRenk = (rowSiparis["DISKAPIRENK"] != DBNull.Value) ? rowSiparis["DISKAPIRENK"].ToString() : String.Empty;
            siparis.Durbun = (rowSiparis["DURBUN"] != DBNull.Value) ? rowSiparis["DURBUN"].ToString() : String.Empty;
            siparis.Esik = (rowSiparis["ESIK"] != DBNull.Value) ? rowSiparis["ESIK"].ToString() : String.Empty;
            siparis.IcKapiModel = (rowSiparis["ICKAPIMODEL"] != DBNull.Value) ? rowSiparis["ICKAPIMODEL"].ToString() : String.Empty;
            siparis.IcKapiRenk = (rowSiparis["ICKAPIRENK"] != DBNull.Value) ? rowSiparis["ICKAPIRENK"].ToString() : String.Empty;
            siparis.KapiNo = (rowSiparis["KAPINO"] != DBNull.Value) ? rowSiparis["KAPINO"].ToString() : String.Empty;
            siparis.KilitSistem = (rowSiparis["KILITSISTEM"] != DBNull.Value) ? rowSiparis["KILITSISTEM"].ToString() : String.Empty;
            siparis.PervazTip = (rowSiparis["PERVAZTIP"] != DBNull.Value) ? rowSiparis["PERVAZTIP"].ToString() : String.Empty;
            siparis.SiparisTarih = (rowSiparis["SIPARISTARIH"] != DBNull.Value) ? Convert.ToDateTime(rowSiparis["SIPARISTARIH"].ToString()) : DateTime.MinValue;
            siparis.TacTip = (rowSiparis["TACTIP"] != DBNull.Value) ? rowSiparis["TACTIP"].ToString() : String.Empty;
            siparis.Taktak = (rowSiparis["TAKTAK"] != DBNull.Value) ? rowSiparis["TAKTAK"].ToString() : String.Empty;
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.Durum = (rowSiparis["DURUM"] != DBNull.Value) ? rowSiparis["DURUM"].ToString() : String.Empty;

            olcum.MontajdaTakilacak = (rowSiparis["MONTAJDATAKILACAK"] != DBNull.Value) ? rowSiparis["MONTAJDATAKILACAK"].ToString() : String.Empty;
            olcum.MontajSekli = (rowSiparis["MONTAJSEKLI"] != DBNull.Value) ? rowSiparis["MONTAJSEKLI"].ToString() : String.Empty;
            olcum.OlcumAlanKisi = (rowSiparis["OLCUMALANKISI"] != DBNull.Value) ? rowSiparis["OLCUMALANKISI"].ToString() : String.Empty;
            olcum.OlcumBilgi = (rowSiparis["OLCUMBILGI"] != DBNull.Value) ? rowSiparis["OLCUMBILGI"].ToString() : String.Empty;
            olcum.OlcumTarih = (rowSiparis["OLCUMTARIH"] != DBNull.Value) ? Convert.ToDateTime(rowSiparis["OLCUMTARIH"].ToString()) : DateTime.MinValue;
            olcum.TeslimSekli = (rowSiparis["TESLIMSEKLI"] != DBNull.Value) ? rowSiparis["TESLIMSEKLI"].ToString() : String.Empty;

            sozlesme.KalanOdeme = (rowSiparis["KALANODEME"] != DBNull.Value) ? rowSiparis["KALANODEME"].ToString() : String.Empty;
            sozlesme.MontajDurum = "A";
            sozlesme.MontajTeslimTarih = (rowMontaj["TESLIMTARIH"] != DBNull.Value) ? Convert.ToDateTime(rowMontaj["TESLIMTARIH"].ToString()) : DateTime.MinValue;
            sozlesme.Pesinat = (rowSiparis["PESINAT"] != DBNull.Value) ? rowSiparis["PESINAT"].ToString() : String.Empty;
            sozlesme.VergiDairesi = (rowSiparis["VERGIDAIRESI"] != DBNull.Value) ? rowSiparis["VERGIDAIRESI"].ToString() : String.Empty;
            sozlesme.VergiNumarası = (rowSiparis["VERGINUMARASI"] != DBNull.Value) ? rowSiparis["VERGINUMARASI"].ToString() : String.Empty;
            sozlesme.Fiyat = (rowSiparis["FIYAT"] != DBNull.Value) ? rowSiparis["FIYAT"].ToString() : String.Empty;

            txtAd.Text = musteri.MusteriAd;
            txtSoyad.Text = musteri.MusteriSoyad;
            txtAdres.Text = musteri.MusteriAdres;
            txtCepTel.Text = musteri.MusteriCepTel;
            txtEvTel.Text = musteri.MusteriEvTel;
            RadComboBoxItem radComboBoxItemMusteriIl = ddlMusteriIl.FindItemByText(musteri.MusteriIl);
            if (radComboBoxItemMusteriIl != null)
            {
                radComboBoxItemMusteriIl.Selected = true;
                IlceleriGetirIlAdinaGore(musteri.MusteriIl);
            }
            RadComboBoxItem radComboBoxItemMusteriIlce = ddlMusteriIlce.FindItemByText(musteri.MusteriIlce);
            if (radComboBoxItemMusteriIlce != null)
            {
                radComboBoxItemMusteriIlce.Selected = true;
            }
            txtIsTel.Text = musteri.MusteriIsTel;
            rdtOlcuSiparisTarih.SelectedDate = siparis.SiparisTarih;

            DropDownSelectedIndexAyarla(ddlAksesuarRengi, siparis.AksesuarRenk);
            DropDownSelectedIndexAyarla(ddlAluminyumRengi, siparis.AluminyumRenk);
            DropDownSelectedIndexAyarla(ddlBaba, siparis.Baba);
            DropDownSelectedIndexAyarla(ddlCita, siparis.Cita);
            DropDownSelectedIndexAyarla(ddlContaRengi, siparis.ContaRenk);
            DropDownSelectedIndexAyarla(ddlDisKapiModeli, siparis.DisKapiModel);
            DropDownSelectedIndexAyarla(ddlDisKapiRengi, siparis.DisKapiRenk);
            DropDownSelectedIndexAyarla(ddlDurbun, siparis.Durbun);
            DropDownSelectedIndexAyarla(ddlEsik, siparis.Esik);
            DropDownSelectedIndexAyarla(ddlIcKapiModeli, siparis.IcKapiModel);
            DropDownSelectedIndexAyarla(ddlIcKapiRengi, siparis.IcKapiRenk);
            DropDownSelectedIndexAyarla(ddlKilitSistemi, siparis.KilitSistem);
            DropDownSelectedIndexAyarla(ddlPervazTipi, siparis.PervazTip);
            DropDownSelectedIndexAyarla(ddlTacTipi, siparis.TacTip);
            DropDownSelectedIndexAyarla(ddlTaktak, siparis.Taktak);
            DropDownSelectedIndexAyarla(ddlSiparisDurumu, siparis.Durum);
            DropDownSelectedIndexAyarla(ddlMontajSekli, olcum.MontajSekli);
            DropDownSelectedIndexAyarla(ddlTeslimSekli, olcum.TeslimSekli);
            DropDownSelectedIndexAyarla(ddlOlcumAlan, olcum.OlcumAlanKisi);
            
            txtBarelTipi.Text = siparis.BarelTip;
            txtBayiAdi.Text = siparis.BayiAd;
            txtCekmeKolu.Text = siparis.CekmeKolu;
            txtKapiNo.Text = siparis.KapiNo;
            txtMontajdaTakilacaklar.Text = olcum.MontajdaTakilacak;
            txtOlcumBilgileri.Text = olcum.OlcumBilgi;
            rdtOlcuTarihSaat.SelectedDate = olcum.OlcumTarih;

            txtMusteriAdSoyad.Text = musteri.MusteriAd + " " + musteri.MusteriSoyad;
            txtMusteriAdres.Text = musteri.MusteriAdres + "" + musteri.MusteriIl + " / " + musteri.MusteriIlce;
            txtMusteriCepTel.Text = musteri.MusteriCepTel;
            txtKalanOdeme.Text = sozlesme.KalanOdeme;
            rdpTeslimTarihi.SelectedDate = sozlesme.MontajTeslimTarih;
            txtPesinat.Text = sozlesme.Pesinat;
            txtVergiDairesi.Text = sozlesme.VergiDairesi;
            txtVergiNumarasi.Text = sozlesme.VergiNumarası;
            txtFiyat.Text = sozlesme.Fiyat;

        }

        private void KapiTurAyarla()
        {
            if (String.IsNullOrEmpty(this.SiparisNo))
                return;

            if (this.SiparisNo[0] == 'N')
            {
                lblKapiTur.Text = "NOVA";
            }
            else if (this.SiparisNo[0] == 'K')
            {
                lblKapiTur.Text = "KROMA";
            }
            else if (this.SiparisNo[0] == 'G')
            {
                lblKapiTur.Text = "GUARD";
            }
        }

        private void DropDownSelectedIndexAyarla(RadDropDownList dp, string selectedValue)
        {
            dp.ClearSelection();
            if (!String.IsNullOrWhiteSpace(selectedValue))
            {
                DropDownListItem lidp = dp.FindItemByText(selectedValue);
                if (lidp != null && lidp.Selected == false)
                    lidp.Selected = true;
            }
            else
                dp.SelectedIndex = 0;
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
            if (this.SeriAdi.ToString() == "GUARD")
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

        protected void IlceleriGetirIlAdinaGore(string ilAd)
        {
            DataTable dt = new SiparisIslemleriBS().IlceleriGetir(ilAd);

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

        protected void btnGuncelle_Click(object sender, EventArgs e)
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
            musteri.MusteriIl = ddlMusteriIl.SelectedItem != null ? ddlMusteriIl.SelectedItem.Text : null;
            musteri.MusteriIlce = ddlMusteriIlce.SelectedItem != null ? ddlMusteriIlce.SelectedItem.Text : null;
            musteri.MusteriIsTel = txtIsTel.Text;

            siparis.SiparisNo = this.SiparisNo;
            siparis.AksesuarRenk = ddlAksesuarRengi.SelectedText;
            siparis.AluminyumRenk = ddlAluminyumRengi.SelectedText;
            siparis.Baba = ddlBaba.SelectedText;
            siparis.BarelTip = txtBarelTipi.Text;
            siparis.BayiAd = txtBayiAdi.Text;
            siparis.CekmeKolu = txtCekmeKolu.Text;
            siparis.Cita = ddlCita.SelectedText;
            siparis.ContaRenk = ddlContaRengi.SelectedText;
            siparis.DisKapiModel = ddlDisKapiModeli.SelectedText;
            siparis.DisKapiRenk = ddlDisKapiRengi.SelectedText;
            siparis.Durbun = ddlDurbun.SelectedText;
            siparis.Esik = ddlEsik.SelectedText;
            siparis.IcKapiModel = ddlIcKapiModeli.SelectedText;
            siparis.IcKapiRenk = ddlIcKapiRengi.SelectedText;
            siparis.KapiNo = txtKapiNo.Text;
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
            bool state = new SiparisIslemleriBS().SiparisGuncelle(musteri, siparis, olcum, sozlesme);

            if (state)
            {
                MessageBox.Basari(this, "Sipariş güncellendi.");
                Response.Redirect("~/SiparisFormGoruntule.aspx?SayfaModu=Guncelle" + "&" + "SiparisNo=" + SiparisNo);
            }
            else
                MessageBox.Hata(this, "Sipariş güncellenemedi.");
        }

    }
}