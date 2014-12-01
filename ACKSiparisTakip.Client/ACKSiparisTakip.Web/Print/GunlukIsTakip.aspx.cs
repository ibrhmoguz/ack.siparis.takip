using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;
using System.Data;
using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Business.ACKBusiness.DataTypes;
using ACKSiparisTakip.Web.Helper;
using Telerik.Web.UI;

namespace ACKSiparisTakip.Web.Print
{
    public partial class GunlukIsTakip : System.Web.UI.Page
    {
        private DataTable SorguSonucListesi
        {
            get
            {
                if (Session["GunlukIsTakipListesi"] != null)
                    return Session["GunlukIsTakipListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["GunlukIsTakipListesi"] = value;
            }
        }

        public string Tarih
        {
            get
            {
                if (!String.IsNullOrEmpty(Request.QueryString["Tarih"]))
                {
                    return Request.QueryString["Tarih"];
                }
                else
                    return string.Empty;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                RaporOlustur();

            }
            
        }
        private void RaporOlustur()
        {
            DataTable dt = new RaporBS().GunlukIsTakipFormuListele(DateTime.Parse(this.Tarih));

            if (dt.Rows.Count > 0)
            {
                grdSiparisler.DataSource = dt;
                grdSiparisler.DataBind();
            }
            else
            {
                grdSiparisler.DataSource = null;
                grdSiparisler.DataBind();
            }
        }
        protected void grdSiparisler_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdSiparisler.PageIndex = e.NewPageIndex;
            grdSiparisler.DataSource = this.SorguSonucListesi;
            grdSiparisler.DataBind();
        }
    }
}