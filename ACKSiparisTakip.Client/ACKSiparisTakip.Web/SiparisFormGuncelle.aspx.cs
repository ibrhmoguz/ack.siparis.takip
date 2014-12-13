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

            siparis.FirmaAdi = (rowSiparis["FIRMAADI"] != DBNull.Value) ? rowSiparis["FIRMAADI"].ToString() : String.Empty;
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
            siparis.KayıtYapmayanKamera = (rowSiparis["KAYITSIZKAMERA"] != DBNull.Value) ? rowSiparis["KAYITSIZKAMERA"].ToString() : String.Empty;
            siparis.KayıtYapanKamera = (rowSiparis["KAYITYAPANKAMERA"] != DBNull.Value) ? rowSiparis["KAYITYAPANKAMERA"].ToString() : String.Empty;
            siparis.Alarm = (rowSiparis["ALARM"] != DBNull.Value) ? rowSiparis["ALARM"].ToString() : String.Empty;
            siparis.OtomatikKilit = (rowSiparis["OTOKILIT"] != DBNull.Value) ? rowSiparis["OTOKILIT"].ToString() : String.Empty;
            siparis.Esik = (rowSiparis["ESIK"] != DBNull.Value) ? rowSiparis["ESIK"].ToString() : String.Empty;
            siparis.IcKapiModel = (rowSiparis["ICKAPIMODEL"] != DBNull.Value) ? rowSiparis["ICKAPIMODEL"].ToString() : String.Empty;
            siparis.IcKapiRenk = (rowSiparis["ICKAPIRENK"] != DBNull.Value) ? rowSiparis["ICKAPIRENK"].ToString() : String.Empty;
            siparis.KilitSistem = (rowSiparis["KILITSISTEM"] != DBNull.Value) ? rowSiparis["KILITSISTEM"].ToString() : String.Empty;
            siparis.PervazTip = (rowSiparis["PERVAZTIP"] != DBNull.Value) ? rowSiparis["PERVAZTIP"].ToString() : String.Empty;
            siparis.SiparisTarih = (rowSiparis["SIPARISTARIH"] != DBNull.Value) ? Convert.ToDateTime(rowSiparis["SIPARISTARIH"].ToString()) : DateTime.MinValue;

            if (rowSiparis["NAKITPESIN"] != DBNull.Value)
                siparis.NakitPesin = Convert.ToDouble(rowSiparis["NAKITPESIN"].ToString());
            if (rowSiparis["NAKITKALAN"] != DBNull.Value)
                siparis.NakitKalan = Convert.ToDouble(rowSiparis["NAKITKALAN"].ToString());
            siparis.NakitOdemeNot = (rowSiparis["NAKITODEMENOTU"] != DBNull.Value) ? rowSiparis["NAKITODEMENOTU"].ToString() : String.Empty;
            if (rowSiparis["KKARTPESIN"] != DBNull.Value)
                siparis.KKartiPesin = Convert.ToDouble(rowSiparis["KKARTPESIN"].ToString());
            if (rowSiparis["KKARTKALAN"] != DBNull.Value)
                siparis.KKartiKalan = Convert.ToDouble(rowSiparis["KKARTKALAN"].ToString());
            if (rowSiparis["KKARTODEMENOTU"] != DBNull.Value)
                siparis.KKartiOdemeNot = rowSiparis["KKARTODEMENOTU"].ToString();
            if (rowSiparis["CEKPESIN"] != DBNull.Value)
                siparis.CekPesin = Convert.ToDouble(rowSiparis["CEKPESIN"].ToString());
            if (rowSiparis["CEKKALAN"] != DBNull.Value)
                siparis.CekKalan = Convert.ToDouble(rowSiparis["CEKKALAN"].ToString());

            siparis.CekOdemeNot = (rowSiparis["CEKODEMENOTU"] != DBNull.Value) ? rowSiparis["CEKODEMENOTU"].ToString() : String.Empty;
            siparis.TacTip = (rowSiparis["TACTIP"] != DBNull.Value) ? rowSiparis["TACTIP"].ToString() : String.Empty;
            siparis.Taktak = (rowSiparis["TAKTAK"] != DBNull.Value) ? rowSiparis["TAKTAK"].ToString() : String.Empty;
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.Durum = (rowSiparis["DURUM"] != DBNull.Value) ? rowSiparis["DURUM"].ToString() : String.Empty;
            siparis.SiparisAdedi = (rowSiparis["ADET"] != DBNull.Value) ? rowSiparis["ADET"].ToString() : String.Empty;
            siparis.Not = (rowSiparis["SIPARISNOT"] != DBNull.Value) ? rowSiparis["SIPARISNOT"].ToString() : String.Empty;

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
            txtFirmaAdi.Text = siparis.FirmaAdi;
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
                SemtleriGetirIlceAdinaGore(musteri.MusteriIlce);
            }
            RadComboBoxItem radComboBoxItemMusteriSemt = ddlMusteriSemt.FindItemByText(musteri.MusteriSemt);
            if (radComboBoxItemMusteriSemt != null)
            {
                radComboBoxItemMusteriSemt.Selected = true;
            }
            txtIsTel.Text = musteri.MusteriIsTel;
            rdtOlcuSiparisTarih.SelectedDate = siparis.SiparisTarih;

            DropDownSelectedIndexAyarla(ddlAksesuarRengi, siparis.AksesuarRenk);
            DropDownSelectedIndexAyarla(ddlAluminyumRengi, siparis.AluminyumRenk);
            DropDownSelectedIndexAyarla(ddlBarelTipi, siparis.BarelTip);
            DropDownSelectedIndexAyarla(ddlCekmeKolu, siparis.CekmeKolu);
            DropDownSelectedIndexAyarla(ddlKayitsizKam, siparis.Durum);
            DropDownSelectedIndexAyarla(ddlKayitYapanKam, olcum.MontajSekli);
            DropDownSelectedIndexAyarla(ddlAlarm, olcum.TeslimSekli);
            DropDownSelectedIndexAyarla(ddlOtomatikKilit, olcum.OlcumAlanKisi);
            DropDownSelectedIndexAyarla(ddlBaba, siparis.Baba);
            DropDownSelectedIndexAyarla(ddlCita, siparis.Cita);
            //DropDownSelectedIndexAyarla(ddlKapiNo, siparis.KapiNo);
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

            if (siparis.NakitPesin.HasValue) txtNakitPesin.Text = siparis.NakitPesin.Value.ToString();
            if (siparis.NakitKalan.HasValue) txtNakitKalan.Text = siparis.NakitKalan.Value.ToString();
            txtNakitOdemeNotu.Text = siparis.NakitOdemeNot;
            if (siparis.KKartiPesin.HasValue) txtKKartiPesin.Text = siparis.KKartiPesin.Value.ToString();
            if (siparis.KKartiKalan.HasValue) txtKKartiKalan.Text = siparis.KKartiKalan.Value.ToString();
            txtKKartiOdemeNotu.Text = siparis.KKartiOdemeNot;
            if (siparis.CekPesin.HasValue) txtCekPesin.Text = siparis.CekPesin.Value.ToString();
            if (siparis.CekKalan.HasValue) txtCekKalan.Text = siparis.CekKalan.Value.ToString();
            txtCekOdemeNotu.Text = siparis.CekOdemeNot;

            txtBayiAdi.Text = siparis.BayiAd;
            txtSiparisAdedi.Text = siparis.SiparisAdedi;
            txtMontajdaTakilacaklar.Text = olcum.MontajdaTakilacak;
            txtOlcumBilgileri.Text = olcum.OlcumBilgi;
            rdtOlcuTarihSaat.SelectedDate = olcum.OlcumTarih;

            txtMusteriAdSoyad.Text = musteri.MusteriAd + " " + musteri.MusteriSoyad;
            txtMusteriAdres.Text = musteri.MusteriAdres + "" + musteri.MusteriIl + " / " + musteri.MusteriIlce;
            txtMusteriCepTel.Text = musteri.MusteriCepTel;
            rdpTeslimTarihi.SelectedDate = sozlesme.MontajTeslimTarih;
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
        private void DropDownSelectedIndexAyarla(RadComboBox dp, string selectedValue)
        {
            dp.ClearSelection();
            if (!String.IsNullOrWhiteSpace(selectedValue))
            {
                RadComboBoxItem lidp = dp.FindItemByValue(selectedValue);
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
                ddlMusteriIlce.DataValueField = "ILCEKOD";
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

        protected void SemtleriGetirIlceAdinaGore(string ilceAd)
        {
            DataTable dt = new SiparisIslemleriBS().SemtleriGetir(ilceAd);

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

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            Musteri musteri = new Musteri();
            Siparis siparis = new Siparis();
            Olcum olcum = new Olcum();
            Sozlesme sozlesme = new Sozlesme();

            musteri.MusteriAd = string.IsNullOrWhiteSpace(txtAd.Text) ? null : txtAd.Text;
            musteri.MusteriSoyad = string.IsNullOrWhiteSpace(txtSoyad.Text) ? null : txtSoyad.Text;
            musteri.MusteriAdres = string.IsNullOrWhiteSpace(txtAdres.Text) ? null : txtAdres.Text;
            musteri.MusteriCepTel = string.IsNullOrWhiteSpace(txtCepTel.Text) ? null : txtCepTel.Text;
            musteri.MusteriEvTel = string.IsNullOrWhiteSpace(txtEvTel.Text) ? null : txtEvTel.Text;
            musteri.MusteriIl = ComboBoxCheck(ddlMusteriIl) ? null : ddlMusteriIl.SelectedItem.Text;
            musteri.MusteriIlce = ComboBoxCheck(ddlMusteriIlce) ? null : ddlMusteriIlce.SelectedItem.Text;
            musteri.MusteriSemt = ComboBoxCheck(ddlMusteriSemt) ? null : ddlMusteriSemt.SelectedItem.Text;
            musteri.MusteriIsTel = string.IsNullOrWhiteSpace(txtIsTel.Text) ? null : txtIsTel.Text;

            siparis.SiparisNo = this.SiparisNo;
            siparis.FirmaAdi = string.IsNullOrWhiteSpace(txtFirmaAdi.Text) ? null : txtFirmaAdi.Text;
            siparis.AksesuarRenk = DropDownCheck(ddlAksesuarRengi) ? null : ddlAksesuarRengi.SelectedText;
            siparis.AluminyumRenk = DropDownCheck(ddlAluminyumRengi) ? null : ddlAluminyumRengi.SelectedText;
            siparis.Baba = DropDownCheck(ddlBaba) ? null : ddlBaba.SelectedText;
            siparis.BarelTip = DropDownCheck(ddlBarelTipi) ? null : ddlBarelTipi.SelectedText;
            siparis.BayiAd = string.IsNullOrWhiteSpace(txtBayiAdi.Text) ? null : txtBayiAdi.Text;
            siparis.CekmeKolu = DropDownCheck(ddlCekmeKolu) ? null : ddlCekmeKolu.SelectedText;
            siparis.Cita = DropDownCheck(ddlCita) ? null : ddlCita.SelectedText;
            siparis.ContaRenk = DropDownCheck(ddlContaRengi) ? null : ddlContaRengi.SelectedText;
            siparis.DisKapiModel = DropDownCheck(ddlDisKapiModeli) ? null : ddlDisKapiModeli.SelectedText;
            siparis.DisKapiRenk = DropDownCheck(ddlDisKapiRengi) ? null : ddlDisKapiRengi.SelectedText;
            siparis.Durbun = DropDownCheck(ddlDurbun) ? null : ddlDurbun.SelectedText;
            siparis.KayıtYapanKamera = DropDownCheck(ddlKayitYapanKam) ? null : ddlKayitYapanKam.SelectedText;
            siparis.KayıtYapmayanKamera = DropDownCheck(ddlKayitsizKam) ? null : ddlKayitsizKam.SelectedText;
            siparis.Alarm = DropDownCheck(ddlAlarm) ? null : ddlAlarm.SelectedText;
            siparis.OtomatikKilit = DropDownCheck(ddlOtomatikKilit) ? null : ddlOtomatikKilit.SelectedText;
            siparis.Esik = DropDownCheck(ddlEsik) ? null : ddlEsik.SelectedText;
            siparis.IcKapiModel = DropDownCheck(ddlIcKapiModeli) ? null : ddlIcKapiModeli.SelectedText;
            siparis.IcKapiRenk = DropDownCheck(ddlIcKapiRengi) ? null : ddlIcKapiRengi.SelectedText;
            siparis.KilitSistem = DropDownCheck(ddlKilitSistemi) ? null : ddlKilitSistemi.SelectedText;
            siparis.PervazTip = DropDownCheck(ddlPervazTipi) ? null : ddlPervazTipi.SelectedText;
            siparis.SiparisTarih = DateTime.Now;
            siparis.TacTip = DropDownCheck(ddlTacTipi) ? null : ddlTacTipi.SelectedText;
            siparis.Taktak = DropDownCheck(ddlTaktak) ? null : ddlTaktak.SelectedText;
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.FirmaAdi = string.IsNullOrWhiteSpace(txtFirmaAdi.Text) ? null : txtFirmaAdi.Text;
            siparis.SiparisAdedi = string.IsNullOrWhiteSpace(txtSiparisAdedi.Text) ? "1" : txtSiparisAdedi.Text;
            if (!string.IsNullOrWhiteSpace(txtNakitPesin.Text)) siparis.NakitPesin = Convert.ToDouble(txtNakitPesin.Text);
            if (!string.IsNullOrWhiteSpace(txtNakitKalan.Text)) siparis.NakitKalan = Convert.ToDouble(txtNakitKalan.Text);
            siparis.NakitOdemeNot = string.IsNullOrWhiteSpace(txtNakitOdemeNotu.Text) ? null : txtNakitOdemeNotu.Text;
            if (!string.IsNullOrWhiteSpace(txtKKartiPesin.Text)) siparis.KKartiPesin = Convert.ToDouble(txtKKartiPesin.Text);
            if (!string.IsNullOrWhiteSpace(txtKKartiKalan.Text)) siparis.KKartiKalan = Convert.ToDouble(txtKKartiKalan.Text);
            siparis.KKartiOdemeNot = string.IsNullOrWhiteSpace(txtKKartiOdemeNotu.Text) ? null : txtKKartiOdemeNotu.Text;
            if (!string.IsNullOrWhiteSpace(txtCekPesin.Text)) siparis.CekPesin = Convert.ToDouble(txtCekPesin.Text);
            if (!string.IsNullOrWhiteSpace(txtCekKalan.Text)) siparis.CekKalan = Convert.ToDouble(txtCekKalan.Text);
            siparis.CekOdemeNot = string.IsNullOrWhiteSpace(txtCekOdemeNotu.Text) ? null : txtCekOdemeNotu.Text;
            siparis.Not = string.IsNullOrWhiteSpace(txtNot.Text) ? null : txtNot.Text;
            olcum.MontajdaTakilacak = string.IsNullOrWhiteSpace(txtMontajdaTakilacaklar.Text) ? null : txtMontajdaTakilacaklar.Text;
            olcum.MontajSekli = DropDownCheck(ddlMontajSekli) ? null : ddlMontajSekli.SelectedText;
            olcum.OlcumAlanKisi = DropDownCheck(ddlOlcumAlan) ? null : ddlOlcumAlan.SelectedText;
            olcum.OlcumBilgi = string.IsNullOrWhiteSpace(txtOlcumBilgileri.Text) ? null : txtOlcumBilgileri.Text;
            if (rdtOlcuTarihSaat.SelectedDate != null) olcum.OlcumTarih = rdtOlcuTarihSaat.SelectedDate.Value;
            olcum.TeslimSekli = DropDownCheck(ddlTeslimSekli) ? null : ddlTeslimSekli.SelectedText;
            sozlesme.MontajDurum = "A";
            if (rdpTeslimTarihi.SelectedDate != null) sozlesme.MontajTeslimTarih = rdpTeslimTarihi.SelectedDate.Value;
            sozlesme.VergiDairesi = string.IsNullOrWhiteSpace(txtVergiDairesi.Text) ? null : txtVergiDairesi.Text;
            sozlesme.VergiNumarası = string.IsNullOrWhiteSpace(txtVergiNumarasi.Text) ? null : txtVergiNumarasi.Text;
            sozlesme.Fiyat = string.IsNullOrWhiteSpace(txtFiyat.Text) ? null : txtFiyat.Text;

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

        private bool DropDownCheck(RadDropDownList ddl)
        {
            if (ddl.SelectedItem == null || ddl.SelectedIndex == 0)
                return true;
            else
                return false;
        }

        private bool ComboBoxCheck(RadComboBox rcb)
        {
            if (rcb.SelectedItem == null || rcb.SelectedIndex == 0)
                return true;
            else
                return false;
        }
    }
}