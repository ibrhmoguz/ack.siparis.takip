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
    public partial class SiparisFormGoruntule : System.Web.UI.Page
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



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FormBilgileriniGetir();
                KapiTurAyarla();
            }
        }

        private void FormBilgileriniGetir()
        {
            lblKapiTur.Text = this.SeriAdi;
            lblSiparisNo.Text = this.SiparisNo;
            string adres, il, ilce, ad, soyad;

            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("SIPARISNO", this.SiparisNo);

            DataTable dt = new SiparisIslemleriBS().SiparisBilgileriniGetir(prms);
            if (dt.Rows.Count == 0)
                return;

            DataRow row = dt.Rows[0];

            adres = (row["MUSTERIADRES"] != DBNull.Value) ? row["MUSTERIADRES"].ToString() : String.Empty;
            il = (row["MUSTERIIL"] != DBNull.Value) ? row["MUSTERIIL"].ToString() : String.Empty;
            ilce = (row["MUSTERIILCE"] != DBNull.Value) ? row["MUSTERIILCE"].ToString() : String.Empty;
            ad = (row["MUSTERIAD"] != DBNull.Value) ? row["MUSTERIAD"].ToString() : String.Empty;
            soyad = (row["MUSTERISOYAD"] != DBNull.Value) ? row["MUSTERISOYAD"].ToString() : String.Empty;
            lblSiparisTarih.Text = (row["SIPARISTARIH"] != DBNull.Value) ? row["SIPARISTARIH"].ToString() : String.Empty;
            lblBayiAdi.Text = (row["BAYIADI"] != DBNull.Value) ? row["BAYIADI"].ToString() : String.Empty;
            lblAd.Text = ad;
            lblSoyad.Text = soyad;
            lblAdres.Text = adres + "   " + ilce + " / " + il;
            lblEvTel.Text = (row["MUSTERIEVTEL"] != DBNull.Value) ? row["MUSTERIEVTEL"].ToString() : String.Empty;
            lblIsTel.Text = (row["MUSTERIISTEL"] != DBNull.Value) ? row["MUSTERIISTEL"].ToString() : String.Empty;
            lblCepTel.Text = (row["MUSTERICEPTEL"] != DBNull.Value) ? row["MUSTERICEPTEL"].ToString() : String.Empty;
            lblIcKapiModeli.Text = (row["ICKAPIMODEL"] != DBNull.Value) ? row["ICKAPIMODEL"].ToString() : String.Empty;
            lblDisKapiModeli.Text = (row["DISKAPIMODEL"] != DBNull.Value) ? row["DISKAPIMODEL"].ToString() : String.Empty;
            lblDisKapiRengi.Text = (row["DISKAPIRENK"] != DBNull.Value) ? row["DISKAPIRENK"].ToString() : String.Empty;
            lblIcKapiRengi.Text = (row["ICKAPIRENK"] != DBNull.Value) ? row["ICKAPIRENK"].ToString() : String.Empty;
            lblKilitSistemi.Text = (row["KILITSISTEM"] != DBNull.Value) ? row["KILITSISTEM"].ToString() : String.Empty;
            lblCita.Text = (row["CITA"] != DBNull.Value) ? row["CITA"].ToString() : String.Empty;
            lblEsik.Text = (row["ESIK"] != DBNull.Value) ? row["ESIK"].ToString() : String.Empty;
            lblAluminyumRengi.Text = (row["ALUMINYUMRENK"] != DBNull.Value) ? row["ALUMINYUMRENK"].ToString() : String.Empty;
            lblAksesuarRengi.Text = (row["AKSESUARRENK"] != DBNull.Value) ? row["AKSESUARRENK"].ToString() : String.Empty;
            lblContaRengi.Text = (row["CONTARENK"] != DBNull.Value) ? row["CONTARENK"].ToString() : String.Empty;
            lblTacTipi.Text = (row["TACTIP"] != DBNull.Value) ? row["TACTIP"].ToString() : String.Empty;
            lblPervazTipi.Text = (row["PERVAZTIP"] != DBNull.Value) ? row["PERVAZTIP"].ToString() : String.Empty;
            lblCekmeKolu.Text = (row["CEKMEKOLU"] != DBNull.Value) ? row["CEKMEKOLU"].ToString() : String.Empty;
            lblKapiNo.Text = (row["KAPINO"] != DBNull.Value) ? row["KAPINO"].ToString() : String.Empty;
            lblBarelTipi.Text = (row["BARELTIP"] != DBNull.Value) ? row["BARELTIP"].ToString() : String.Empty;
            lblBaba.Text = (row["BABA"] != DBNull.Value) ? row["BABA"].ToString() : String.Empty;
            lblDurbun.Text = (row["DURBUN"] != DBNull.Value) ? row["DURBUN"].ToString() : String.Empty;
            lblTaktak.Text = (row["TAKTAK"] != DBNull.Value) ? row["TAKTAK"].ToString() : String.Empty;
            lblMontajdaTakilacaklar.Text = (row["MONTAJDATAKILACAK"] != DBNull.Value) ? row["MONTAJDATAKILACAK"].ToString() : String.Empty;
            lblOlcumBilgileri.Text = (row["OLCUMBILGI"] != DBNull.Value) ? row["OLCUMBILGI"].ToString() : String.Empty;
            lblOlcuTarihSaat.Text = (row["OLCUMTARIH"] != DBNull.Value) ? row["OLCUMTARIH"].ToString() : String.Empty;
            lblOlcumAlan.Text = (row["OLCUMALANKISI"] != DBNull.Value) ? row["OLCUMALANKISI"].ToString() : String.Empty;
            lblMontajSekli.Text = (row["MONTAJSEKLI"] != DBNull.Value) ? row["MONTAJSEKLI"].ToString() : String.Empty;
            lblTeslimSekli.Text = (row["TESLIMSEKLI"] != DBNull.Value) ? row["TESLIMSEKLI"].ToString() : String.Empty;
            lblMusteriAdSoyad.Text = ad + " " + soyad;
            lblMusteriAdres.Text = adres + "   " + ilce + " / " + il;
            lblPesinat.Text = (row["PESINAT"] != DBNull.Value) ? row["PESINAT"].ToString() : String.Empty;
            lblKalanOdeme.Text = (row["KALANODEME"] != DBNull.Value) ? row["KALANODEME"].ToString() : String.Empty;
            lblFiyat.Text = (row["FIYAT"] != DBNull.Value) ? row["FIYAT"].ToString() : String.Empty;
            lblVergiDairesi.Text = (row["VERGIDAIRESI"] != DBNull.Value) ? row["VERGIDAIRESI"].ToString() : String.Empty;
            lblVergiNumarasi.Text = (row["VERGINUMARASI"] != DBNull.Value) ? row["VERGINUMARASI"].ToString() : String.Empty;
            lblTeslimTarihi.Text = (row["TESLIMTARIH"] != DBNull.Value) ? row["TESLIMTARIH"].ToString() : String.Empty;

        }

        protected void btnGuncelle_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SiparisFormGuncelle.aspx?SayfaModu=Guncelle" + "&" + "SiparisNo=" + this.SiparisNo + "&SeriAdi=" + this.SeriAdi);
        }

        private void KapiTurAyarla()
        {
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
    }
}