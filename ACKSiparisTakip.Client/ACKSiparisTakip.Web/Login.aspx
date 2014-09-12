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
        <div id="ContentBase">
            <div id="ContentMaster">

                <div id="ContentHeader">
                    <table class="header">
                        <tr>
                            <td align="left"></td>
                            <td align="right">

                                <asp:Label ID="LBL_User" runat="server"></asp:Label>
                                <br />

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="width: 100%; text-align: center; padding-left: 43px;">
                    <table>
                        <tr>
                            <td>
                                <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                                <br />
                                <h2 class="title" style="color: skyblue; border-color: black; text-align: center; align-self: center">Sipariş Takip Programı</h2>
                            </td>
                        </tr>

                    </table>

                </div>
                <div id="ContentPage" style="text-align: center; padding-top: 25px;">
                    <div id="infobox">
                        <br />
                        <h2 class="posted">Lütfen Kullanıcı Girişi Yapınız</h2>
                        <table>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <img src="App_Themes/Theme/Raster/user.png" alt="" style="position: relative; top: 4px; left: 0px;" />
                                    <asp:TextBox ID="userName" runat="server" ToolTip="Kullanıcı adınızı giriniz." Width="95px"></asp:TextBox>
                                    <img src="App_Themes/Theme/Raster/lock.gif" alt="" style="position: relative; top: 6px;" />
                                    <asp:TextBox ID="password" runat="server" TextMode="Password" ToolTip="Şifrenizi Giriniz." Width="75px"></asp:TextBox>
                                </td>
                                <td style="padding-top: 15px;">
                                    <asp:Button ID="LB_Login" runat="server" OnClick="LB_Login_Click" Text="Giriş"></asp:Button></td>
                            </tr>
                        </table>

                    </div>
                </div>
            </div>
        </div>
        <div id="ContentFooter">
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
