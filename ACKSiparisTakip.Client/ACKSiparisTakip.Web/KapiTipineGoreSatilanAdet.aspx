<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="KapiTipineGoreSatilanAdet.aspx.cs" Inherits="ACKSiparisTakip.Web.KapiTipineGoreSatilanAdet" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <table class="AnaTablo" style="width: 100%">
        <tr>
            <td style="font-size: large; text-align: center">
                <b>KAPI TİPİNE GÖRE SATILAN ADET</b>
            </td>
        </tr>
        <tr>
            <td>
                <table style="width: 100%">
                    <tr>
                        <th style="width: 3%">Yıl: </th>
                        <td style="width: 10%">
                            <telerik:RadDropDownList ID="ddlYil" runat="server" RenderMode="Lightweight" Width="120">
                            </telerik:RadDropDownList>
                        </td>
                        <th style="width: 3%">İl: </th>
                        <td style="width: 11%">
                            <telerik:RadDropDownList ID="ddlMusteriIl" runat="server" AutoPostBack="true" RenderMode="Lightweight" OnSelectedIndexChanged="ddlMusteriIl_SelectedIndexChanged" Width="150">
                            </telerik:RadDropDownList>
                        </td>
                        <th style="width: 3%">İlçe: </th>
                        <td style="width: 11%">
                            <telerik:RadDropDownList ID="ddlMusteriIlce" runat="server" AutoPostBack="True" RenderMode="Lightweight" Width="150">
                            </telerik:RadDropDownList>
                        </td>
                        <td>
                            <telerik:RadButton ID="btnSorgula" runat="server" Text="Sorgula" OnClick="btnSorgula_Click">
                                <Icon PrimaryIconCssClass="rbSearch" />
                            </telerik:RadButton>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            <br />
                            <asp:GridView ID="grdRapor" runat="server" AutoGenerateColumns="true" AllowPaging="false" PageSize="30"
                                Width="100%" CssClass="AnaTablo" AlternatingRowStyle-BackColor="Wheat" HeaderStyle-CssClass="ThBaslikRenk2"
                                EmptyDataText="İl bulunamamıştır!" EmptyDataRowStyle-Font-Bold="true" EmptyDataRowStyle-ForeColor="Red" EmptyDataRowStyle-HorizontalAlign="Center"
                                EmptyDataRowStyle-CssClass="TdRenkAciklama">
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ddlMusteriIl">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ddlMusteriIlce" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
</asp:Content>
