using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web.UI.Calendar;

namespace ACKSiparisTakip.Web
{
    public partial class IsTakvimi : System.Web.UI.Page
    {
        private List<Appointment> Appointments
        {
            get
            {
                if (Session["Appointments"] != null)
                    return Session["Appointments"] as List<Appointment>;
                else
                    return null;
            }
            set
            {
                Session["Appointments"] = value;
            }
        }

        private DataTable MontajListesi
        {
            get
            {
                if (Session["MontajListesi"] != null)
                    return Session["MontajListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["MontajListesi"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TakvimVarsayilanAyarlari();
                IsleriTakvimeYukle();
            }
        }

        private void TakvimVarsayilanAyarlari()
        {
            RadCalendarIsTakvimi.SelectedDate = DateTime.Now.Date;
            RadSchedulerIsTakvimi.SelectedDate = DateTime.Now.Date;
            RadSchedulerIsTakvimi.ShowFooter = true;
        }

        protected void RadCalendarIsTakvimi_SelectionChanged(object sender, SelectedDatesEventArgs e)
        {
            RadSchedulerIsTakvimi.SelectedDate = e.SelectedDates[0].Date;
        }

        private void IsleriTakvimeYukle()
        {
            InitializeAppointments();
            RadSchedulerIsTakvimi.DataSource = this.Appointments;
        }

        private void InitializeAppointments()
        {
            List<Appointment> appointmentList = new List<Appointment>();
            DateTime start = DateTime.UtcNow.Date;

            for (int i = 0; i < 20; i++)
            {
                if (i % 2 == 0)
                {
                    Appointment app1 = new Appointment(Guid.NewGuid().ToString(), start.AddHours(3), start.AddHours(5), "SiparisNo " + (i + 1).ToString());
                    appointmentList.Add(app1);
                }
                else
                {
                    Appointment app2 = new Appointment(Guid.NewGuid().ToString(), start.AddDays(-1).AddHours(8), start.AddDays(-1).AddHours(10), "SiparisNo " + (i + 1).ToString());
                    appointmentList.Add(app2);
                }

                start = start.AddDays(1);
            }


            //DateTime start = DateTime.UtcNow.Date;
            //start = start.AddHours(6);
            //appointmentList.Add(new Appointment(Guid.NewGuid().ToString(), start, start.AddHours(1), "Take the car to the service"));
            //appointmentList.Add(new Appointment(Guid.NewGuid().ToString(), start.AddHours(2), start.AddHours(4), "Meeting with Alex"));

            //start = start.AddDays(-1);
            //DateTime dayStart = RadSchedulerIsTakvimi.UtcDayStart(start);
            //appointmentList.Add(new Appointment(Guid.NewGuid().ToString(), dayStart, dayStart.AddDays(1), "Bob's Birthday"));
            //appointmentList.Add(new Appointment(Guid.NewGuid().ToString(), start.AddHours(2), start.AddHours(3), "Call Charlie about the Project"));

            //start = start.AddDays(2);
            //appointmentList.Add(new Appointment(Guid.NewGuid().ToString(), start.AddHours(2), start.AddHours(3), "Get the car from the service"));

            this.Appointments = appointmentList;
        }

        protected void RadSchedulerIsTakvimi_AppointmentCommand(object sender, AppointmentCommandEventArgs e)
        {
            if (e.CommandName == "IsKaydet")
            {

            }
            else if (e.CommandName == "IsIptal")
            {
                RadSchedulerIsTakvimi.Rebind();
            }
        }

        protected void RadSchedulerIsTakvimi_AppointmentCreated(object sender, AppointmentCreatedEventArgs e)
        {
            Label lblSiparisNo = (Label)e.Container.FindControl("LabelSiparisNo");
            Label lblAdres = (Label)e.Container.FindControl("LabelAdres");
            Label lblMontajEkibi = (Label)e.Container.FindControl("LabelMontajEkibi");

            RadScheduler scheduler = sender as RadScheduler;

            switch (scheduler.SelectedView)
            {
                case SchedulerViewType.DayView:
                    lblSiparisNo.Visible = true;
                    lblMontajEkibi.Visible = true;
                    lblAdres.Visible = true;
                    break;
                case SchedulerViewType.WeekView:
                    lblSiparisNo.Visible = true;
                    lblMontajEkibi.Visible = true;
                    lblAdres.Visible = true;
                    break;
                case SchedulerViewType.MonthView:
                    lblSiparisNo.Visible = true;
                    lblMontajEkibi.Visible = false;
                    lblAdres.Visible = false;
                    break;
                case SchedulerViewType.TimelineView:
                    lblSiparisNo.Visible = true;
                    lblMontajEkibi.Visible = false;
                    lblAdres.Visible = false;
                    break;
                default:
                    break;
            }
        }
    }
}