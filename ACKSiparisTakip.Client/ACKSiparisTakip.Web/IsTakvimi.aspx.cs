using System;
using System.Collections.Generic;
using System.Web.UI;
using Telerik.Web.UI;
using Telerik.Web.UI.Calendar;

namespace ACKSiparisTakip.Web
{
    public partial class IsTakvimi : System.Web.UI.Page
    {
        private List<AppointmentInfo> Appointments = new List<AppointmentInfo>();

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
            RadSchedulerIsTakvimi.SelectedView = SchedulerViewType.WeekView;
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
            DateTime start = DateTime.UtcNow.Date;
            start = start.AddHours(6);
            Appointments.Add(new AppointmentInfo("Take the car to the service", start, start.AddHours(1), string.Empty, null, new Reminder(30).ToString(), 1));
            Appointments.Add(new AppointmentInfo("Meeting with Alex", start.AddHours(2), start.AddHours(3), string.Empty, null, string.Empty, 2));

            start = start.AddDays(-1);
            DateTime dayStart = RadSchedulerIsTakvimi.UtcDayStart(start);
            Appointments.Add(new AppointmentInfo("Bob's Birthday", dayStart, dayStart.AddDays(1), string.Empty, null, string.Empty, 1));
            Appointments.Add(new AppointmentInfo("Call Charlie about the Project", start.AddHours(2), start.AddHours(3), string.Empty, null, string.Empty, 2));

            start = start.AddDays(2);
            Appointments.Add(new AppointmentInfo("Get the car from the service", start.AddHours(2), start.AddHours(3), string.Empty, null, string.Empty, 1));
        }
    }

    public class AppointmentInfo
    {

        private readonly string _id;
        private string _subject;
        private DateTime _start;
        private DateTime _end;
        private string _recurrenceRule;
        private string _recurrenceParentId;
        private string _reminder;
        private int? _userID;

        public string ID
        {
            get
            {
                return _id;
            }
        }

        public string Subject
        {
            get
            {
                return _subject;
            }
            set
            {
                _subject = value;
            }
        }

        public DateTime Start
        {
            get
            {
                return _start;
            }
            set
            {
                _start = value;
            }
        }

        public DateTime End
        {
            get
            {
                return _end;
            }
            set
            {
                _end = value;
            }
        }

        public string RecurrenceRule
        {
            get
            {
                return _recurrenceRule;
            }
            set
            {
                _recurrenceRule = value;
            }
        }

        public string RecurrenceParentID
        {
            get
            {
                return _recurrenceParentId;
            }
            set
            {
                _recurrenceParentId = value;
            }
        }

        public int? UserID
        {
            get
            {
                return _userID;
            }
            set
            {
                _userID = value;
            }

        }



        public string Reminder
        {
            get
            {
                return _reminder;
            }
            set
            {
                _reminder = value;
            }
        }

        private AppointmentInfo()
        {
            _id = Guid.NewGuid().ToString();
        }

        public AppointmentInfo(string subject, DateTime start, DateTime end, string recurrenceRule, string recurrenceParentID, string reminder, int? userID)
            : this()
        {
            _subject = subject;
            _start = start;
            _end = end;
            _recurrenceRule = recurrenceRule;
            _recurrenceParentId = recurrenceParentID;
            _reminder = reminder;
            _userID = userID;
        }

        public AppointmentInfo(Appointment source)
            : this()
        {
            CopyInfo(source);
        }

        public void CopyInfo(Appointment source)
        {

            Subject = source.Subject;
            Start = source.Start;
            End = source.End;
            RecurrenceRule = source.RecurrenceRule;

            if (source.RecurrenceParentID != null)
            {
                RecurrenceParentID = source.RecurrenceParentID.ToString();
            }

            if (!String.IsNullOrEmpty(Reminder))
            {
                Reminder = source.Reminders[0].ToString();
            }

            Resource user = source.Resources.GetResourceByType("User");

            if (user != null)
            {
                UserID = (int?)user.Key;
            }
            else
            {
                UserID = null;
            }
        }
    }
}