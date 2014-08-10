<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="SiparisFormKayit.aspx.cs" Inherits="ACKSiparisTakip.Web.SiparisFormKayit" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:80%">
        <br />
        <br />
        <br />
        <table class="AnaTablo">
            <tr>
                <td rowspan="6" style="text-align: center">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                </td>
                <td colspan="2" rowspan="3" style="width: 45%; text-align: center; te">

                    <asp:Label ID="lblKapiTur" runat="server"></asp:Label>
                </td>
                <td style="width: 30%; text-align: left">
                    <b>ANKARA ÇELİK KAPI SAN. TİC. LTD. ŞTİ. </b>
                </td>
            </tr>
            <tr>

                <td style="font-size: smaller; text-align: left">
                    <b>Adres: </b>Alınteri Bulvarı No:212 Ostim/ANKARA
                </td>
            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left">
                    <b>Telefon: </b>(0 312) 385 37 83 - 84
                </td>

            </tr>
            <tr>
                <td colspan="2" rowspan="3" style="font-size: x-large; text-align: center">
                    <b>SİPARİŞ FORMU</b>
                </td>
                <td style="font-size: smaller; text-align: left">
                    <b>Faks : </b>(0 312) 354 61 81
                </td>

            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left">
                    <b>Web : </b>www.ankaracelikkapi.com.tr
                </td>

            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left">
                    <b>e-posta : </b>ankara@celikkapi.net
                </td>

            </tr>

        </table>
        <br />
        <table class="AnaTablo">
            <tr>
                <th style="width: 15%">Ölçü Tarihi ve Saati :   </th>
                <td style="width: 35%">
                    <telerik:RadDateTimePicker ID="rdtOlcuTarihSaat" runat="server" Width="200px"></telerik:RadDateTimePicker>
                </td>
                <th style="width: 20%">Sipariş Tarihi :  </th>
                <td style="width: 30%">
                    <telerik:RadDatePicker ID="rdtOlcuSiparisTarih" runat="server"></telerik:RadDatePicker>
                </td>
            </tr>
            <tr>
                <th>Bayi Adı : </th>
                <td>
                    <telerik:RadTextBox ID="txtBayiAdi" runat="server"></telerik:RadTextBox>
                </td>
                <th>Sipariş No : </th>
                <td>
                    <telerik:RadTextBox ID="txtSiparisNo" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
        </table>
        <br />

        <table class="AnaTablo">
            <tr>
                <th colspan="4">MÜŞTERİ BİLGİLERİ </th>

            </tr>
            <tr>
                <th style="width: 20%">Adı : </th>
                <td>
                    <telerik:RadTextBox ID="txtAd" runat="server"></telerik:RadTextBox>
                </td>
                <th style="width: 20%">Soyadı </th>
                <td>
                    <telerik:RadTextBox ID="txtSoyad" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th rowspan="3">Adresi : </th>
                <td rowspan="3">
                    <table>
                        <tr>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtAdres" runat="server" TextMode="MultiLine" Height="50px" Width="250px"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>İlçe :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMusteriIlce" runat="server" SelectedText="DropDownListItem1" SelectedValue="asdasdasdasd">
                                </telerik:RadDropDownList>

                            </td>
                            <th>İl :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMusteriIl" runat="server">
                                </telerik:RadDropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <th>Ev Tel : </th>
                <td>
                    <telerik:RadTextBox ID="txtEvTel" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>iş Tel : </th>
                <td>
                    <telerik:RadTextBox ID="txtIsTel" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Cep Tel : </th>
                <td>
                    <telerik:RadTextBox ID="txtCepTel" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
        </table>
        <br />
        <table class="AnaTablo">
            <tr>
                <th style="width: 20%">İç Kapı Modeli :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlIcKapiModeli" runat="server"></telerik:RadDropDownList>
                </td>
                <th style="width: 20%">Dış Kapı Modeli :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDisKapiModeli" runat="server"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>İç Kapı Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlIcKapiRengi" runat="server"></telerik:RadDropDownList>
                </td>
                <th>Dış Kapı Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDisKapiRengi" runat="server"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Kilit Sistemi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlKilitSistemi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtKilitSistemi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Çıta :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlCita" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtCita" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Eşik :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlEsik" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtEsik" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Mermer Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlMermerRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtMermerRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Aluminyum Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlAluminyumRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtAluminyumRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Aksesuar Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlAksesuarRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtAksesuarRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>

            <tr>
                <th>Taç Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlTacTipi" runat="server"></telerik:RadDropDownList>
                </td>
                <th>Pervaz Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlPervazTipi" runat="server"></telerik:RadDropDownList>
                </td>

            </tr>
            <tr>
                <th>Conta Rengi :</th>
                <td colspan="3">
                    <telerik:RadDropDownList ID="ddlContaRengi" runat="server"></telerik:RadDropDownList>
                </td>

            </tr>
        </table>
        <br />
        <table class="AnaTablo">
            <tr>
                <th colspan="4">AKSESUARLAR</th>
            </tr>
            <tr>
                <th style="width: 20%">Çekme Kolu :</th>
                <td>
                    <telerik:RadTextBox ID="txtCekmeKolu" runat="server"></telerik:RadTextBox>
                </td>
                <th style="width: 20%">Baba :</th>
                <td>
                    <telerik:RadDropDownList ID="txtBaba" runat="server"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Kapı No :</th>
                <td>
                    <telerik:RadTextBox ID="txtKapiNo" runat="server"></telerik:RadTextBox>
                </td>
                <th>Dürbün :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDurbun" runat="server"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Barel Tipi :</th>
                <td>
                    <telerik:RadTextBox ID="txtBarelTipi" runat="server"></telerik:RadTextBox>
                </td>
                <th>Taktak :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlTaktak" runat="server"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Montajda Takılacaklar</th>
                <td colspan="3">
                    <telerik:RadTextBox ID="txtMontajdaTakilacaklar" runat="server" Width="400px" TextMode="MultiLine"></telerik:RadTextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table class="AnaTablo">
            <tr>
                <th colspan="2">ÖLÇÜM ve MONTAJ</th>
            </tr>
            <tr>

                <td>
                    <table>
                        <tr>
                            <th style="width: 20%" rowspan="2">Ölçüm Bilgileri : </th>
                            <td rowspan="2">
                                <telerik:RadTextBox ID="txtOlcumBilgileri" runat="server" Width="200px" TextMode="MultiLine"></telerik:RadTextBox>
                            </td>
                            <th style="width: 20%">Serisi : </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlKapiSerisi" runat="server"></telerik:RadDropDownList>
                            </td>

                        </tr>
                        <tr>
                            <th>Modeli : </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlModeli" runat="server"></telerik:RadDropDownList>

                            </td>
                        </tr>
                        <tr>
                            <th>Montaj Şekli </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMontajSekli" runat="server"></telerik:RadDropDownList>

                            </td>

                        </tr>
                        <tr>
                            <th>Teslim Şekli </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlTeslimSekli" runat="server"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <th>Teslim Tarihi</th>
                            <td>
                                <telerik:RadDatePicker ID="rdpTeslimTarihi" runat="server"></telerik:RadDatePicker>
                            </td>
                        </tr>

                    </table>
                </td>
                <td style="width: 25%" rowspan="8">
                    <telerik:RadBinaryImage ID="rbiKapiResmi" runat="server" ImageUrl="~/App_Themes/Theme/Raster/guardKapiOrta.PNG" />
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
