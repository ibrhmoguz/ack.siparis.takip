<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="SiparisForm.aspx.cs" Inherits="ACKSiparisTakip.Web.SiparisForm" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
 
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table border="1" >
            <tr style="border-color:black">
                <td rowspan="6">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                </td>
                <td colspan="2" rowspan="3" style="width:45%" >

                    <asp:Label ID="lblKapiTur" runat="server" ></asp:Label>
                </td>
                <td style="width:30%;text-align:left" >
                    <b>ANKARA ÇELİK KAPI SAN. TİC. LTD. ŞTİ. </b>
                </td>
            </tr>
            <tr>

                <td style="font-size:smaller;text-align:left">
                   <b > Adres: </b> Alınteri Bulvarı No:212 Ostim/ANKARA
                </td>
            </tr>
            <tr>
                <td style="font-size:smaller; text-align:left"> 
                    <b > Telefon: </b> (0 312) 385 37 83 - 84
                </td>

            </tr>
            <tr>
                <td colspan="2" rowspan="3" style="font-size: x-large">
                    <b>SİPARİŞ FORMU</b>
                </td>
                <td style="font-size:smaller; text-align:left">
                    <b > Faks : </b> (0 312) 354 61 81
                </td>

            </tr>
            <tr>
                <td style="font-size:smaller; text-align:left">
                    <b > Web : </b> www.ankaracelikkapi.com.tr
                </td>

            </tr>
            <tr>
                < <td style="font-size:smaller; text-align:left">
                    <b > e-posta : </b> ankara@celikkapi.net
                </td>

            </tr>

        </table>
    </div>
</asp:Content>
