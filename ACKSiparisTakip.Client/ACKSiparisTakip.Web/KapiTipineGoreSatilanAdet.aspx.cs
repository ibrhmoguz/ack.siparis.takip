﻿using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Web.Helper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ACKSiparisTakip.Web
{
    public partial class KapiTipineGoreSatilanAdet : ACKBasePage
    {
        private static string ANKARA_IL_KODU = "6";

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
            Sorgula();
        }

        private void Sorgula()
        {
            string il = null;
            string ilce = null;

            if (ddlMusteriIl.SelectedIndex != 0)
                il = ddlMusteriIl.SelectedText;
            if (ddlMusteriIlce.SelectedIndex != 0)
                ilce = ddlMusteriIlce.SelectedText;

            DataTable dt = new RaporBS().KapiTipineGoreSatilanAdet(il, ilce, ddlYil.SelectedValue);
            dt = YuzdeDegerleriHesapla(dt);

            if (dt.Rows.Count > 0)
            {
                grdRapor.DataSource = dt;
                grdRapor.DataBind();
                btnYazdir.Visible = true;
            }
            else
            {
                grdRapor.DataSource = null;
                grdRapor.DataBind();
                btnYazdir.Visible = false;
            }

            this.SorguSonucListesi = dt;
            PopupPageHelper.OpenPopUp(btnYazdir, "Print/KapiTipineGoreSatilanAdet.aspx", "", true, false, true, false, false, false, 1024, 800, true, false, "onclick");
        }

        private DataTable YuzdeDegerleriHesapla(DataTable dt)
        {
            decimal toplamAdet = Convert.ToDecimal(dt.AsEnumerable().Sum(a => Convert.ToInt32(a.Field<string>("Yillik"))).ToString());
            decimal yuzde;

            foreach (DataRow row in dt.Rows)
            {
                if (row["Yillik"] != DBNull.Value)
                {
                    if (toplamAdet != 0)
                    {
                        yuzde = Convert.ToDecimal((Convert.ToDecimal(row["Yillik"].ToString()) / toplamAdet));
                        row["Yuzde(%)"] = (yuzde * 100).ToString("0.00", CultureInfo.InvariantCulture);
                    }
                    else
                        row["Yuzde(%)"] = "0";
                }
            }

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    if (dt.Rows[i][j] != DBNull.Value && dt.Rows[i][j].ToString() == "0")
                        dt.Rows[i][j] = string.Empty;
                }
            }

            return dt;
        }
    }
}