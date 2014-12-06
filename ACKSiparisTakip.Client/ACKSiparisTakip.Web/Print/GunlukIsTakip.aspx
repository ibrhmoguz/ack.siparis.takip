<%@ Page Title="" Language="C#" MasterPageFile="~/Print/PrinterFriendly.Master" AutoEventWireup="true" CodeBehind="GunlukIsTakip.aspx.cs" Inherits="ACKSiparisTakip.Web.Print.GunlukIsTakip" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br />
    <table class="AnaTablo" style="width: 100%">
        <tr>
            <th style="text-align: center">
                <h3>Günlük İş Takip Formu</h3>
            </th>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdSiparisler" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="AnaTablo"
                    AlternatingRowStyle-BackColor="Wheat" HeaderStyle-CssClass="ThBaslikRenk2">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" />
                        <asp:BoundField DataField="SIPARISNO" HeaderText="SİPARİŞ NO" />
                        <asp:BoundField DataField="MUSTERI" HeaderText="MÜŞTERİ/FİRMA" />
                        <asp:BoundField DataField="TEL" HeaderText="TEL" />
                        <%--<asp:BoundField DataField="ADRES" HeaderText="ADRES" />--%>
                        <asp:BoundField DataField="SEMT" HeaderText="SEMT" />
                        <%-- <asp:BoundField DataField="MONTAJEKIBI" HeaderText="MONTAJ EKİBİ" />--%>
                        <asp:BoundField DataField="ACIKLAMA" HeaderText="AÇIKLAMA" />
                        <asp:BoundField DataField="KAPICINSI" HeaderText="KAPI CİNSİ" />
                    </Columns>
                </asp:GridView>
                <table style="width: 100%; border: 1px solid; ">
                    <tr>
                        <td colspan="3">MONTAJ EKİBİ</td>
                        <td colspan="3">MONTAJ EKİBİ</td>
                        <td colspan="3">MONTAJ EKİBİ</td>
                    </tr>
                    <tr>
                        <td>SİPARİŞ NO</td>
                        <td>SEMT</td>
                        <td>KAPI CİNSİ</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label runat="server" Width="30px"></asp:Label>

                        </td>
                        <td>
                            <asp:Label runat="server" Width="30px"></asp:Label>

                        </td>
                        <td>
                            <asp:Label runat="server" Width="30px"></asp:Label>

                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
