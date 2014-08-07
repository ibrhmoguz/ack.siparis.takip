<%@ Page Title="" Language="C#" MasterPageFile="~/ACKMasterPage.Master" AutoEventWireup="true" CodeBehind="IsTakvimi.aspx.cs" Inherits="ACKSiparisTakip.Web.IsTakvimi" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td style="width: 30%"></td>
            <telerik:RadCalendar ID="RadCalendarIsTakvimi" runat="server">
            </telerik:RadCalendar>
            <td>
                <telerik:RadScheduler ID="RadSchedulerIsTakvimi" runat="server" SelectedDate="2012-04-16"
        DayStartTime="08:00:00" DayEndTime="18:00:00" DataKeyField="ID" DataSubjectField="Subject"
        DataStartField="Start" DataEndField="End"></telerik:RadScheduler>
            </td>
        </tr>
    </table>
</asp:Content>
