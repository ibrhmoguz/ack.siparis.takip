<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="GunlukIsTakipFormu.aspx.cs" Inherits="ACKSiparisTakip.Web.GunlukIsTakipFormu" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <table style="width: 100%">
        <tr>
            <td style="text-align: center">
                <telerik:RadDatePicker ID="rdtTarih" runat="server" Width="150px"></telerik:RadDatePicker>
                <telerik:RadButton ID="btnSorgula" runat="server" Text="Sorgula" OnClick="btnSorgula_Click">
                    <Icon PrimaryIconCssClass="rbSearch" />
                </telerik:RadButton>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <th style="text-align: center">
                <h3>Günlük İş Takip Formu</h3>
            </th>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdSiparisler" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="AnaTablo"
                    AlternatingRowStyle-BackColor="Wheat" HeaderStyle-CssClass="ThBaslikRenk2" EmptyDataText="Sipariş Yoktur!">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="SIPARISNO" HeaderText="SİPARİŞ NO" />
                        <asp:BoundField DataField="MUSTERI" HeaderText="MÜŞTERİ/FİRMA" />
                        <asp:BoundField DataField="TEL" HeaderText="TEL" />
                        <asp:BoundField DataField="ADRES" HeaderText="ADRES" />
                        <asp:BoundField DataField="SEMT" HeaderText="SEMT" />
                        <asp:BoundField DataField="MONTAJEKIBI" HeaderText="MONTAJ EKİBİ" />
                        <asp:BoundField DataField="KAPICINSI" HeaderText="KAPI CİNSİ" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
