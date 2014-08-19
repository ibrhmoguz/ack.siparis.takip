using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Business.ACKBusiness.DataTypes;

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
            DataTable dtAksesuarRenk= ds.Tables["AKSESUARRENK"];
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

        }

        private void DropDownBindEt(Telerik.Web.UI.RadDropDownList ddl, DataTable dt)
        {
            ddl.DataSource = dt;
            ddl.DataTextField = "AD";
            ddl.DataValueField = "ID";
            ddl.DataBind();
            ddl.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));

            if (dt!=null)
            {
                ddl.Items.Insert(dt.Rows.Count + 1, new Telerik.Web.UI.DropDownListItem("Diğer", "Diger"));
            }
        }

        private void Kontrol()
        {
            if (this.KapiTip.ToString() == "Guard")
            {
                trGuard1.Visible = true;
                trGuard2.Visible = true;
            }

        }
    }
}