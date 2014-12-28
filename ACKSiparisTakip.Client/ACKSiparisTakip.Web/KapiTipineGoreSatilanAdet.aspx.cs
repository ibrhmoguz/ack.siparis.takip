using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Web.Helper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACKSiparisTakip.Web
{
    public partial class KapiTipineGoreSatilanAdet : ACKBasePage
    {
        private static string ANKARA_IL_KODU = "6";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"].ToString() == "Kullanici")
            {
                MessageBox.Hata(this, "Bu sayfaya erişim yetkiniz yoktur!");
                return;
            }

            if (!Page.IsPostBack)
            {
                VarsayilanDegerleriYukle();
            }
        }

        private void VarsayilanDegerleriYukle()
        {
            IlleriGetir();
            YillariYukle();
        }

        private void YillariYukle()
        {
            ddlYil.Items.Clear();
            for (int i = 2014; i < 2030; i++)
            {
                Telerik.Web.UI.DropDownListItem item = new Telerik.Web.UI.DropDownListItem(i.ToString(), i.ToString());
                if (item.Value == DateTime.Now.Year.ToString())
                    item.Selected = true;
                ddlYil.Items.Add(item);
            }
        }

        protected void ddlMusteriIl_SelectedIndexChanged(object sender, Telerik.Web.UI.DropDownListEventArgs e)
        {
            ddlMusteriIlce.Items.Clear();
            IlceleriGetir(e.Value);
        }

        private void IlleriGetir()
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
            ddlMusteriIl.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));
        }

        private void IlceleriGetir(string ilKod)
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
            ddlMusteriIlce.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));
            ddlMusteriIlce.SelectedIndex = 0;
        }

        protected void btnSorgula_Click(object sender, EventArgs e)
        {
            string il = null;
            string ilce = null;

            if (ddlMusteriIl.SelectedIndex != 0)
                il = ddlMusteriIl.SelectedText;
            if (ddlMusteriIlce.SelectedIndex != 0)
                ilce = ddlMusteriIlce.SelectedText;

            DataTable dt = new RaporBS().KapiTipineGoreSatilanAdet(il, ilce, ddlYil.SelectedValue);
            if (dt.Rows.Count > 0)
            {
                grdRapor.DataSource = dt;
                grdRapor.DataBind();
            }
            else
            {
                grdRapor.DataSource = null;
                grdRapor.DataBind();
            }
        }
    }
}