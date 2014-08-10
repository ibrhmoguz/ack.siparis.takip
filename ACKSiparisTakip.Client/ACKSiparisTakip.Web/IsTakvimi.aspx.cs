using ACKSiparisTakip.Web.Helper;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using Telerik.Web.UI.Calendar;

namespace ACKSiparisTakip.Web
{
    public partial class IsTakvimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TakvimVarsayilanAyarlari();
            }
        }

        private void TakvimVarsayilanAyarlari()
        {
            RadSchedulerIsTakvimi.SelectedDate = DateTime.Now.Date;
            RadSchedulerIsTakvimi.SelectedView = SchedulerViewType.WeekView;
            RadSchedulerIsTakvimi.FirstDayOfWeek = DayOfWeek.Monday;
            RadSchedulerIsTakvimi.ShowFooter = true;
        }

        protected void RadCalendarIsTakvimi_SelectionChanged(object sender, SelectedDatesEventArgs e)
        {
            RadSchedulerIsTakvimi.SelectedDate = e.SelectedDates[0].Date;
        }
    }
}