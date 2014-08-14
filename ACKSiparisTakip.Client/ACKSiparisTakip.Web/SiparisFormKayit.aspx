<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="SiparisFormKayit.aspx.cs" Inherits="ACKSiparisTakip.Web.SiparisFormKayit" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width: 75%">
        <br />
        <br />
        <br />
        <table class="AnaTablo">
            <tr>
                <td rowspan="6" style="text-align: center">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                </td>
                <td colspan="2" rowspan="3" style="width: 45%; font-size: x-large; text-align: center;">

                    <b>
                        <asp:Label ID="lblKapiTur" runat="server"></asp:Label></b>
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
                    <telerik:RadTextBox ID="txtIcKapiModeli" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th style="width: 20%">Dış Kapı Modeli :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDisKapiModeli" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtDisKapiModeli" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>İç Kapı Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlIcKapiRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtIcKapiRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Dış Kapı Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDisKapiRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtDisKapiRengi" runat="server" Visible="false"></telerik:RadTextBox>
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
                <th>Aksesuar Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlAksesuarRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtAksesuarRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>
            <tr runat="server" id="guard1">
                <th>Aluminyum Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlAluminyumRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtAluminyumRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Conta Rengi :</th>
                <td colspan="3">
                    <telerik:RadDropDownList ID="ddlContaRengi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtContaRengi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
            </tr>

            <tr runat="server" id="guard2">
                <th>Taç Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlTacTipi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtTacTipi" runat="server" Visible="false"></telerik:RadTextBox>
                </td>
                <th>Pervaz Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlPervazTipi" runat="server"></telerik:RadDropDownList>
                    <telerik:RadTextBox ID="txtPervazTipi" runat="server" Visible="false"></telerik:RadTextBox>
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
                    <telerik:RadDropDownList ID="txtBaba" runat="server" SelectedText="Seçiniz">
                        <Items>
                            <telerik:DropDownListItem runat="server" Selected="True" Text="Seçiniz" />
                            <telerik:DropDownListItem runat="server" Text="Var" />
                            <telerik:DropDownListItem runat="server" Text="Yok" />
                        </Items>
                    </telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Kapı No :</th>
                <td>
                    <telerik:RadTextBox ID="txtKapiNo" runat="server"></telerik:RadTextBox>
                </td>
                <th>Dürbün :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlDurbun" runat="server">
                        <Items>
                            <telerik:DropDownListItem runat="server" Selected="True" Text="Seçiniz" />
                            <telerik:DropDownListItem runat="server" Text="Var" />
                            <telerik:DropDownListItem runat="server" Text="Yok" />
                        </Items>
                    </telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Barel Tipi :</th>
                <td>
                    <telerik:RadTextBox ID="txtBarelTipi" runat="server"></telerik:RadTextBox>
                </td>
                <th>Taktak :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlTaktak" runat="server">
                        <Items>
                            <telerik:DropDownListItem runat="server" Selected="True" Text="Seçiniz" />
                            <telerik:DropDownListItem runat="server" Text="Var" />
                            <telerik:DropDownListItem runat="server" Text="Yok" />
                        </Items>
                    </telerik:RadDropDownList>
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
                            <th style="width: 20%">Ölçüm Bilgileri : </th>
                            <td>
                                <telerik:RadTextBox ID="txtOlcumBilgileri" runat="server" Width="400px" TextMode="MultiLine"></telerik:RadTextBox>
                            </td>

                        </tr>
                        <tr>
                            <th style="width: 20%">Ölçümü Alan Kişi : </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlOlcumAlan" runat="server"></telerik:RadDropDownList>
                                <telerik:RadTextBox ID="txtOlcumAlan" runat="server" Visible="false"></telerik:RadTextBox>
                            </td>

                        </tr>

                        <tr>
                            <th>Montaj Şekli </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMontajSekli" runat="server"></telerik:RadDropDownList>
                                <telerik:RadTextBox ID="txtMontajSekli" runat="server" Visible="false"></telerik:RadTextBox>

                            </td>

                        </tr>
                        <tr>
                            <th>Teslim Şekli </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlTeslimSekli" runat="server"></telerik:RadDropDownList>
                                <telerik:RadTextBox ID="txtTeslimSekli" runat="server" Visible="false"></telerik:RadTextBox>
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
        <table class="AnaTablo">
            <tr>
                <th>
                    NOT
                </th>
            </tr>
            <tr>
                <td>
                    <telerik:RadTextBox ID="txtNot" runat="server" TextMode="MultiLine" Height="50px" Width="750px"></telerik:RadTextBox>
                </td>
            </tr>

        </table>
        <br />
        <table class="AnaTablo">
            <tr>
                <th colspan="4" style="text-align:center;font-size: large;">MÜŞTERİ SÖZLEŞMESİ </th>

            </tr>
            <tr>
                <th style="width: 20%">Adı Soyadı : </th>
                <td>
                    <telerik:RadTextBox ID="txtMusteriAdSoyad" runat="server"></telerik:RadTextBox>
                </td>
                <th colspan="2">Ödeme Şekli : </th>

            </tr>
            <tr>
                <th rowspan="2">Adresi : </th>
                <td rowspan="2">
                    <table>
                        <tr>
                            <td colspan="4">
                                <telerik:RadTextBox ID="txtMusteriAdres" runat="server" TextMode="MultiLine" Height="50px" Width="250px"></telerik:RadTextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <th>Peşinat : </th>
                <td>
                    <telerik:RadTextBox ID="txtPesinat" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th rowspan="5">Kalan Ödeme : </th>
                <td rowspan="5">
                    <telerik:RadTextBox ID="txtKalanOdeme" runat="server" TextMode="MultiLine" Height="75px"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Cep Tel : </th>
                <td>
                    <telerik:RadTextBox ID="txtMusteriCepTel" runat="server"></telerik:RadTextBox>
                </td>

            </tr>
            <tr>
                <th>Fiyat : </th>
                <td>
                    <telerik:RadTextBox ID="txtFiyat" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Vergi Dairesi : </th>
                <td>
                    <telerik:RadTextBox ID="txtVergiDairesi" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
             <tr>
                <th>Vergi Numarası : </th>
                <td>
                    <telerik:RadTextBox ID="txtVergiNumarasi" runat="server"></telerik:RadTextBox>
                </td>
            </tr>
            
            <tr>
                <td colspan="4""> 
                    <br />
                    Yukarıda yazılı olan şartlarda sipariş verdim. İhtilaf halinde Ankara Mahkemeleri yetkilidir.
                    <b>Müşteri tarafından aksi yazılı olarak Ankara Çelik Kapı'ya bildirilmedikçe kapıların ölçüleri ve
                    açılış yönleri mevcut takılı olan kapıya göre imal edilecektir.</b>    <br />  <br />
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align:center">
                    <b>MÜŞTERİ
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       SİPARİŞ ALAN YETKİLİ</b>

                </td>
                
            </tr>
            <tr><td colspan="4"> <br /> <br /> <br /> </td></tr>
        </table>
        <br />
    </div>
</asp:Content>
