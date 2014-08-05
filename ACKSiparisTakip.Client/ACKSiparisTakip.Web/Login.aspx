<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ACKSiparisTakip.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/Theme/Template/Template.css" type="text/css" rel="stylesheet"/>
    <link href="App_Themes/Theme/StyleSheet.css" type="text/css" rel="stylesheet"/>
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
                                <asp:LinkButton ID="LB_Logout" runat="server" OnClick="LB_Logout_Click">(Çıkış)</asp:LinkButton>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br />
                            </td>
                        </tr>
                    </table>
                </div>

                <div style="width: 100%; text-align: left; padding-left: 43px;">
                    <h2 class="title" style="color: skyblue; border-color: black; text-align: center">Sipariş Takip Programı</h2>


                </div>
                <div id="ContentPage" style="text-align: center; padding-top: 25px;">

                    <div id="infobox">
                        <br />
                        <br />
                        <br />
                        <h2 class="posted">Lütfen Kullanıcı Girişi Yapınız</h2>
                        <table>
                            <tr>
                                <td style="vertical-align: middle;">
                                    <img src="App_Style/Raster/user.png" alt="" style="position: relative; top: 4px;" />
                                    <asp:TextBox ID="userName" runat="server" ToolTip="Kullanıcı adınızı giriniz." Width="95px"></asp:TextBox>
                                    <img src="App_Style/Raster/lock.gif" alt="" style="position: relative; top: 6px;" />
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
