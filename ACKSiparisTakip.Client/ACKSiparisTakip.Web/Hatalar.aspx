<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="Hatalar.aspx.cs" Inherits="ACKSiparisTakip.Web.Hatalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top: 25px; text-align: center; width: 45%;">
        <br />
        <br />
        <br />
        <table class="AnaTablo">

            <tr>
                <th>HATA LİSTESİ</th>
            </tr>
            <tr>
                <td>
                    <asp:Repeater ID="RepeaterHataListesi" runat="server" OnItemCommand="RP_Personel_ItemCommand">
                        <HeaderTemplate>
                            <table class="AnaTablo">
                                <tr>
                                    <th>Modül</th>
                                    <th>Soyad</th>
                                </tr>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# DataBinder.Eval(Container.DataItem, "MODULE" %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "EVENTLOGENTRYTYPE") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "EXCEPTION") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "PAGEURL") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "METHODNAME") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "MESSAGE") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "PCNAME") %></td>
                                <td><%# DataBinder.Eval(Container.DataItem, "USERNAME") %></td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate></table></FooterTemplate>
                    </asp:Repeater>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
