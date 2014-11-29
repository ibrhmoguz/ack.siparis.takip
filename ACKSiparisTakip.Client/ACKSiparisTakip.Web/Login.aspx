<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACKSiparisTakip.Web.Login" %>

<!DOCTYPE html>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/Theme/Template/Template.css" type="text/css" rel="stylesheet" />
    <link href="App_Themes/Theme/StyleSheet.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="FormLogin" runat="server">
        <table style="width: 100%">
            <tr>
                <br />
                <br />
                <br />
            </tr>
            <tr>
                <td colspan="2">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                    <br />
                    <h2 class="title" style="color: skyblue; border-color: black; text-align: center; align-self: center">Sipariş Takip Programı</h2>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: middle;">
                    <img src="App_Themes/Theme/Raster/user.png" alt="" style="position: relative; top: 4px; left: 0px;" />
                    <asp:TextBox ID="userName" runat="server" ToolTip="Kullanıcı adınızı giriniz." Width="95px"></asp:TextBox>
                    <img src="App_Themes/Theme/Raster/lock.gif" alt="" style="position: relative; top: 6px;" />
                    <asp:TextBox ID="password" runat="server" TextMode="Password" ToolTip="Şifrenizi Giriniz." Width="75px"></asp:TextBox>
                    <asp:LinkButton ID="LB_Login" runat="server" OnClick="LB_Login_Click" Text="Giriş" ForeColor="Blue" Font-Underline="true"></asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
