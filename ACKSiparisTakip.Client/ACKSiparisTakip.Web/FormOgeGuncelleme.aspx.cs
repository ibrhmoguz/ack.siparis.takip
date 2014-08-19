using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Web.Helper;
using Telerik.Web.UI;

namespace ACKSiparisTakip.Web
{
    public partial class FormOgeGuncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                OgeDoldur();
            }
        }
        
        private void OgeDoldur()
        {
            DataTable dt = new YonetimKonsoluBS().TabloAdlariGetir();
            if (dt.Rows.Count > 0)
            {
                ddlOge.DataSource = dt;
                ddlOge.DataTextField = "AD";
                ddlOge.DataValueField = "TABLO";
                ddlOge.DataBind();
                ddlOge.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));

            }
            else
            {
                ddlOge.DataSource = null;
                ddlOge.DataBind();
            }

        }

        protected void ddlOge_SelectedIndexChanged(object sender, DropDownListEventArgs e)
        {
            string tabloAdi = ddlOge.SelectedValue.ToString();
            Session["TabloAdi"] = tabloAdi;
            GridDoldur(tabloAdi);
            trKayitEkle.Visible = true;
        }

        public void GridDoldur(string tabloAdi)
        {
            DataSet ds = new YonetimKonsoluBS().RefTablolariGetir();
            if (ds.Tables.Count == 0)
                return;

            DataView dv = ds.Tables[tabloAdi].DefaultView;
            rgOgeler1.DataSource = dv;
            rgOgeler1.DataBind();
        }

        protected void rgOgeler1_ItemCommand(object sender, GridCommandEventArgs e)
        {
            bool sonuc = false;
            string tabloAdi = Session["TabloAdi"].ToString();

            if (e.CommandName == "Delete")
            {
                string id = (e.Item as GridDataItem).GetDataKeyValue("ID").ToString(); 
                Dictionary<string, object> prms = new Dictionary<string, object>();
                prms.Add("TABLOADI", tabloAdi);
                prms.Add("ID", id);
                sonuc = new YonetimKonsoluBS().OgeSil(prms);

                if (sonuc)
                {
                    GridDoldur(tabloAdi);
                    MessageBox.Basari(this, "Seçiminiz silindi.");
                }
                else
                {
                    MessageBox.Hata(this, "Silme işleminde hata oluştu!");
                }
            }

        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {

        }

        protected void lbYeniKayit_Click(object sender, EventArgs e)
        {
            tbKayitEkle.Visible = true;
        }

        

    }
}