<%@ Page Title="" Language="C#" MasterPageFile="~/Print/PrinterFriendly.Master" AutoEventWireup="true" CodeBehind="Print.aspx.cs" Inherits="ACKSiparisTakip.Web.Print.Print" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div id="divSiparisForm" runat="server" style="width: 100%" class="RadGrid_Current_Theme">
        <table class="normalTablo" style="width: 100%">
            <tr>
                <td rowspan="6" style="width: 90px; text-align: center; padding: 5px 5px 5px 5px">
                    <telerik:RadBinaryImage ID="imgLogo" runat="server" ImageUrl="~/App_Themes/Theme/Raster/ackLogo.PNG" Width="90" Height="90" />
                </td>
                <td colspan="2" rowspan="3" style="font-size: x-large; text-align: center; vertical-align: middle">
                    <b>
                        <asp:Label ID="lblKapiTur" runat="server"></asp:Label>
                    </b>
                </td>
                <td style="width: 26%; text-align: left; vertical-align: middle">
                    <b>Ankara Çelik Kapı San. Tic. Ltd. Şti. </b>
                </td>
            </tr>
            <tr>

                <td style="font-size: smaller; text-align: left; vertical-align: middle">
                    <b>Adres: </b>Alınteri Bulvarı No:212 Ostim/ANKARA
                </td>
            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left; vertical-align: middle">
                    <b>Telefon: </b>(0 312) 385 37 83 - 84
                </td>

            </tr>
            <tr>
                <td colspan="2" rowspan="3" style="font-size: x-large; text-align: center; vertical-align: middle">
                    <b>SİPARİŞ FORMU</b>
                </td>
                <td style="font-size: smaller; text-align: left; vertical-align: middle">
                    <b>Faks : </b>(0 312) 354 61 81
                </td>

            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left; vertical-align: middle">
                    <b>Web : </b>www.ankaracelikkapi.com.tr
                </td>

            </tr>
            <tr>
                <td style="font-size: smaller; text-align: left; vertical-align: middle">
                    <b>e-posta : </b>ankara@celikkapi.net
                </td>

            </tr>
        </table>
        <br />
        <table class="boldTablo" style="width: 100%">
            <tr>
                <td style="width: 15%; font-weight: bold">Ölçü Tarihi ve Saati :   </td>
                <td style="width: 30%">
                    <asp:Label ID="lblOlcuTarihSaat" runat="server"></asp:Label>
                </td>
                <td style="width: 15%; font-weight: bold">Sipariş Tarihi :  </td>
                <td>
                    <asp:Label ID="lblSiparisTarih" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Bayi Adı : </td>
                <td>
                    <asp:Label ID="lblBayiAdi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Sipariş No : </td>
                <td>
                    <asp:Label ID="lblSiparisNo" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="boldTablo" style="width: 100%">
            <tr>
                <th colspan="4">MÜŞTERİ/FİRMA BİLGİLERİ </th>
            </tr>
            <tr>
                <td style="width: 19%; font-weight: bold">Firma Adı:
                </td>
                <td>
                    <asp:Label ID="lblFirmaAdi" runat="server"></asp:Label>
                </td>
                <td colspan="2"></td>
            </tr>
            <tr>
                <td style="font-weight: bold">Adı : </td>
                <td style="width: 45%">
                    <asp:Label ID="lblAd" runat="server"></asp:Label>
                </td>
                <td style="width: 20%; font-weight: bold">Soyadı </td>
                <td>
                    <asp:Label ID="lblSoyad" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold" rowspan="3">Adresi : </td>
                <td rowspan="3">
                    <table>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="lblAdres" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="font-weight: bold">Ev Tel : </td>
                <td>
                    <asp:Label ID="lblEvTel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">iş Tel : </td>
                <td>
                    <asp:Label ID="lblIsTel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Cep Tel : </td>
                <td>
                    <asp:Label ID="lblCepTel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th colspan="4">KAPI BİLGİLERİ </th>
            </tr>
            <tr>
                <td style="font-weight: bold">İç Kapı Modeli :</td>
                <td>
                    <asp:Label ID="lblIcKapiModeli" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Dış Kapı Modeli :</td>
                <td>
                    <asp:Label ID="lblDisKapiModeli" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">İç Kapı Rengi :</td>
                <td>
                    <asp:Label ID="lblIcKapiRengi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Dış Kapı Rengi :</td>
                <td>
                    <asp:Label ID="lblDisKapiRengi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Kilit Sistemi :</td>
                <td>
                    <asp:Label ID="lblKilitSistemi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Çıta :</td>
                <td>
                    <asp:Label ID="lblCita" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Eşik :</td>
                <td>
                    <asp:Label ID="lblEsik" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Aksesuar Rengi :</td>
                <td>
                    <asp:Label ID="lblAksesuarRengi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr runat="server" id="trGuard1" visible="false">
                <td style="font-weight: bold">Aluminyum Rengi :</td>
                <td>
                    <asp:Label ID="lblAluminyumRengi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Conta Rengi :</td>
                <td colspan="3">
                    <asp:Label ID="lblContaRengi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr runat="server" id="trGuard2" visible="false">
                <td style="font-weight: bold">Taç Tipi :</td>
                <td>
                    <asp:Label ID="lblTacTipi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Pervaz Tipi :</td>
                <td>
                    <asp:Label ID="lblPervazTipi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th colspan="4">AKSESUARLAR</th>
            </tr>
            <tr>
                <td style="font-weight: bold">Çekme Kolu :</td>
                <td>
                    <asp:Label ID="lblCekmeKolu" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Baba :</td>
                <td>
                    <asp:Label ID="lblBaba" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Kapı No :</td>
                <td>
                    <asp:Label ID="lblKapiNo" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Dürbün :</td>
                <td>
                    <asp:Label ID="lblDurbun" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Barel Tipi :</td>
                <td>
                    <asp:Label ID="lblBarelTipi" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Taktak :</td>
                <td>
                    <asp:Label ID="lblTaktak" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Kayıt Yapmayan Kamera :</td>
                <td>
                    <asp:Label ID="lblKayitsizKam" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Kayıt Fonksiyonlu Kamera :</td>
                <td>
                    <asp:Label ID="lblKayitYapanKam" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Desi Uzaktan Kumandalı Alarm :</td>
                <td>
                    <asp:Label ID="lblAlarm" runat="server"></asp:Label>
                </td>
                <td style="font-weight: bold">Otomatik Kilit Karşılığı :</td>
                <td>
                    <asp:Label ID="lblOtoKilit" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Montajda Takılacaklar</td>
                <td colspan="3">
                    <asp:Label ID="lblMontajdaTakilacaklar" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <th colspan="4">ÖLÇÜM ve MONTAJ</th>
            </tr>
            <tr>
                <td style="width: 15%; font-weight: bold">Ölçüm Bilgileri : </td>
                <td colspan="3">
                    <asp:Label ID="lblOlcumBilgileri" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Ölçümü Alan Kişi : </td>
                <td colspan="3">
                    <asp:Label ID="lblOlcumAlan" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Montaj Şekli </td>
                <td colspan="3">
                    <asp:Label ID="lblMontajSekli" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Teslim Şekli </td>
                <td colspan="3">
                    <asp:Label ID="lblTeslimSekli" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Teslim Tarihi</td>
                <td colspan="3">
                    <asp:Label ID="lblTeslimTarihi" runat="server"></asp:Label>
                </td>
            </tr>
            <%--<telerik:RadBinaryImage ID="rbiKapiResmi" runat="server" ImageUrl="~/App_Themes/Theme/Raster/guardKapiOrta.PNG" />--%>
            <tr>
                <th colspan="4">NOT</th>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label ID="lblNot" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        <table class="boldTablo" style="width: 100%" runat="server" id="tbMusteriSozlesme">
            <tr>
                <th colspan="6">MÜŞTERİ SÖZLEŞMESİ </th>
            </tr>
            <tr>
                <td style="width: 15%; font-weight: bold">Adı Soyadı : </td>
                <td style="width: 45%;">
                    <asp:Label ID="lblMusteriAdSoyad" runat="server"></asp:Label>
                </td>
                <td></td>
                <td style="text-align: center; width: 8%; font-weight: bold">Peşin</td>
                <td style="text-align: center; font-weight: bold">Kalan</td>
                <td style="text-align: center; font-weight: bold">Ödeme Notu</td>
            </tr>
            <tr>
                <td rowspan="2" style="font-weight: bold">Adresi : </td>
                <td rowspan="2">
                    <asp:Label ID="lblMusteriAdres" runat="server"></asp:Label>
                </td>
                <td style="width: 9%; font-weight: bold">Nakit:</td>
                <td>
                    <asp:Label ID="lblNakitPesin" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNakitKalan" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblNakitOdemeNotu" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Kredi Kartı:</td>
                <td>
                    <asp:Label ID="lblKKartiPesin" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblKKartiKalan" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblKKartiOdemeNotu" runat="server"></asp:Label>
                </td>
            </tr>

            <tr>
                <td rowspan="2" style="font-weight: bold">Cep Tel : </td>
                <td rowspan="2">
                    <asp:Label ID="lblMusteriCepTel" runat="server"></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="font-weight: bold">Çek:</td>
                <td>
                    <asp:Label ID="lblCekPesin" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCekKalan" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblCekOdemeNotu" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Fiyat : </td>
                <td colspan="5">
                    <asp:Label ID="lblFiyat" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Vergi Dairesi : </td>
                <td colspan="5">
                    <asp:Label ID="lblVergiDairesi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="font-weight: bold">Vergi Numarası : </td>
                <td colspan="5">
                    <asp:Label ID="lblVergiNumarasi" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="6">Yukarıda yazılı olan şartlarda sipariş verdim. İhtilaf halinde Ankara Mahkemeleri yetkilidir.
                    <b>Müşteri tarafından aksi yazılı olarak Ankara Çelik Kapı'ya bildirilmedikçe kapıların ölçüleri ve
                    açılış yönleri mevcut takılı olan kapıya göre imal edilecektir.</b>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="6" style="text-align: center">
                    <b>MÜŞTERİ
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       SİPARİŞ ALAN YETKİLİ</b>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <br />
                    <br />
                    <br />
                </td>
            </tr>

        </table>
    </div>
</asp:Content>
