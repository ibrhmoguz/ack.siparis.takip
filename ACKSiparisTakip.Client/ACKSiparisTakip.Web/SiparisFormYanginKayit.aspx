﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="SiparisFormYanginKayit.aspx.cs" Inherits="ACKSiparisTakip.Web.SiparisFormYanginKayit" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="divSiparisForm" runat="server" style="width: 100%" class="RadGrid_Current_Theme">
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>
                <td rowspan="6" style="text-align: center">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" />
                </td>
                <td colspan="2" rowspan="6" style="width: 45%; font-size: x-large; text-align: center;">

                    <b>SİPARİŞ FORMU</b>
                </td>
                <td style="width: 30%; text-align: left">
                    <b>ANKARA ÇELİK KAPI SAN. TİC. LTD. ŞTİ. </b>
                </td>
            </tr>
            <tr>

                <td style="font-size: xx-small; text-align: left">
                    <b>Adres: </b>Alınteri Bulvarı No:212 Ostim/ANKARA
                </td>
            </tr>
            <tr>
                <td style="font-size: xx-small; text-align: left">
                    <b>Telefon: </b>(0 312) 385 37 83 - 84
                </td>

            </tr>
            <tr>
               
                <td style="font-size: xx-small; text-align: left">
                    <b>Faks : </b>(0 312) 354 61 81
                </td>

            </tr>
            <tr>
                <td style="font-size: xx-small; text-align: left">
                    <b>Web : </b>www.ankaracelikkapi.com.tr
                </td>

            </tr>
            <tr>
                <td style="font-size: xx-small; text-align: left">
                    <b>e-posta : </b>ankara@celikkapi.net
                </td>

            </tr>

        </table>
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>
                <th style="width: 15%">Ölçü Tarihi ve Saati :   </th>
                <td style="width: 35%">
                    <telerik:RadDateTimePicker ID="rdtOlcuTarihSaat" runat="server" Width="200px"></telerik:RadDateTimePicker>
                </td>
                <th style="width: 10%">Sipariş Tarihi :  </th>
                <td>
                    <telerik:RadDatePicker ID="rdtOlcuSiparisTarih" runat="server"></telerik:RadDatePicker>
                </td>
            </tr>
            <tr>
                <th>Bayi Adı : </th>
                <td>
                    <telerik:RadTextBox ID="txtBayiAdi" runat="server" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
                <th>Sipariş No : </th>
                <td>
                    <telerik:RadTextBox ID="txtSiparisNo" runat="server" Enabled="False" Text="Sistem Tarafından Verilir" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
            </tr>
        </table>
        <br />

        <table class="AnaTablo" style="width: 100%">
            <tr>
                <th colspan="4">MÜŞTERİ/FİRMA BİLGİLERİ </th>
            </tr>
            <tr>
                <th style="width: 15%">Firma Adı:
                </th>
                <td style="width: 35%">
                    <telerik:RadTextBox ID="txtFirmaAdi" runat="server" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
                <th style="width: 10%">Sipariş Adedi: </th>
                <td>
                    <telerik:RadTextBox ID="txtSiparisAdedi" runat="server" Text="1" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Adı : </th>
                <td>
                    <telerik:RadTextBox ID="txtAd" runat="server" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
                <th style="width: 10%">Soyadı </th>
                <td>
                    <telerik:RadTextBox ID="txtSoyad" runat="server" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th rowspan="3">Adresi : </th>
                <td rowspan="3">
                    <table style="width: 100%">
                        <tr>
                            <td colspan="2">
                                <telerik:RadTextBox ID="txtAdres" runat="server" TextMode="MultiLine" Height="50px" Width="250px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>İl :</th>
                            <td>
                                <telerik:RadComboBox ID="ddlMusteriIl" runat="server" AutoPostBack="true" EmptyMessage="İl Seçiniz" Skin="Telerik" OnSelectedIndexChanged="ddlMusteriIl_SelectedIndexChanged">
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <th>İlçe :</th>
                            <td>
                                <telerik:RadComboBox ID="ddlMusteriIlce" runat="server" AutoPostBack="True" EmptyMessage="İlçe Seçiniz" RenderMode="Lightweight" OnSelectedIndexChanged="ddlMusteriIlce_SelectedIndexChanged">
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Semt :</th>
                            <td>
                                <telerik:RadComboBox ID="ddlMusteriSemt" runat="server" AutoPostBack="false" EmptyMessage="Semt Seçiniz" RenderMode="Lightweight">
                                </telerik:RadComboBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <th>Ev Tel : </th>
                <td>
                    <telerik:RadMaskedTextBox ID="txtEvTel" runat="server" Mask="(###) ### ## ##" RenderMode="Lightweight"></telerik:RadMaskedTextBox>
                </td>
            </tr>
            <tr>
                <th>iş Tel : </th>
                <td>
                    <telerik:RadMaskedTextBox ID="txtIsTel" runat="server" Mask="(###) ### ## ##" RenderMode="Lightweight"></telerik:RadMaskedTextBox>
                </td>
            </tr>
            <tr>
                <th>Cep Tel : </th>
                <td>
                    <telerik:RadMaskedTextBox ID="txtCepTel" runat="server" Mask="(###) ### ## ##" RenderMode="Lightweight"></telerik:RadMaskedTextBox>
                </td>
            </tr>
        </table>
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>

                <th style="width: 15%">Dış Kapı Modeli :</th>
                <td style="width: 35%">
                    <telerik:RadDropDownList ID="ddlDisKapiModeli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Kapı Cinsi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginKapiCins" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                
            </tr>
            <tr>
                <th style="width: 10%">İç Kapı Modeli :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlIcKapiModeli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
               
                <th>Kasa Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginKasaTipi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Metal Rengi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginMetalRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Eşik :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlEsik" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                
            </tr>
            <tr>
                <th>Kilit Sistemi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlKilitSistemi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th >Çekme Kolu :</th>
                <td >
                    <telerik:RadDropDownList ID="ddlCekmeKolu" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr id="trYangin1" runat="server" visible="false">
                <th>Panik Bar :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginPanikBar" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Kol ve Dış Müdahale Kolu :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginKol" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr id="trYangin2" runat="server" visible="false">
                <th>Menteşe Tipi :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginMenteseTip" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Hidrolik Kapatıcı :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlYanginHidrolikKapatici" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
            </tr>
             <tr id="trPorte1" runat="server" visible="false">
                <th>Cumba :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlCumba" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Dürbün :</th>
                <td>
                   <telerik:RadDropDownList ID="ddlDurbun" runat="server" RenderMode="Lightweight">
                        <Items>
                            <telerik:DropDownListItem runat="server" Selected="True" Text="Seçiniz" />
                            <telerik:DropDownListItem runat="server" Text="Var" />
                            <telerik:DropDownListItem runat="server" Text="Yok" />
                        </Items>
                    </telerik:RadDropDownList>
                </td>
            </tr>
            <tr id="trPorte2" runat="server" visible="false">
                <th>Barel :</th>
                <td>
                     <telerik:RadDropDownList ID="ddlBarelTipi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
                <th>Taktak :</th>
                <td>
                    <telerik:RadDropDownList ID="ddlTaktak" runat="server" RenderMode="Lightweight">
                        <Items>
                            <telerik:DropDownListItem runat="server" Selected="True" Text="Seçiniz" />
                            <telerik:DropDownListItem runat="server" Text="Var" />
                            <telerik:DropDownListItem runat="server" Text="Yok" />
                        </Items>
                    </telerik:RadDropDownList>
                </td>
            </tr>
                        
        </table>
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>
                <td rowspan="6" colspan="2" style="width: 20%">
                    <telerik:RadBinaryImage ID="RadBinaryImage1" runat="server" ImageUrl="~/App_Themes/Theme/Raster/olcu3.png" />
                </td>
                <th colspan="2" style="text-align: center">ÖLÇÜM ve MONTAJ</th>
            </tr>
            <tr>
                <th style="width: 8%">Üretim Notları: </th>
                <td>
                    <telerik:RadTextBox ID="txtOlcumBilgileri" runat="server" Width="400px" TextMode="MultiLine" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
            </tr>
            <tr>
                <th>Ölçümü Alan Kişi : </th>
                <td>
                    <telerik:RadDropDownList ID="ddlOlcumAlan" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>

            </tr>
            <tr>
                <th>Montaj Şekli </th>
                <td>
                    <telerik:RadDropDownList ID="ddlMontajSekli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>

            </tr>
            <tr>
                <th>Teslim Şekli </th>
                <td>
                    <telerik:RadDropDownList ID="ddlTeslimSekli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                </td>
            </tr>
            <tr>
                <th>Teslim Tarihi</th>
                <td>
                    <telerik:RadDatePicker ID="rdpTeslimTarihi" runat="server" RenderMode="Lightweight"></telerik:RadDatePicker>
                </td>
            </tr>

             
        </table>
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>
                <th>NOT
                </th>
            </tr>
            <tr>
                <td>
                    <telerik:RadTextBox ID="txtNot" runat="server" TextMode="MultiLine" Height="50px" Width="100%" RenderMode="Lightweight"></telerik:RadTextBox>
                </td>
            </tr>
        </table>
        <br />
        <table runat="server" id="tbIleri" style="width: 100%">
            <tr>
                <td style="text-align: right">
                    <telerik:RadButton ID="btnIleri" runat="server" Text="Müşteri Sözleşmesi İçin Tıklayınız" OnClick="btnIleri_Click">
                        <Icon PrimaryIconCssClass="rbNext" PrimaryIconLeft="4" PrimaryIconTop="3" />
                    </telerik:RadButton>
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <table class="AnaTablo" runat="server" id="tbMusteriSozlesme" visible="false" style="width: 100%">
            <tr>
                <th colspan="2" style="text-align: center; font-size: large;">MÜŞTERİ SÖZLEŞMESİ </th>
            </tr>
            <tr>
                <td style="width: 45%">
                    <table>
                        <tr>
                            <th style="width: 15%">Adı Soyadı : </th>
                            <td style="width: 35%">
                                <telerik:RadTextBox ID="txtMusteriAdSoyad" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Adresi : </th>
                            <td>
                                <telerik:RadTextBox ID="txtMusteriAdres" runat="server" TextMode="MultiLine" Height="50px" Width="300px" Enabled="False" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Cep Tel : </th>
                            <td>
                                <telerik:RadTextBox ID="txtMusteriCepTel" runat="server" Enabled="False" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Fiyat : </th>
                            <td>
                                <telerik:RadTextBox ID="txtFiyat" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Vergi Dairesi : </th>
                            <td>
                                <telerik:RadTextBox ID="txtVergiDairesi" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Vergi Numarası : </th>
                            <td>
                                <telerik:RadTextBox ID="txtVergiNumarasi" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="text-align: left">
                    <table>
                        <tr>
                            <td></td>
                            <th style="text-align: center">Peşin</th>
                            <th style="text-align: center">Kalan</th>
                            <th style="text-align: center">Ödeme Notu</th>
                        </tr>
                        <tr>
                            <th>Nakit:</th>
                            <td>
                                <telerik:RadNumericTextBox ID="txtNakitPesin" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency">
                                </telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtNakitKalan" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadTextBox ID="txtNakitOdemeNotu" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Kredi Kartı:</th>
                            <td>
                                <telerik:RadNumericTextBox ID="txtKKartiPesin" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtKKartiKalan" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadTextBox ID="txtKKartiOdemeNotu" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>Çek:</th>
                            <td>
                                <telerik:RadNumericTextBox ID="txtCekPesin" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadNumericTextBox ID="txtCekKalan" runat="server" Width="130px" RenderMode="Lightweight" MaxLength="99999999" Type="Currency"></telerik:RadNumericTextBox>
                            </td>
                            <td>
                                <telerik:RadTextBox ID="txtCekOdemeNotu" runat="server" Width="300px" RenderMode="Lightweight"></telerik:RadTextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">Yukarıda yazılı olan şartlarda sipariş verdim. İhtilaf halinde Ankara Mahkemeleri yetkilidir.
                    <b>Müşteri tarafından aksi yazılı olarak Ankara Çelik Kapı'ya bildirilmedikçe kapıların ölçüleri ve
                    açılış yönleri mevcut takılı olan kapıya göre imal edilecektir.</b>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <b>MÜŞTERİ
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       SİPARİŞ ALAN YETKİLİ</b>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <br />
                    <telerik:RadButton ID="btnKaydet" runat="server" Text="Onayla" OnClick="btnKaydet_Click">
                        <Icon PrimaryIconCssClass="rbOk" PrimaryIconLeft="4" PrimaryIconTop="3" />
                    </telerik:RadButton>
                </td>
            </tr>
        </table>
        <br />

    </div>
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ddlMusteriIl">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ddlMusteriIlce" />
                    <telerik:AjaxUpdatedControl ControlID="ddlMusteriSemt" />
                </UpdatedControls>
            </telerik:AjaxSetting>
            <telerik:AjaxSetting AjaxControlID="ddlMusteriIlce">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ddlMusteriSemt" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />

</asp:Content>
