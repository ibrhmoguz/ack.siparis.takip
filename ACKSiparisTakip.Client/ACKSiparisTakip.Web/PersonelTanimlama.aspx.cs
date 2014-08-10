using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;

namespace ACKSiparisTakip.Web
{
    public partial class PersonelTanimlama : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                PersonelDoldur();
            }
          
        }

        private void PersonelDoldur()
        {
            RP_Personel.DataSource = new PersonelBS().PersonelleriGetir();
            RP_Personel.DataBind();
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            string ad = txtAd.Text.Trim();
            string soyad = txtSoyad.Text.Trim();

            bool sonuc = false;

            Dictionary<string, object> prms = new Dictionary<string, object>();
            prms.Add("AD", ad);
            prms.Add("SOYAD", soyad);

            sonuc = new PersonelBS().PersonelTanimla(prms);

            if (sonuc)
            {
                PersonelDoldur();
            }
            else
            {
                //messagebox
            }
        }

        protected void RP_Personel_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            bool sonuc = false;

            if (e.CommandName == "Delete")
            {
                string id = e.CommandArgument.ToString();

                Dictionary<string, object> prms = new Dictionary<string, object>();
                prms.Add("ID", id);
                //prms.Add("SOYAD", soyad);

                sonuc = new PersonelBS().PersonelSil(prms);

                if (sonuc)
                {
                    PersonelDoldur();
                }
                else
                {
                    //messagebox
                }
            }
        }
    }
}