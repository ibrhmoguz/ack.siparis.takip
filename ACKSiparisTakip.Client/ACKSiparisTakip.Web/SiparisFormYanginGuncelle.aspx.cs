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
    public partial class SiparisFormYanginGuncelle : ACKBasePage
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
                    else if (tip == KapiTipi.Porte.ToString())
                        return KapiTipi.Porte;
                    else
                        return KapiTipi.Yangin;
                }
                else
                    return KapiTipi.Nova;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            this.MaintainScrollPositionOnPostBack = true;

            if (!Page.IsPostBack)
            {
                FormDoldur();
                FormBilgileriniGetir();
                CurrencyAyarla();
            }
        }

        private void FormBilgileriniGetir()
        {
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
            siparis.TacTip = (rowSiparis["TACTIP"] != DBNull.Value) ? rowSiparis["TACTIP"].ToString() : String.Empty;
            siparis.IcPervazRenk = (rowSiparis["ICPERVAZRENK"] != DBNull.Value) ? rowSiparis["ICPERVAZRENK"].ToString() : String.Empty;
            siparis.DisPervazRenk = (rowSiparis["DISPERVAZRENK"] != DBNull.Value) ? rowSiparis["DISPERVAZRENK"].ToString() : String.Empty;
            siparis.AplikeRenk = (rowSiparis["APLIKERENK"] != DBNull.Value) ? rowSiparis["APLIKERENK"].ToString() : String.Empty;
            siparis.Kanat = (rowSiparis["KANAT"] != DBNull.Value) ? rowSiparis["KANAT"].ToString() : String.Empty;
            siparis.KasaCitaRenk = (rowSiparis["KASACITARENK"] != DBNull.Value) ? rowSiparis["KASACITARENK"].ToString() : String.Empty;
            siparis.ZirhTip = (rowSiparis["ZIRHTIP"] != DBNull.Value) ? rowSiparis["ZIRHTIP"].ToString() : String.Empty;
            siparis.ZirhRenk = (rowSiparis["ZIRHRENK"] != DBNull.Value) ? rowSiparis["ZIRHRENK"].ToString() : String.Empty;
            siparis.CekmeKolTakilmaSekli = (rowSiparis["CEKMEKOLTAKILMASEKLI"] != DBNull.Value) ? rowSiparis["CEKMEKOLTAKILMASEKLI"].ToString() : String.Empty;
            siparis.CekmeKolRenk = (rowSiparis["CEKMEKOLRENK"] != DBNull.Value) ? rowSiparis["CEKMEKOLRENK"].ToString() : String.Empty;
            siparis.BolmeKayitSayi = (rowSiparis["BOLMEKAYITSAYI"] != DBNull.Value) ? rowSiparis["BOLMEKAYITSAYI"].ToString() : String.Empty;
            siparis.CamTip = (rowSiparis["CAMTIP"] != DBNull.Value) ? rowSiparis["CAMTIP"].ToString() : String.Empty;
            siparis.Ferforje = (rowSiparis["FERFORJE"] != DBNull.Value) ? rowSiparis["FERFORJE"].ToString() : String.Empty;
            siparis.FerforjeRenk = (rowSiparis["FERFORJERENK"] != DBNull.Value) ? rowSiparis["FERFORJERENK"].ToString() : String.Empty;
            siparis.MetalRenk = (rowSiparis["METALRENK"] != DBNull.Value) ? rowSiparis["METALRENK"].ToString() : String.Empty;
            siparis.KasaKaplama = (rowSiparis["KASAKAPLAMA"] != DBNull.Value) ? rowSiparis["KASAKAPLAMA"].ToString() : String.Empty;
            siparis.KasaTip = (rowSiparis["KASATIP"] != DBNull.Value) ? rowSiparis["KASATIP"].ToString() : String.Empty;
            siparis.PanikBar = (rowSiparis["PANIKBAR"] != DBNull.Value) ? rowSiparis["PANIKBAR"].ToString() : String.Empty;
            siparis.SiparisTarih = (rowSiparis["SIPARISTARIH"] != DBNull.Value) ? Convert.ToDateTime(rowSiparis["SIPARISTARIH"].ToString()) : DateTime.MinValue;
            siparis.MudahaleKol = (rowSiparis["MUDAHALEKOL"] != DBNull.Value) ? rowSiparis["MUDAHALEKOL"].ToString() : String.Empty;
            siparis.Mentese = (rowSiparis["MENTESE"] != DBNull.Value) ? rowSiparis["MENTESE"].ToString() : String.Empty;
            siparis.HidrolikKapatici = (rowSiparis["HIDROLIKKAPATICI"] != DBNull.Value) ? rowSiparis["HIDROLIKKAPATICI"].ToString() : String.Empty;
            siparis.Cumba = (rowSiparis["CUMBA"] != DBNull.Value) ? rowSiparis["CUMBA"].ToString() : String.Empty;
            siparis.YanginKapiCins = (rowSiparis["YANGINKAPICINS"] != DBNull.Value) ? rowSiparis["YANGINKAPICINS"].ToString() : String.Empty;

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
            siparis.Taktak = (rowSiparis["TAKTAK"] != DBNull.Value) ? rowSiparis["TAKTAK"].ToString() : String.Empty;
            siparis.KapiTipi = this.KapiTip.ToString();
            siparis.Durum = (rowSiparis["DURUM"] != DBNull.Value) ? rowSiparis["DURUM"].ToString() : String.Empty;
            siparis.SiparisAdedi = (rowSiparis["ADET"] != DBNull.Value) ? rowSiparis["ADET"].ToString() : String.Empty;
            siparis.Not = (rowSiparis["SIPARISNOT"] != DBNull.Value) ? rowSiparis["SIPARISNOT"].ToString() : String.Empty;

            olcum.MontajdaTakilacak = (rowSiparis["MONTAJDATAKILACAK"] != DBNull.Value) ? rowSiparis["MONTAJDATAKILACAK"].ToString() : String.Empty;
            olcum.MontajSekli = (rowSiparis["MONTAJSEKLI"] != DBNull.Value) ? rowSiparis["MONTAJSEKLI"].ToString() : String.Empty;
            olcum.OlcumAlanKisi = (rowSiparis["OLCUMALANKISI"] != DBNull.Value) ? rowSiparis["OLCUMALANKISI"].ToString() : String.Empty;
            olcum.OlcumBilgi = (rowSiparis["OLCUMBILGI"] != DBNull.Value) ? rowSiparis["OLCUMBILGI"].ToString() : String.Empty;
            if (rowSiparis["OLCUMTARIH"] != DBNull.Value)
                olcum.OlcumTarih = Convert.ToDateTime(rowSiparis["OLCUMTARIH"].ToString());
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

            DropDownSelectedIndexAyarla(ddlBarelTipi, siparis.BarelTip);
            DropDownSelectedIndexAyarla(ddlCekmeKolu, siparis.CekmeKolu);
            DropDownSelectedIndexAyarla(ddlYanginKasaTipi, siparis.KasaTip);
            DropDownSelectedIndexAyarla(ddlDisKapiModeli, siparis.DisKapiModel);
            DropDownSelectedIndexAyarla(ddlDurbun, siparis.Durbun);
            DropDownSelectedIndexAyarla(ddlEsik, siparis.Esik);
            DropDownSelectedIndexAyarla(ddlIcKapiModeli, siparis.IcKapiModel);
            DropDownSelectedIndexAyarla(ddlKilitSistemi, siparis.KilitSistem);
            DropDownSelectedIndexAyarla(ddlTaktak, siparis.Taktak);
            DropDownSelectedIndexAyarla(ddlSiparisDurumu, siparis.Durum);
            DropDownSelectedIndexAyarla(ddlMontajSekli, olcum.MontajSekli);
            DropDownSelectedIndexAyarla(ddlTeslimSekli, olcum.TeslimSekli);
            DropDownSelectedIndexAyarla(ddlOlcumAlan, olcum.OlcumAlanKisi);
            DropDownSelectedIndexAyarla(ddlYanginKol, siparis.MudahaleKol);
            DropDownSelectedIndexAyarla(ddlYanginMenteseTip, siparis.Mentese);
            DropDownSelectedIndexAyarla(ddlYanginHidrolikKapatici, siparis.HidrolikKapatici);
            DropDownSelectedIndexAyarla(ddlCumba, siparis.Cumba);
            DropDownSelectedIndexAyarla(ddlYanginKapiCins, siparis.YanginKapiCins);

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

        protected void IlceleriGetirIlAdinaGore(string ilAd)
        {
            DataTable dt = new SiparisIslemleriBS().IlceleriGetir(ilAd);

            if (dt.Rows.Count > 0)
            {
                ddlMusteriIlce.DataSource = dt;
                ddlMusteriIlce.DataTextField = "ILCEAD";
                ddlMusteriIlce.DataValueField = "ILCEKOD";
                ddlMusteriIlce.DataBind();
                ddlMusteriIlce.Items.Insert(0, new RadComboBoxItem("Seçiniz", "Seçiniz"));
            }
            else
            {
                ddlMusteriIlce.DataSource = null;
                ddlMusteriIlce.DataBind();
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
                ddlMusteriSemt.Items.Insert(0, new RadComboBoxItem("Seçiniz", "Seçiniz"));
            }
            else
            {
                ddlMusteriSemt.DataSource = null;
                ddlMusteriSemt.DataBind();
            }
        }

        private void Kontrol()
        {
            switch (this.KapiTip.ToString())
            {
                case "Yangin":
                    trYangin1.Visible = true;
                    trYangin2.Visible = true;
                    break;
                case "Porte":
                    trPorte1.Visible = true;
                    trPorte2.Visible = true;
                    break;
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
            if (this.KapiTip == KapiTipi.Porte)
                lblKapiTur.Text = "PORTE";
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
            DataTable dtYanginHidrolikKapatici = ds.Tables["HIDROLIKKAPATICI"];
            DataTable dtYanginKapiCins = ds.Tables["KAPICINSI"];
            DataTable dtYanginKasaTipi = ds.Tables["KASATIP"];
            DataTable dtYanginKol = ds.Tables["MUDAHALEKOL"];
            DataTable dtYanginMenteseTip = ds.Tables["MENTESETIP"];
            DataTable dtYanginPanikBar = ds.Tables["PANIKBAR"];
            DataTable dtBarelTip = ds.Tables["BARELTIP"];
            DataTable dtCumba = ds.Tables["CUMBA"];
            DataTable dtMetalRenk = ds.Tables["METALRENK"];

            DropDownBindEt(ddlIcKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlDisKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlYanginMetalRengi, dtKapiRenk);
            DropDownBindEt(ddlKilitSistemi, dtKilitSistem);
            DropDownBindEt(ddlEsik, dtEsik);
            DropDownBindEt(ddlMontajSekli, dtMontajSekli);
            DropDownBindEt(ddlTeslimSekli, dtTeslimSekli);
            DropDownBindEt(ddlOlcumAlan, dtPersonel);
            DropDownBindEt(ddlCekmeKolu, dtCekmeKol);
            DropDownBindEt(ddlYanginHidrolikKapatici, dtYanginHidrolikKapatici);
            DropDownBindEt(ddlYanginKapiCins, dtYanginKapiCins);
            DropDownBindEt(ddlYanginKasaTipi, dtYanginKasaTipi);
            DropDownBindEt(ddlYanginKol, dtYanginKol);
            DropDownBindEt(ddlYanginMenteseTip, dtYanginMenteseTip);
            DropDownBindEt(ddlYanginPanikBar, dtYanginPanikBar);
            DropDownBindEt(ddlCumba, dtCumba);
            DropDownBindEt(ddlBarelTipi, dtBarelTip);
            DropDownBindEt(ddlTeslimSekli, dtTeslimSekli);
            DropDownBindEt(ddlIcKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlDisKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlKilitSistemi, dtKilitSistem);
            DropDownBindEt(ddlYanginMetalRengi, dtMetalRenk);
            DropDownBindEt(ddlBarelTipi, dtBarelTip);

            IlleriGetir();
            Kontrol();
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

        protected void btnGuncelle_Click(object sender, EventArgs e)
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
            siparis.SiparisTarih = rdtOlcuSiparisTarih.SelectedDate == null ? DateTime.Now : rdtOlcuSiparisTarih.SelectedDate.Value;
            if (!string.IsNullOrWhiteSpace(txtNot.Text)) siparis.Not = txtNot.Text;
            if (DropDownCheck(ddlYanginPanikBar)) siparis.PanikBar = ddlYanginPanikBar.SelectedText;
            if (DropDownCheck(ddlYanginKol)) siparis.MudahaleKol = ddlYanginKol.SelectedText;
            if (DropDownCheck(ddlYanginMenteseTip)) siparis.Mentese = ddlYanginMenteseTip.SelectedText;
            if (DropDownCheck(ddlYanginHidrolikKapatici)) siparis.HidrolikKapatici = ddlYanginHidrolikKapatici.SelectedText;
            if (DropDownCheck(ddlCumba)) siparis.Cumba = ddlCumba.SelectedText;
            if (DropDownCheck(ddlBarelTipi)) siparis.BarelTip = ddlBarelTipi.SelectedText;
            if (DropDownCheck(ddlDurbun)) siparis.Durbun = ddlDurbun.SelectedText;
            if (DropDownCheck(ddlTaktak)) siparis.Taktak = ddlTaktak.SelectedText;
            if (DropDownCheck(ddlYanginMetalRengi)) siparis.MetalRenk = ddlYanginMetalRengi.SelectedText;
            if (DropDownCheck(ddlYanginKapiCins)) siparis.YanginKapiCins = ddlYanginKapiCins.SelectedText;

            siparis.SiparisNo = this.SiparisNo;
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

            //Montaj kota kontrolu acik ise
            if (Session["MONTAJ_KOTA_KONTROLU"].ToString() == "1")
            {
                MontajBS montajBS = new MontajBS();
                int yapilanMontajSayisi = montajBS.GunlukMontajSayisiniGetir(rdpTeslimTarihi.SelectedDate.Value);
                DataTable dt = montajBS.GunlukMontajKotaBilgisiGetir(rdpTeslimTarihi.SelectedDate.Value);
                if (dt.Rows.Count > 0)
                {
                    DataRow row = dt.Rows[0];
                    bool montajKabul = Convert.ToBoolean(row["MONTAJKABUL"]);
                    if (!montajKabul)
                    {
                        MessageBox.Uyari(this.Page, rdpTeslimTarihi.SelectedDate.Value.Date.ToShortDateString() + " tarihi için montaj alınamaz!");
                        return;
                    }
                    else
                    {
                        int gunlukMontakKotaDegeri = Convert.ToInt32(row["MAXMONTAJSAYI"]);
                        if (yapilanMontajSayisi >= gunlukMontakKotaDegeri)
                        {
                            MessageBox.Uyari(this.Page, rdpTeslimTarihi.SelectedDate.Value.Date.ToShortDateString() + " tarihi için montaj kotası (" + gunlukMontakKotaDegeri.ToString() + ") değerine ulaşılmıştır.");
                            return;
                        }
                    }
                }
                else
                {
                    int kotaVarsayilanDegeri = Convert.ToInt32(Session["MONTAJ_KOTA_VARSAYILAN"]);
                    if (yapilanMontajSayisi >= kotaVarsayilanDegeri)
                    {
                        MessageBox.Uyari(this.Page, rdpTeslimTarihi.SelectedDate.Value.Date.ToShortDateString() + " tarihi için montaj kotası (" + kotaVarsayilanDegeri.ToString() + ") değerine ulaşılmıştır.");
                        return;
                    }
                }
            }

            bool state = new SiparisIslemleriBS().SiparisGuncelle(musteri, siparis, olcum, sozlesme);

            if (state)
            {
                MessageBox.Basari(this, "Sipariş güncellendi.");
                Response.Redirect("~/SiparisFormYanginGoruntule.aspx?SiparisNo=" + SiparisNo + "&SeriAdi=" + this.KapiTip.ToString().ToUpper());
            }
            else
                MessageBox.Hata(this, "Sipariş güncellenemedi.");
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

        protected void btnTemizle_Click(object sender, EventArgs e)
        {
            FormElemanIcerikTemizle(this.Page.Form.Controls);
            txtSiparisNo.Text = this.SiparisNo;
        }

        private void FormElemanIcerikTemizle(ControlCollection cc)
        {
            foreach (Control c in cc)
            {
                if (c is RadTextBox)
                    ((RadTextBox)c).Text = string.Empty;
                if (c is RadNumericTextBox)
                    ((RadNumericTextBox)c).Text = string.Empty;
                if (c is RadDropDownList)
                {
                    RadDropDownList rdl = (RadDropDownList)c;
                    if (rdl.Items.Count > 0)
                        rdl.SelectedIndex = 0;
                }
                if (c is RadDateTimePicker)
                {
                    ((RadDateTimePicker)c).SelectedDate = null;
                }
                if (c is RadDatePicker)
                {
                    ((RadDatePicker)c).SelectedDate = null;
                }
                if (c is RadComboBox)
                {
                    RadComboBox rcb = ((RadComboBox)c);
                    if (rcb.Items.Count > 0)
                        rcb.SelectedIndex = 0;
                }
                if (c is RadMaskedTextBox)
                    ((RadMaskedTextBox)c).Text = string.Empty;

                FormElemanIcerikTemizle(c.Controls);
            }
        }
    }
}