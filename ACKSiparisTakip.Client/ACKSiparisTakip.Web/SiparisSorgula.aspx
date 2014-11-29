<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="SiparisSorgula.aspx.cs" Inherits="ACKSiparisTakip.Web.SiparisSorgula" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="divSiparisSorgula" runat="server" style="width: 100%" class="RadGrid_Current_Theme">
        <br />
        <br />
        <table class="AnaTablo" style="width: 100%">
            <tr>
                <td style="font-size: large; text-align: center">
                    <b>SİPARİŞ SORGULAMA</b>
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <th style="width: 10%">Sipariş No: </th>
                            <td style="width: 25%">
                                <telerik:RadTextBox ID="txtSiparisNo" runat="server"></telerik:RadTextBox>
                            </td>
                            <th style="width: 10%">Sipariş Tarihi:</th>
                            <td>
                                <telerik:RadDatePicker ID="rdtSiparisTarihiBas" runat="server"></telerik:RadDatePicker>
                                <telerik:RadDatePicker ID="rdtSiparisTarihiBit" runat="server"></telerik:RadDatePicker>
                            </td>
                            <th style="width: 10%">Müşteri Ad Soyad:</th>
                            <td>
                                <telerik:RadTextBox ID="txtMusteriAdSoyad" runat="server" Width="230"></telerik:RadTextBox>
                            </td>
                        </tr>
                        <tr>
                            <th>İç Kapı Modeli :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlIcKapiModeli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Dış Kapı Modeli :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlDisKapiModeli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Montaj Ekibi</th>
                            <td rowspan="5">
                                <telerik:RadListBox ID="ListBoxMontajEkibi" runat="server" Width="230" Height="150" SelectionMode="Multiple" CheckBoxes="true" DataValueField="ID" DataTextField="AD">
                                </telerik:RadListBox>
                            </td>
                        </tr>
                        <tr>
                            <th>İç Kapı Rengi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlIcKapiRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Dış Kapı Rengi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlDisKapiRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <th>Kilit Sistemi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlKilitSistemi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Çıta :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlCita" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <th>Eşik :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlEsik" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Aksesuar Rengi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlAksesuarRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr runat="server" id="trGuard1" visible="false">
                            <th>Aluminyum Rengi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlAluminyumRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Conta Rengi :</th>
                            <td colspan="3">
                                <telerik:RadDropDownList ID="ddlContaRengi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr runat="server" id="trGuard2" visible="false">
                            <th>Taç Tipi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlTacTipi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Pervaz Tipi :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlPervazTipi" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                        </tr>
                        <tr>
                            <th>Montaj Şekli </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMontajSekli" runat="server" RenderMode="Lightweight"></telerik:RadDropDownList>
                            </td>
                            <th>Teslim Tarihi</th>
                            <td>
                                <telerik:RadDatePicker ID="rdpTeslimTarihiBas" runat="server"></telerik:RadDatePicker>
                                <telerik:RadDatePicker ID="rdpTeslimTarihiBit" runat="server"></telerik:RadDatePicker>
                            </td>
                        </tr>
                        <tr>
                            <th>İl :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMusteriIl" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlMusteriIl_SelectedIndexChanged" RenderMode="Lightweight">
                                </telerik:RadDropDownList>
                            </td>
                            <th>İlçe :</th>
                            <td>
                                <telerik:RadDropDownList ID="ddlMusteriIlce" runat="server" AutoPostBack="false" RenderMode="Lightweight">
                                    <Items>
                                        <telerik:DropDownListItem Value="0" Text="Seçiniz" Selected="true" />
                                    </Items>
                                </telerik:RadDropDownList>
                            </td>
                            <th>Sipariş Durumu : </th>
                            <td>
                                <telerik:RadDropDownList ID="ddlSiparisDurumu" runat="server">
                                    <Items>
                                        <telerik:DropDownListItem Text="Seçiniz" Value="Seçiniz" />
                                        <telerik:DropDownListItem Text="BEKLEYEN" Value="BEKLEYEN" />
                                        <telerik:DropDownListItem Text="İMALATTA" Value="İMALATTA" />
                                        <telerik:DropDownListItem Text="TAMAMLANDI" Value="TAMAMLANDI" />
                                    </Items>
                                </telerik:RadDropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <telerik:RadButton ID="btnSorgula" runat="server" Text="Sorgula" OnClick="btnSorgula_Click">
                        <Icon PrimaryIconCssClass="rbSearch" />
                    </telerik:RadButton>
                </td>
            </tr>
        </table>
        <br />

    </div>

    <asp:GridView ID="grdSiparisler" runat="server" AutoGenerateColumns="false" AllowPaging="True" PageSize="30" OnPageIndexChanging="grdSiparisler_PageIndexChanging"
        OnRowDataBound="grdSiparisler_RowDataBound" Width="100%" CssClass="AnaTablo" AlternatingRowStyle-BackColor="Wheat" HeaderStyle-CssClass="ThBaslikRenk2">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" />
            <asp:BoundField DataField="SIPARISNO" HeaderText="SİPARİŞ NO" />
            <asp:BoundField DataField="SIPARISTARIH" HeaderText="SİPARİŞ TARİHİ" />
            <asp:BoundField DataField="MONTAJTARIHI" HeaderText="MONTAJ TARİHİ" />
            <asp:BoundField DataField="MUSTERI" HeaderText="MÜŞTERİ/FİRMA" />
            <asp:BoundField DataField="MUSTERIADRES" HeaderText="MÜŞTERİ ADRES" />
            <asp:BoundField DataField="MUSTERIIL" HeaderText="İL" />
            <asp:BoundField DataField="MUSTERIILCE" HeaderText="İLÇE" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:HyperLink ID="lnkGoruntule" runat="server" Text="Siparişi Görüntüle" ForeColor="Blue" Font-Underline="true" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server" DefaultLoadingPanelID="RadAjaxLoadingPanel1">
        <AjaxSettings>
            <telerik:AjaxSetting AjaxControlID="ddlMusteriIl">
                <UpdatedControls>
                    <telerik:AjaxUpdatedControl ControlID="ddlMusteriIlce" />
                </UpdatedControls>
            </telerik:AjaxSetting>
        </AjaxSettings>
    </telerik:RadAjaxManager>
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" />
</asp:Content>
