using ACKSiparisTakip.Business.ACKBusiness;
using ACKSiparisTakip.Web.Helper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
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
                if (Session["Takvim_Appointments"] != null)
                    return Session["Takvim_Appointments"] as List<Appointment>;
                else
                    return null;
            }
            set
            {
                Session["Takvim_Appointments"] = value;
            }
        }

        private DataTable MontajListesi
        {
            get
            {
                if (Session["Takvim_MontajListesi"] != null)
                    return Session["Takvim_MontajListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["Takvim_MontajListesi"] = value;
            }
        }

        private DataTable PersonelListesi
        {
            get
            {
                if (Session["Takvim_PersonelListesi"] != null)
                    return Session["Takvim_PersonelListesi"] as DataTable;
                else
                    return null;
            }
            set
            {
                Session["Takvim_PersonelListesi"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                TakvimVarsayilanAyarlari();
                HaftaMontajlariniYukle();
                IsleriTakvimeYukle();
                PersonelListesiYukle();
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
            RadSchedulerIsTakvimi.Rebind();
            IsleriTakvimeYukle();
        }

        private void IsleriTakvimeYukle()
        {
            MontajlariAppointmenteCevir();
            RadSchedulerIsTakvimi.DataSource = this.Appointments;
        }

        private void HaftaMontajlariniYukle()
        {
            DateTime dtBaslangic = HaftaBaslangicGunu();
            DateTime dtBitis = HaftaBitisGunu(dtBaslangic);
            MontajlariListele(dtBaslangic, dtBitis);
        }

        private void MontajlariListele(DateTime dtBaslangic, DateTime dtBitis)
        {
            this.MontajListesi = new MontajBS().MontajlariListele(dtBaslangic, dtBitis);
        }

        public DateTime HaftaBaslangicGunu()
        {
            DateTime dtStart = RadSchedulerIsTakvimi.SelectedDate;
            int margin = 0;
            if (dtStart.Day % 7 == 0)
                margin = 7;
            else
                margin = dtStart.Day % 7;
            DateTime dt = dtStart.Subtract(TimeSpan.FromDays(margin - 1));
            return new DateTime(dt.Year, dt.Month, dt.Day, 0, 0, 0, 0);
        }

        public DateTime HaftaBitisGunu(DateTime dtStart)
        {
            DateTime dt = dtStart.AddDays(6);
            return new DateTime(dt.Year, dt.Month, dt.Day, 23, 59, 59, 999);
        }

        private void MontajlariAppointmenteCevir()
        {
            DataTable dtMontajlar = this.MontajListesi;
            if (dtMontajlar == null)
                return;

            List<Appointment> appointmentList = new List<Appointment>();

            for (int i = 0; i < dtMontajlar.Rows.Count; i++)
            {
                DataRow row = dtMontajlar.Rows[i];
                if (row == null)
                    continue;

                int montajID = Convert.ToInt32(row[0]);
                string siparisNo = row["SIPARISNO"].ToString();
                DateTime montajTarihi = Convert.ToDateTime(row["TESLIMTARIH"]);
                Appointment app = new Appointment(montajID, montajTarihi, montajTarihi.AddHours(2), siparisNo);
                appointmentList.Add(app);
            }

            this.Appointments = appointmentList;
        }

        private void PersonelListesiYukle()
        {
            this.PersonelListesi = new PersonelBS().PersonelListesiGetir();
        }

        protected void RadSchedulerIsTakvimi_AppointmentCommand(object sender, AppointmentCommandEventArgs e)
        {
            if (e.CommandName == "IsKaydet")
            {
                RadListBox lstBoxPersonelListesi = (RadListBox)e.Container.FindControl("ListBoxMontajEkibi");
                List<string> personelListesi = new List<string>();
                foreach (RadListBoxItem item in lstBoxPersonelListesi.Items)
                {
                    if (item.Checked)
                        personelListesi.Add(item.Value);
                }
                Label lblMontajID = (Label)e.Container.FindControl("LabelEditMontajID");
                RadDateTimePicker dtTeslimTarihi = (RadDateTimePicker)e.Container.FindControl("DateTimePickerMontajTarihSaat");
                CheckBox chcMontajDurumu = (CheckBox)e.Container.FindControl("chcBoxMontajDurumu");

                string montajDurumu = chcMontajDurumu.Checked == true ? "K" : "A";
                bool status = new MontajBS().MontajGuncelle(lblMontajID.Text, dtTeslimTarihi.SelectedDate.Value, personelListesi, montajDurumu);
                if (status)
                {
                    MessageBox.Basari(this, "Montaj bilgisi güncellendi.");
                    RadSchedulerIsTakvimi.Rebind();
                    HaftaMontajlariniYukle();
                    IsleriTakvimeYukle();
                }
                else
                {
                    MessageBox.Hata(this, "Montaj güncelleme işleminde hata oluştu!");
                }
            }
            else if (e.CommandName == "IsIptal")
            {
                RadSchedulerIsTakvimi.Rebind();
            }
        }

        protected void RadSchedulerIsTakvimi_AppointmentCreated(object sender, AppointmentCreatedEventArgs e)
        {
            LinkButton linkSiparisNo = (LinkButton)e.Container.FindControl("LabelAppointmentSiparisNo");
            Label lblAdres = (Label)e.Container.FindControl("LabelAppointmentAdres");
            Label lblMontajEkibi = (Label)e.Container.FindControl("LabelAppointmentMontajEkibi");
            Label lblMusteriAdSoyad = (Label)e.Container.FindControl("LabelAppointmentMusteriAdSoyad");
            Label lblAdresIlIlce = (Label)e.Container.FindControl("LabelAppointmentAdresIlIlce");
            Label lblTelefon = (Label)e.Container.FindControl("LabelAppointmentTelefon");
            Label lblMontajDurum = (Label)e.Container.FindControl("LableMontajDurum");


            RadScheduler scheduler = sender as RadScheduler;

            switch (scheduler.SelectedView)
            {
                case SchedulerViewType.DayView:
                    lblMontajEkibi.Visible = true;
                    lblAdres.Visible = true;
                    lblMusteriAdSoyad.Visible = true;
                    lblTelefon.Visible = true;
                    lblAdresIlIlce.Visible = true;
                    break;
                case SchedulerViewType.WeekView:
                    lblMontajEkibi.Visible = true;
                    lblAdres.Visible = true;
                    lblMusteriAdSoyad.Visible = true;
                    lblTelefon.Visible = true;
                    lblAdresIlIlce.Visible = true;
                    break;
                case SchedulerViewType.MonthView:
                    lblMontajEkibi.Visible = false;
                    lblAdres.Visible = false;
                    lblMusteriAdSoyad.Visible = false;
                    lblTelefon.Visible = false;
                    lblAdresIlIlce.Visible = false;
                    break;
                case SchedulerViewType.TimelineView:
                    lblMontajEkibi.Visible = false;
                    lblAdres.Visible = false;
                    lblMusteriAdSoyad.Visible = false;
                    lblTelefon.Visible = false;
                    lblAdresIlIlce.Visible = false;
                    break;
                default:
                    break;
            }

            DataTable dtMontajlar = this.MontajListesi;
            if (dtMontajlar == null)
                return;

            DataRow[] rows = dtMontajlar.Select("ID=" + e.Appointment.ID);
            if (rows.Length == 0)
                return;
            DataRow row = rows[0];
            lblAdres.Text = (row["ADRES"] != DBNull.Value) ? row["ADRES"].ToString() : String.Empty;
            lblMontajEkibi.Text = (row["PERSONEL"] != DBNull.Value) ? row["PERSONEL"].ToString() : String.Empty;
            lblMusteriAdSoyad.Text = (row["MUSTERI"] != DBNull.Value) ? row["MUSTERI"].ToString() : String.Empty;
            lblAdresIlIlce.Text = (row["ILILCE"] != DBNull.Value) ? row["ILILCE"].ToString() : String.Empty;
            lblTelefon.Text = (row["TEL"] != DBNull.Value) ? row["TEL"].ToString() : String.Empty;
            string siparisNo = (row["SIPARISNO"] != DBNull.Value) ? row["SIPARISNO"].ToString() : String.Empty;
            linkSiparisNo.PostBackUrl = "SiparisFormGoruntule.aspx?SiparisNo=" + siparisNo;

            if (row["DURUM"].ToString() == "A")
                lblMontajDurum.BackColor = Color.Red;
            else
                lblMontajDurum.BackColor = Color.Blue;
        }

        protected void RadSchedulerIsTakvimi_FormCreated(object sender, SchedulerFormCreatedEventArgs e)
        {
            DataTable dtMontajlar = this.MontajListesi;
            if (dtMontajlar == null)
                return;

            RadScheduler scheduler = (RadScheduler)sender;

            if (e.Container.Mode == SchedulerFormMode.AdvancedEdit)
            {
                Label lblSiparisNo = (Label)e.Container.FindControl("LabelEditSiparisNo");
                Label lblMontajID = (Label)e.Container.FindControl("LabelEditMontajID");
                Label lblAdres = (Label)e.Container.FindControl("LabelEditAdres");
                Label lblMusteriAdSoyad = (Label)e.Container.FindControl("LabelEditMusteriAdSoyad");
                Label lblTelefon = (Label)e.Container.FindControl("LabelEditTelefon");
                RadDateTimePicker dtTeslimTarihi = (RadDateTimePicker)e.Container.FindControl("DateTimePickerMontajTarihSaat");
                RadListBox lstBoxPersonelListesi = (RadListBox)e.Container.FindControl("ListBoxMontajEkibi");
                CheckBox chcMontajDurumu = (CheckBox)e.Container.FindControl("chcBoxMontajDurumu");

                DataRow[] rows = dtMontajlar.Select("ID=" + e.Appointment.ID);
                if (rows.Length == 0)
                    return;
                DataRow row = rows[0];
                string ilIlce = (row["ILILCE"] != DBNull.Value) ? row["ILILCE"].ToString() : String.Empty;
                string adres = (row["ADRES"] != DBNull.Value) ? row["ADRES"].ToString() : String.Empty;

                lblAdres.Text = adres + " " + ilIlce;
                lblMontajID.Text = (row["ID"] != DBNull.Value) ? row["ID"].ToString() : String.Empty;
                lblSiparisNo.Text = (row["SIPARISNO"] != DBNull.Value) ? row["SIPARISNO"].ToString() : String.Empty;
                lblMusteriAdSoyad.Text = (row["MUSTERI"] != DBNull.Value) ? row["MUSTERI"].ToString() : String.Empty;
                lblTelefon.Text = (row["TEL"] != DBNull.Value) ? row["TEL"].ToString() : String.Empty;
                chcMontajDurumu.Checked = (row["DURUM"].ToString() == "K") ? true : false;
                if (row["TESLIMTARIH"] != DBNull.Value)
                    dtTeslimTarihi.SelectedDate = Convert.ToDateTime(row["TESLIMTARIH"]);

                lstBoxPersonelListesi.DataSource = this.PersonelListesi;
                lstBoxPersonelListesi.DataBind();

                if (row["PERSONELID"] != DBNull.Value)
                {
                    string[] personeller = row["PERSONELID"].ToString().Split(new char[] { ',' });
                    foreach (var item in personeller)
                    {
                        RadListBoxItem listItem = lstBoxPersonelListesi.FindItemByValue(item);
                        if (listItem != null)
                            listItem.Checked = true;
                    }
                }

            }
        }

        protected void RadSchedulerIsTakvimi_NavigationCommand(object sender, SchedulerNavigationCommandEventArgs e)
        {
            if (e.Command == SchedulerNavigationCommand.SwitchToMonthView)
            {
                int ayGunSayisi = DateTime.DaysInMonth(DateTime.Now.Year, DateTime.Now.Month);
                DateTime dtBaslangic = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
                DateTime dtBitis = dtBaslangic.AddDays(ayGunSayisi-1);

                MontajlariListele(dtBaslangic, dtBitis);
                IsleriTakvimeYukle();
            }
        }
    }
}