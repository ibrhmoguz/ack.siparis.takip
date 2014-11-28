﻿using ACKSiparisTakip.Business.ACKBusiness;
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
    public partial class Hatalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"].ToString() == "Kullanici")
            {
                MessageBox.Hata(this, "Bu sayfaya erişim yetkiniz yoktur!");
                return;
            }

            if (!Page.IsPostBack)
            {
                HatalariYukle();
            }
        }

        private void HatalariYukle()
        {
            DataTable dt = new YonetimKonsoluBS().HatalariGetir();

            if (dt.Rows.Count > 0)
            {
                RepeaterHataListesi.DataSource = dt;
                lblhataSayisi.Text = dt.Rows.Count.ToString();
            }
            else
                RepeaterHataListesi.DataSource = null;

            RepeaterHataListesi.DataBind();
        }
    }
}