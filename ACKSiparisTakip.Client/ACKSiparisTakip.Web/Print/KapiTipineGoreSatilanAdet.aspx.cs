using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACKSiparisTakip.Web.Print
{
    public partial class KapiTipineGoreSatilanAdet : System.Web.UI.Page
    {
        private DataTable SorguSonucListesi
        {
            get
            {
                if (Session["KapiTipineGoreSatilanAdet"] != null)
                    return Session["KapiTipineGoreSatilanAdet"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["KapiTipineGoreSatilanAdet"] = value;
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
            DataTable dt = this.SorguSonucListesi;

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