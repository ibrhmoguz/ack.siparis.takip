using ACKSiparisTakip.Business.ACKBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Telerik.Web.UI;
using ACKSiparisTakip.Web.Helper;

namespace ACKSiparisTakip.Web
{
    public partial class SiparisSorgula : ACKBasePage
    {
        private DataTable PersonelListesi
        {
            get
            {
                if (Session["SiparisSorgula_PersonelListesi"] != null)
                    return Session["SiparisSorgula_PersonelListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["SiparisSorgula_PersonelListesi"] = value;
            }
        }

        private DataTable SorguSonucListesi
        {
            get
            {
                if (Session["SiparisSorgula_SorguSonucListesi"] != null)
                    return Session["SiparisSorgula_SorguSonucListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["SiparisSorgula_SorguSonucListesi"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["yetki"].ToString() == "Kullanici")
            {
                MessageBox.Hata(this, "Bu sayfaya erişim yetkiniz yoktur!");
                return;
            }

            if (!Page.IsPostBack)
            {
                VarsayilanDegerleriAyarla();
            }
        }

        private void VarsayilanDegerleriAyarla()
        {
            PersonelListesiYukle();
            DropDownlariDoldur();
        }

        private void PersonelListesiYukle()
        {
            DataTable dt = new PersonelBS().PersonelListesiGetir();
            ListBoxMontajEkibi.DataSource = dt;
            ListBoxMontajEkibi.DataBind();
            this.PersonelListesi = dt;
        }

        private void DropDownlariDoldur()
        {
            DataSet ds = new YonetimKonsoluBS().RefTablolariGetir();
            if (ds.Tables.Count == 0)
                return;

            DataTable dtKapiModeli = ds.Tables["REF_TUMKAPIMODELLERI"];
            DataTable dtKapiRenk = ds.Tables["REF_KAPIRENK"];
            DataTable dtKilitSistem = ds.Tables["REF_KILITSISTEM"];
            DataTable dtCita = ds.Tables["REF_CITA"];
            DataTable dtEsik = ds.Tables["REF_ESIK"];
            DataTable dtAksesuarRenk = ds.Tables["REF_AKSESUARRENK"];
            DataTable dtMontajSekli = ds.Tables["REF_MONTAJSEKLI"];
            DataTable dtTeslimSekli = ds.Tables["REF_TESLIMSEKLI"];
            DataTable dtAluminyumRenk = ds.Tables["REF_ALUMINYUMRENK"];
            DataTable dtTacTip = ds.Tables["REF_TACTIP"];
            DataTable dtPervazTip = ds.Tables["REF_PERVAZTIP"];
            DataTable dtContaRenk = ds.Tables["REF_CONTARENK"];
            DataTable dtPersonel = ds.Tables["REF_PERSONEL"];

            DropDownBindEt(ddlIcKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlDisKapiModeli, dtKapiModeli);
            DropDownBindEt(ddlIcKapiRengi, dtKapiRenk);
            DropDownBindEt(ddlDisKapiRengi, dtKapiRenk);
            DropDownBindEt(ddlKilitSistemi, dtKilitSistem);
            DropDownBindEt(ddlCita, dtCita);
            DropDownBindEt(ddlEsik, dtEsik);
            DropDownBindEt(ddlAksesuarRengi, dtAksesuarRenk);
            DropDownBindEt(ddlMontajSekli, dtMontajSekli);
            DropDownBindEt(ddlAluminyumRengi, dtAluminyumRenk);
            DropDownBindEt(ddlTacTipi, dtTacTip);
            DropDownBindEt(ddlPervazTipi, dtPervazTip);
            DropDownBindEt(ddlContaRengi, dtContaRenk);
            IlleriGetir();
        }

        private void DropDownBindEt(RadDropDownList ddl, DataTable dt)
        {
            ddl.DataSource = dt;
            ddl.DataTextField = "AD";
            ddl.DataValueField = "ID";
            ddl.DataBind();
            ddl.Items.Insert(0, new Telerik.Web.UI.DropDownListItem("Seçiniz", "0"));
        }

        protected void btnSorgula_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> prms = new Dictionary<string, object>();

            if (String.IsNullOrWhiteSpace(txtSiparisNo.Text))
                prms.Add("SiparisNo", null);
            else
                prms.Add("SiparisNo", txtSiparisNo.Text);

            if (rdtSiparisTarihiBas.SelectedDate == null)
                prms.Add("SiparisTarihiBas", null);
            else
                prms.Add("SiparisTarihiBas", rdtSiparisTarihiBas.SelectedDate);

            if (rdtSiparisTarihiBit.SelectedDate == null)
                prms.Add("SiparisTarihiBit", null);
            else
                prms.Add("SiparisTarihiBit", rdtSiparisTarihiBit.SelectedDate);

            if (String.IsNullOrWhiteSpace(txtMusteriAdSoyad.Text))
                prms.Add("MusteriAdSoyad", null);
            else
                prms.Add("MusteriAdSoyad", txtMusteriAdSoyad.Text);

            if (rdpTeslimTarihiBas.SelectedDate == null)
                prms.Add("TeslimTarihiBas", null);
            else
                prms.Add("TeslimTarihiBas", rdpTeslimTarihiBas.SelectedDate);

            if (rdpTeslimTarihiBit.SelectedDate == null)
                prms.Add("TeslimTarihiBit", null);
            else
                prms.Add("TeslimTarihiBit", rdpTeslimTarihiBit.SelectedDate);

            string personelListesi = String.Empty;
            foreach (RadListBoxItem item in ListBoxMontajEkibi.Items)
            {
                if (item.Checked)
                {
                    if (!String.IsNullOrWhiteSpace(personelListesi))
                        personelListesi += ",";
                    personelListesi += item.Value;
                }
            }

            if (String.IsNullOrWhiteSpace(personelListesi))
                prms.Add("PersonelListesi", null);
            else
                prms.Add("PersonelListesi", personelListesi);

            if (ddlIcKapiModeli.SelectedIndex == 0)
                prms.Add("ddlIcKapiModeli", null);
            else
                prms.Add("ddlIcKapiModeli", ddlIcKapiModeli.SelectedText);

            if (ddlDisKapiModeli.SelectedIndex == 0)
                prms.Add("ddlDisKapiModeli", null);
            else
                prms.Add("ddlDisKapiModeli", ddlDisKapiModeli.SelectedText);

            if (ddlIcKapiRengi.SelectedIndex == 0)
                prms.Add("ddlIcKapiRengi", null);
            else
                prms.Add("ddlIcKapiRengi", ddlIcKapiRengi.SelectedText);

            if (ddlDisKapiRengi.SelectedIndex == 0)
                prms.Add("ddlDisKapiRengi", null);
            else
                prms.Add("ddlDisKapiRengi", ddlDisKapiRengi.SelectedText);

            if (ddlKilitSistemi.SelectedIndex == 0)
                prms.Add("ddlKilitSistemi", null);
            else
                prms.Add("ddlKilitSistemi", ddlKilitSistemi.SelectedText);

            if (ddlCita.SelectedIndex == 0)
                prms.Add("ddlCita", null);
            else
                prms.Add("ddlCita", ddlCita.SelectedText);

            if (ddlEsik.SelectedIndex == 0)
                prms.Add("ddlEsik", null);
            else
                prms.Add("ddlEsik", ddlKilitSistemi.SelectedText);

            if (ddlAksesuarRengi.SelectedIndex == 0)
                prms.Add("ddlAksesuarRengi", null);
            else
                prms.Add("ddlAksesuarRengi", ddlAksesuarRengi.SelectedText);

            if (ddlMontajSekli.SelectedIndex == 0)
                prms.Add("ddlMontajSekli", null);
            else
                prms.Add("ddlMontajSekli", ddlMontajSekli.SelectedText);

            if (ddlAluminyumRengi.SelectedIndex == 0)
                prms.Add("ddlAluminyumRengi", null);
            else
                prms.Add("ddlAluminyumRengi", ddlAluminyumRengi.SelectedText);

            if (ddlTacTipi.SelectedIndex == 0)
                prms.Add("ddlTacTipi", null);
            else
                prms.Add("ddlTacTipi", ddlTacTipi.SelectedText);

            if (ddlPervazTipi.SelectedIndex == 0)
                prms.Add("ddlPervazTipi", null);
            else
                prms.Add("ddlPervazTipi", ddlPervazTipi.SelectedText);

            if (ddlContaRengi.SelectedIndex == 0)
                prms.Add("ddlContaRengi", null);
            else
                prms.Add("ddlContaRengi", ddlContaRengi.SelectedText);

            if (ddlMusteriIl.SelectedIndex == 0)
                prms.Add("Il", null);
            else
                prms.Add("Il", ddlMusteriIl.SelectedText);

            if (ddlMusteriIlce.SelectedIndex == 0)
                prms.Add("Ilce", null);
            else
                prms.Add("Ilce", ddlMusteriIlce.SelectedText);

            DataTable dt = new SiparisIslemleriBS().SiparisSorgula(prms);
            gvSiparisler.DataSource = dt;
            gvSiparisler.DataBind();
            this.SorguSonucListesi = dt;
        }

        protected void ddlMusteriIl_SelectedIndexChanged(object sender, DropDownListEventArgs e)
        {
            IlceleriGetir(e.Value);
            ddlMusteriIlce.SelectedIndex = 0;
        }

        protected void IlleriGetir()
        {
            DataTable dt = new SiparisIslemleriBS().IlleriGetir();
            if (dt.Rows.Count > 0)
            {
                ddlMusteriIl.DataSource = dt;
                ddlMusteriIl.DataTextField = "ILAD";
                ddlMusteriIl.DataValueField = "ILKOD";
                ddlMusteriIl.DataBind();
            }
            else
            {
                ddlMusteriIl.DataSource = null;
                ddlMusteriIl.DataBind();
            }
            ddlMusteriIl.Items.Insert(0, new DropDownListItem("Seçiniz", "0"));
        }

        protected void IlceleriGetir(string ilKod)
        {
            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("ILKOD", ilKod);

            DataTable dt = new SiparisIslemleriBS().IlceleriGetir(prms);

            if (dt.Rows.Count > 0)
            {
                ddlMusteriIlce.DataSource = dt;
                ddlMusteriIlce.DataTextField = "ILCEAD";
                ddlMusteriIlce.DataValueField = "PKEY";
                ddlMusteriIlce.DataBind();
            }
            else
            {
                ddlMusteriIlce.DataSource = null;
                ddlMusteriIlce.DataBind();
            }
            ddlMusteriIlce.Items.Insert(0, new DropDownListItem("Seçiniz", "0"));
        }

        protected void gvSiparisler_PageIndexChanged(object sender, GridPageChangedEventArgs e)
        {
            gvSiparisler.CurrentPageIndex = e.NewPageIndex;
            gvSiparisler.DataSource = this.SorguSonucListesi;
            gvSiparisler.DataBind();
        }

        protected void gvSiparisler_ItemDataBound(object sender, GridItemEventArgs e)
        {
            if (e.Item.ItemType == GridItemType.Item || e.Item.ItemType == GridItemType.AlternatingItem)
            {
                HyperLink link = (HyperLink)e.Item.FindControl("lnkGoruntule");
                if (e.Item.IsDataBound)
                {
                    DataRowView rowView = (DataRowView)e.Item.DataItem;
                    link.NavigateUrl = "~/SiparisFormGoruntule.aspx?SiparisNo=" + rowView.Row[1].ToString();
                }
            }
        }
    }
}