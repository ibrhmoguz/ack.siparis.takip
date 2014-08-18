<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="FormOgeGuncelleme.aspx.cs" Inherits="ACKSiparisTakip.Web.FormOgeGuncelleme" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 75%">
        <br />
        <br />
        <br />
        <table class="AnaTablo">
            <tr>
                <th colspan="2" style="text-align: center; font-size: large;">FORM ÖĞELERİ<br />
                </th>
            </tr>
            <tr>
                <th>Düzenlemek istediğiniz öğeyi seçiniz : </th>
                <td>
                    <telerik:RadDropDownList ID="ddlOge" runat="server" OnSelectedIndexChanged="ddlOge_SelectedIndexChanged" AutoPostBack="True"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <telerik:RadFormDecorator ID="QsfFromDecorator" runat="server" DecoratedControls="All" EnableRoundedCorners="false" />
                    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
                        <AjaxSettings>
                            <telerik:AjaxSetting AjaxControlID="RadGrid1">
                                <UpdatedControls>
                                    <telerik:AjaxUpdatedControl ControlID="RadGrid1" LoadingPanelID="RadAjaxLoadingPanel1" />
                                </UpdatedControls>
                            </telerik:AjaxSetting>
                        </AjaxSettings>
                    </telerik:RadAjaxManager>
                    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
                    <telerik:RadGrid ID="RadGrid1" runat="server"
                        AllowPaging="True" AllowAutomaticUpdates="True" AllowAutomaticInserts="True"
                        AllowAutomaticDeletes="true" AllowSorting="true" OnItemCreated="RadGrid1_ItemCreated"
                        OnItemInserted="RadGrid1_ItemInserted" OnPreRender="RadGrid1_PreRender">
                        <PagerStyle Mode="NextPrevAndNumeric" />
                        <MasterTableView AutoGenerateColumns="False"
                            DataKeyNames="ID" CommandItemDisplay="Top">
                            <Columns>
                                <telerik:GridEditCommandColumn ButtonType="ImageButton" UniqueName="EditCommandColumn">
                                </telerik:GridEditCommandColumn>
                                <telerik:GridBoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"
                                    UniqueName="ID" Visible="false" >
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="AD" HeaderText="AD" SortExpression="AD"
                                    UniqueName="AD">
                                </telerik:GridBoundColumn>                               
                                <telerik:GridButtonColumn Text="Sil" CommandName="Delete" ButtonType="ImageButton" />
                            </Columns>
                            <EditFormSettings>
                                <EditColumn ButtonType="ImageButton" />
                            </EditFormSettings>
                        </MasterTableView>
                    </telerik:RadGrid>
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
