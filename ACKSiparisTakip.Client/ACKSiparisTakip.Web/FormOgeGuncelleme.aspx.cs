using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ACKSiparisTakip.Business.ACKBusiness;
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
            GridDoldur(tabloAdi);
        }

        public void GridDoldur(string tabloAdi)
        {
            DataSet ds = new YonetimKonsoluBS().RefTablolariGetir();
            if (ds.Tables.Count == 0)
                return;

            DataView dv = ds.Tables[tabloAdi].DefaultView;
            RadGrid1.DataSource = dv;
            RadGrid1.DataBind();
        }

        protected void RadGrid1_ItemCreated(object sender, Telerik.Web.UI.GridItemEventArgs e)
        {
            if (e.Item is GridEditableItem && e.Item.IsInEditMode)
            {
                if (!(e.Item is GridEditFormInsertItem))
                {
                    GridEditableItem item = e.Item as GridEditableItem;
                    GridEditManager manager = item.EditManager;
                    GridTextBoxColumnEditor editor = manager.GetColumnEditor("ID") as GridTextBoxColumnEditor;
                    editor.TextBoxControl.Enabled = false;
                }
            }
        }
        protected void RadGrid1_ItemInserted(object source, GridInsertedEventArgs e)
        {
            if (e.Exception != null)
            {

                e.ExceptionHandled = true;
                SetMessage("Customer cannot be inserted. Reason: " + e.Exception.Message);

            }
            else
            {
                SetMessage("New customer is inserted!");
            }
        }
        private void DisplayMessage(string text)
        {
            RadGrid1.Controls.Add(new LiteralControl(string.Format("<span style='color:red'>{0}</span>", text)));
        }

        private void SetMessage(string message)
        {
            gridMessage = message;
        }

        private string gridMessage = null;

        protected void RadGrid1_PreRender(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(gridMessage))
            {
                DisplayMessage(gridMessage);
            }
        }





    }
}