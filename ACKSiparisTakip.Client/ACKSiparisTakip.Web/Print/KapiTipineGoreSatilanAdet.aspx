<%@ Page Title="" Language="C#" MasterPageFile="~/Print/PrinterFriendly.Master" AutoEventWireup="true" CodeBehind="KapiTipineGoreSatilanAdet.aspx.cs" Inherits="ACKSiparisTakip.Web.Print.KapiTipineGoreSatilanAdet" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%" class="normalTablo">
        <tr>
            <td rowspan="4" style="width: 70px; padding: 5px 5px 5px 5px">
                <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" Width="70" Height="70" />
            </td>
            <td rowspan="4" style="text-align: center; vertical-align: central">
                <h3>Kapı Bazlı Satılan Adet Raporu</h3>
            </td>
        </tr>
        <tr>
            <td style="width: 170px; vertical-align: middle; padding: 3px 3px 3px 3px">Doküman Kodu : F27</td>
        </tr>
        <tr>
            <td style="vertical-align: middle; padding: 3px 3px 3px 3px">Yürürlük Tarihi : 20.08.2004</td>
        </tr>
        <tr>
            <td style="vertical-align: middle; padding: 3px 3px 3px 3px">Rev. No-Tarihi : 0</td>
        </tr>
        <tr>
            <td colspan="3">
                <br />
                <asp:GridView ID="grdRapor" runat="server" AutoGenerateColumns="true" AllowPaging="false" PageSize="30"
                    Width="100%" CssClass="AnaTablo" AlternatingRowStyle-BackColor="Wheat" HeaderStyle-CssClass="ThBaslikRenk2"
                    EmptyDataText="Satış bulunamamıştır!" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-HorizontalAlign="Center"
                    EmptyDataRowStyle-CssClass="TdRenkAciklama">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
