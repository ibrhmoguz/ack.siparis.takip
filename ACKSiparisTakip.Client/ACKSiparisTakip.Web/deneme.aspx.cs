using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ACKSiparsTakip.Business.ACKBusiness;

namespace ACKSiparisTakip
{
    public partial class deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt = new SiparisIslemleriBS().KapıModeliGetir();

            if (dt.Rows.Count > 0)
            {
                TextBox1.Text = dt.Rows[0][0].ToString();
            }


        }
    }
}