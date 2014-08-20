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
                <th style="width: 30%">Düzenlemek istediğiniz öğeyi seçiniz : </th>
                <td>
                    <telerik:RadDropDownList ID="ddlOge" runat="server" OnSelectedIndexChanged="ddlOge_SelectedIndexChanged" AutoPostBack="True"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td colspan="2">

                    <telerik:RadGrid ID="rgOgeler1" runat="server" AllowPaging="True" OnItemCommand="rgOgeler1_ItemCommand">

                        <MasterTableView AutoGenerateColumns="False" DataKeyNames="ID">
                            <Columns>
                                <telerik:GridBoundColumn DataField="ID" HeaderText="ID" SortExpression="ID"
                                    UniqueName="ID" Visible="false">
                                </telerik:GridBoundColumn>
                                <telerik:GridBoundColumn DataField="AD" HeaderText="AD" SortExpression="AD"
                                    UniqueName="AD">
                                </telerik:GridBoundColumn>
                                <telerik:GridCheckBoxColumn DataField="NOVA" HeaderText="NOVA"
                                    UniqueName="NOVA">
                                </telerik:GridCheckBoxColumn>
                                <telerik:GridCheckBoxColumn DataField="KROMA" HeaderText="KROMA"
                                    UniqueName="KROMA">
                                </telerik:GridCheckBoxColumn>
                                <telerik:GridCheckBoxColumn DataField="GUARD" HeaderText="GUARD"
                                    UniqueName="GUARD">
                                </telerik:GridCheckBoxColumn>
                                <telerik:GridButtonColumn Text="Sil" CommandName="Delete" ButtonType="ImageButton" />
                            </Columns>
                            <EditFormSettings>
                                <EditColumn ButtonType="ImageButton" />
                            </EditFormSettings>
                        </MasterTableView>
                    </telerik:RadGrid>
                </td>
            </tr>
            <tr id="trKayitEkle" runat="server" visible="false">
                <td colspan="2">
                    <br />
                    <asp:LinkButton ID="lbYeniKayit" runat="server" OnClick="lbYeniKayit_Click"> Yeni Kayıt İçin Tıklayınız </asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table runat="server" id="tbKayitEkle" visible="false">
                        <tr>
                            <th style="width: 10%;">Ad :</th>
                            <td style="width: 30%;">
                                <telerik:RadTextBox ID="txtAd" runat="server"></telerik:RadTextBox>
                            </td>
                            <th style="width: 15%;">Kapı Türü :</th>
                            <td>
                                <asp:CheckBoxList ID="cbxKapiTuru" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="N">Nova</asp:ListItem>
                                    <asp:ListItem Value="K">Kroma</asp:ListItem>
                                    <asp:ListItem Value="G"> Guard</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td>
                                <telerik:RadButton ID="rbKayitEkle" runat="server" Text="Ekle" OnClick="btnEkle_Click">
                                    <Icon PrimaryIconCssClass="rbAdd" PrimaryIconLeft="4" PrimaryIconTop="3" />
                                </telerik:RadButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
