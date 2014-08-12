using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;

namespace ACKSiparisTakip.Web
{
    public partial class SiparisFormKayit : System.Web.UI.Page
    {
        public string KapiTipi 
        {
            get 
            {
                if (!String.IsNullOrEmpty(Request.QueryString["KapiTipi"]))
                {
                    return Request.QueryString["KapiTipi"].ToString();
                }
                else return string.Empty;
            } 

        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KapiSeriyeGoreDoldur(this.KapiTipi.ToString());
            }

        }

        private void KapiSeriyeGoreDoldur(string kapiSeri)
        {
            string id = string.Empty;

            if (kapiSeri=="Guard")
            {
                id = "1";

            }
            else if (kapiSeri=="Kroma")
            {
                id = "2";
            }
            else if(kapiSeri=="Nova")
            {
                id = "3";
            }

            FormDoldur(id);

        }

        private void FormDoldur(string id)
        {
            string seriId, seriAdi;
            seriId = id;
            seriAdi = string.Empty;

            if (id=="1")
            {
               seriAdi = "GUARD";
            }
            else if(id=="2")
            {
                seriAdi = "KROMA";
            }
            else if (true)
            {
                seriAdi = "NOVA";
            }

            lblKapiTur.Text = seriAdi;
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ID", seriId);
            prms.Add("KAPISERI", seriAdi);


            ddlIcKapiModeli.DataSource = new SiparisIslemleriBS().KapıModeliGetir(prms);
            ddlIcKapiModeli.DataTextField = "AD";
            ddlIcKapiModeli.DataValueField = "KAPIMODELID";
            ddlIcKapiModeli.DataBind();
            ddlIcKapiModeli.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));

            ddlDisKapiModeli.DataSource = new SiparisIslemleriBS().KapıModeliGetir(prms);
            ddlDisKapiModeli.DataTextField = "AD";
            ddlDisKapiModeli.DataValueField = "KAPIMODELID";
            ddlDisKapiModeli.DataBind();
            ddlDisKapiModeli.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));

            ddlIcKapiRengi.DataSource = new SiparisIslemleriBS().KapıRenkGetir(prms);
            ddlIcKapiRengi.DataTextField = "AD";
            ddlIcKapiRengi.DataValueField = "KAPIRENKID";
            ddlIcKapiRengi.DataBind();
            ddlIcKapiRengi.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));

            ddlDisKapiRengi.DataSource = new SiparisIslemleriBS().KapıRenkGetir(prms);
            ddlDisKapiRengi.DataTextField = "AD";
            ddlDisKapiRengi.DataValueField = "KAPIRENKID";
            ddlDisKapiRengi.DataBind();
            ddlDisKapiRengi.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));


        }
       

    }
}