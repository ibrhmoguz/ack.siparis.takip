using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ACKSiparisTakip.Business.ACKBusiness.DataTypes
{
    public class Musteri
    {
        public string MusteriAd { get; set; }
        public string MusteriSoyad { get; set; }
        public string MusteriAdres { get; set; }
        public string MusteriIl { get; set; }
        public string MusteriIlce { get; set; }
        public string MusteriEvTel { get; set; }
        public string MusteriIsTel { get; set; }
        public string MusteriCepTel { get; set; }
        public string MusteriSemt { get; set; }

        public Musteri()
        {
            this.MusteriAd = null;
            this.MusteriSoyad = null;
            this.MusteriAdres = null;
            this.MusteriIl = null;
            this.MusteriIlce = null;
            this.MusteriEvTel = null;
            this.MusteriIsTel = null;
            this.MusteriCepTel = null;
            this.MusteriSemt = null;
        }
    }

    public class Siparis
    {
        public string SiparisNo { get; set; }
        public DateTime? SiparisTarih { get; set; }
        public string BayiAd { get; set; }
        public string IcKapiModel { get; set; }
        public string DisKapiModel { get; set; }
        public string DisKapiRenk { get; set; }
        public string IcKapiRenk { get; set; }
        public string KilitSistem { get; set; }
        public string Cita { get; set; }
        public string Esik { get; set; }
        public string AluminyumRenk { get; set; }
        public string AksesuarRenk { get; set; }
        public string ContaRenk { get; set; }
        public string TacTip { get; set; }
        public string PervazTip { get; set; }
        public string CekmeKolu { get; set; }
        public string KapiNo { get; set; }
        public string BarelTip { get; set; }
        public string Baba { get; set; }
        public string Durbun { get; set; }
        public string Taktak { get; set; }
        public string KapiTipi { get; set; }
        public string Durum { get; set; }
        public string KayıtYapanKamera { get; set; }
        public string KayıtYapmayanKamera { get; set; }
        public string Alarm { get; set; }
        public string OtomatikKilit { get; set; }
        public string FirmaAdi { get; set; }
        public string SiparisAdedi { get; set; }
        public double? NakitPesin { get; set; }
        public double? NakitKalan { get; set; }
        public string NakitOdemeNot { get; set; }
        public double? KKartiPesin { get; set; }
        public double? KKartiKalan { get; set; }
        public string KKartiOdemeNot { get; set; }
        public double? CekPesin { get; set; }
        public double? CekKalan { get; set; }
        public string CekOdemeNot { get; set; }

        public Siparis()
        {
            this.SiparisNo = null;
            this.SiparisTarih = null;
            this.BayiAd = null;
            this.IcKapiModel = null;
            this.DisKapiModel = null;
            this.DisKapiRenk = null;
            this.IcKapiRenk = null;
            this.KilitSistem = null; this.Cita = null;
            this.Esik = null;
            this.AluminyumRenk = null;
            this.AksesuarRenk = null;
            this.ContaRenk = null;
            this.TacTip = null;
            this.PervazTip = null;
            this.CekmeKolu = null;
            this.KapiNo = null;
            this.BarelTip = null;
            this.Baba = null;
            this.Durbun = null;
            this.Taktak = null;
            this.KapiTipi = null;
            this.Durum = null;
            this.KayıtYapanKamera = null;
            this.KayıtYapmayanKamera = null;
            this.Alarm = null;
            this.OtomatikKilit = null;
            this.FirmaAdi = null;
            this.SiparisAdedi = null;
            this.NakitPesin = null;
            this.NakitKalan = null;
            this.NakitOdemeNot = null;
            this.KKartiPesin = null;
            this.KKartiKalan = null;
            this.KKartiOdemeNot = null;
            this.CekPesin = null;
            this.CekKalan = null;
            this.CekOdemeNot = null;
        }
    }

    public class Olcum
    {
        public string MontajdaTakilacak { get; set; }
        public string OlcumBilgi { get; set; }
        public DateTime? OlcumTarih { get; set; }
        public string OlcumAlanKisi { get; set; }
        public string MontajSekli { get; set; }
        public string TeslimSekli { get; set; }

        public Olcum()
        {
            this.MontajdaTakilacak = null;
            this.OlcumBilgi = null;
            this.OlcumAlanKisi = null;
            this.MontajSekli = null;
            this.TeslimSekli = null;
        }
    }

    public class Sozlesme
    {
        public string Pesinat { get; set; }
        public string KalanOdeme { get; set; }
        public string Fiyat { get; set; }
        public string VergiDairesi { get; set; }
        public string VergiNumarası { get; set; }
        public DateTime? MontajTeslimTarih { get; set; }
        public string MontajDurum { get; set; }

        public Sozlesme()
        {
            this.Pesinat = null;
            this.KalanOdeme = null;
            this.Fiyat = null;
            this.VergiDairesi = null;
            this.VergiNumarası = null;
            this.MontajTeslimTarih = null;
            this.MontajDurum = null;
        }
    }
}
