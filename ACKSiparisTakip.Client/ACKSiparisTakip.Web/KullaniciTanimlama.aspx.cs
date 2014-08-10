﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;

namespace ACKSiparisTakip.Web
{
    public partial class KullaniciTanimlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                KullaniciDoldur();
            }
        }

        private void KullaniciDoldur()
        {
            RP_Kullanici.DataSource = new KullaniciBS().KullanicilariGetir();
            RP_Kullanici.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            string kullanici = txtKullaniciAdi.Text.Trim();
            string yetki = ddlYetki.SelectedValue;
            string sifre = "12345";
            bool sonuc = false;

            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("KULLANICIADI", kullanici);
            prms.Add("YETKI", yetki);
            prms.Add("SIFRE", sifre);

            sonuc = new KullaniciBS().KullaniciTanimla(prms);

            if (sonuc)
            {
                KullaniciDoldur();
            }
            else
            {
                //messagebox
            }
        }

        protected void RP_Kullanici_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            bool sonuc = false;

            if (e.CommandName == "Delete")
            {
                string kullanici = e.CommandArgument.ToString();

                Dictionary<string, object> prms = new Dictionary<string, object>();
                prms.Add("KULLANICIADI", kullanici);
                sonuc = new KullaniciBS().KullaniciSil(prms);

                if (sonuc)
                {
                    KullaniciDoldur();
                }
                else
                {
                    //messagebox
                }               
            }
        }
    }
}