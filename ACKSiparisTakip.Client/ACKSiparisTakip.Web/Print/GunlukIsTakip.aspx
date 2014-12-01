<%@ Page Title="" Language="C#" MasterPageFile="~/Print/PrinterFriendly.Master" AutoEventWireup="true" CodeBehind="GunlukIsTakip.aspx.cs" Inherits="ACKSiparisTakip.Web.Print.GunlukIsTakip" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <table style="width: 80%">
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
