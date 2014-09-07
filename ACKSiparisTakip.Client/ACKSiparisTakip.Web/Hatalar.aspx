<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="Hatalar.aspx.cs" Inherits="ACKSiparisTakip.Web.Hatalar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top: 15px; text-align: center; width: 100%;">
        <br />
        Hata Sayısı:
        <asp:Label ID="lblhataSayisi" runat="server"></asp:Label>
        <asp:Repeater ID="RepeaterHataListesi" runat="server">
            <HeaderTemplate>
                <table class="AnaTablo" style="width: 100%">
                    <tr>
                        <th>MODUL</th>
                        <th>LOGTYPE</th>
                        <th>EXCEPTION</th>
                        <th>PAGEURL</th>
                        <th>METHODNAME</th>
                        <th>MESSAGE</th>
                        <th>PCNAME</th>
                        <th>USERAUTHORITY</th>
                        <th>EXTENDEDPROPERTIES</th>
                        <th>USERNAME</th>
                        <th style="width: 6%; text-align: center">DATE</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# DataBinder.Eval(Container.DataItem, "MODUL") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "LOGTYPE") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "EXCEPTION") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "PAGEURL") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "METHODNAME") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "MESSAGE") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "PCNAME") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "USERAUTHORITY") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "EXTENDEDPROPERTIES") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "USERNAME") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "DATE") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate></table></FooterTemplate>
        </asp:Repeater>

        <br />
    </div>
</asp:Content>
