using System;
using System.Collections.Generic;
using System.Data;
using ACKSiparisTakip.Business.ACKBusiness.DataTypes;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using WebFrame.DataType.Common.Logging;


namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class SiparisIslemleriBS : BusinessBase
    {
        public DataSet RefTanimlariniGetir(Dictionary<string, object> prms)
        {
            DataSet ds = new DataSet();

            ds.Tables.Add(KapiModeliGetir(prms));
            ds.Tables.Add(KapiRenkGetir(prms));
            ds.Tables.Add(KilitSistemGetir(prms));
            ds.Tables.Add(CitaGetir(prms));
            ds.Tables.Add(EsikGetir(prms));
            ds.Tables.Add(AksesuarRenkGetir(prms));
            ds.Tables.Add(MontajSekliGetir(prms));
            ds.Tables.Add(TeslimSekliGetir(prms));
            ds.Tables.Add(AluminyumRenkGetir(prms));
            ds.Tables.Add(TacTipGetir(prms));
            ds.Tables.Add(PervazTipGetir(prms));
            ds.Tables.Add(ContaRenkGetir(prms));
            ds.Tables.Add(PanikBarGetir(prms));
            ds.Tables.Add(MudahaleKolGetir(prms));
            ds.Tables.Add(YanginKasaTipGetir(prms));
            ds.Tables.Add(YanginKapiCinsGetir(prms));
            ds.Tables.Add(MenteseTipGetir(prms));
            ds.Tables.Add(HidrolikKapaticiGetir(prms));
            ds.Tables.Add(CekmeKolTakmaSekliGetir(prms));
            ds.Tables.Add(ZirhTipiGetir(prms));
            ds.Tables.Add(ZirhRengiGetir(prms));
            ds.Tables.Add(BolmeCamTipiGetir(prms));
            ds.Tables.Add(FerforjeGetir(prms));
            ds.Tables.Add(FerforjeRenkGetir(prms));          
            ds.Tables.Add(new PersonelBS().PersonelListesiGetir());
            return ds;
        }

        private DataTable FerforjeRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "FERFORJERENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_FERFORJERENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable FerforjeGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "FERFORJE";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_FERFORJE WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable BolmeCamTipiGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "CAMTIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_CAMTIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable ZirhRengiGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "ZIRHRENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_ZIRHRENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable ZirhTipiGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "ZIRHTIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_ZIRHTIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable CekmeKolTakmaSekliGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "CEKMEKOLUTAKILMASEKLI";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_CEKMEKOLUTAKILMASEKLI WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable HidrolikKapaticiGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "HIDROLIKKAPATICI";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_HIDROLIKKAPATICI WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable MenteseTipGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "MENTESETIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_MENTESETIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable YanginKapiCinsGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "KAPICINSI";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KAPICINSI WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable YanginKasaTipGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "KASATIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KASATIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable PanikBarGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "PANIKBAR";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_PANIKBAR WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable MudahaleKolGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "MUDAHALEKOL";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_MUDAHALEKOL WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable KapiModeliGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "KAPIMODELI";
            IData data = GetDataObject();

            data.AddSqlParameter("ID", prms["ID"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KAPIMODEL WHERE KAPISERIID=@ID";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable KapiRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "KAPIRENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KAPIRENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable KilitSistemGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "KILITSISTEM";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KILITSISTEM WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable CitaGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "CITA";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_CITA WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable EsikGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "ESIK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_ESIK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable AksesuarRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "AKSESUARRENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_AKSESUARRENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable MontajSekliGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "MONTAJSEKLI";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_MONTAJSEKLI WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable TeslimSekliGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "TESLIMSEKLI";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_TESLIMSEKLI WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable AluminyumRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "ALUMINYUMRENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_ALUMINYUMRENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable TacTipGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "TACTIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_TACTIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable PervazTipGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "PERVAZTIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_PERVAZTIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable ContaRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "CONTARENK";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_CONTARENK WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable BarelTipGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "BARELTIP";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_BARELTIP WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable CekmeKolGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            dt.TableName = "CEKMEKOL";
            IData data = GetDataObject();
            string durum = "1";

            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM", durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_CEKMEKOLU WHERE " + prms["KAPISERI"].ToString() + "=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable IlleriGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT ILKOD,ILAD FROM REF_ILLER ORDER BY 2";
            data.GetRecords(dt, sqlText);
            return dt;

        }

        public DataTable IlceleriGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("ILKOD", prms["ILKOD"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT * FROM REF_ILCELER WHERE ILKOD=@ILKOD ORDER BY ILCEAD";
            data.GetRecords(dt, sqlText);
            return dt;

        }

        public DataTable IlceleriGetir(string ilAdi)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("ILAD", ilAdi, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT * FROM REF_ILCELER WHERE ILAD=@ILAD ORDER BY ILCEAD";
            data.GetRecords(dt, sqlText);
            return dt;

        }

        public DataTable SemtleriGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("ILCEKOD", prms["ILCEKOD"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT * FROM REF_SEMTLER WHERE ILCEKOD=@ILCEKOD ORDER BY SEMTAD";
            data.GetRecords(dt, sqlText);
            return dt;

        }
        public DataTable SemtleriGetir(string ilceAdi)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("ILCEAD", ilceAdi, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT * FROM REF_SEMTLER WHERE ILCEAD=@ILCEAD ORDER BY SEMTAD";
            data.GetRecords(dt, sqlText);
            return dt;

        }

        public string SiparisKaydet(Musteri musteri, Siparis siparis, Olcum olcum, Sozlesme sozlesme)
        {
            IData data = GetDataObject();

            try
            {
                data.BeginTransaction();

                // SIPARIS NO GETIR
                DataTable dt = new DataTable();
                string siraNo = String.Empty;

                data.AddSqlParameter("YIL", DateTime.Now.Year, SqlDbType.Int, 50);
                data.AddSqlParameter("KAPITUR", siparis.KapiTipi, SqlDbType.VarChar, 50);

                string sqlText = @"SELECT SIRANO FROM dbo.SIPARISNOSAYAC WHERE YIL=@YIL AND KAPITUR=@KAPITUR";
                data.GetRecords(dt, sqlText);

                if (dt != null && dt.Rows.Count > 0 && dt.Rows[0][0] != null)
                {
                    siraNo = (Convert.ToInt32(dt.Rows[0][0].ToString()) + 1).ToString();

                    data.AddSqlParameter("YIL", DateTime.Now.Year, SqlDbType.Int, 50);
                    data.AddSqlParameter("KAPITUR", siparis.KapiTipi, SqlDbType.VarChar, 50);
                    data.AddSqlParameter("SIRANO", siraNo, SqlDbType.Int, 50);
                    string sqlUpdate = @"UPDATE dbo.SIPARISNOSAYAC 
                                   SET SIRANO=@SIRANO 
                                   WHERE YIL=@YIL AND KAPITUR=@KAPITUR";
                    data.ExecuteStatement(sqlUpdate);
                }
                else
                {
                    siraNo = "1";
                    data.AddSqlParameter("YIL", DateTime.Now.Year, SqlDbType.Int, 50);
                    data.AddSqlParameter("KAPITUR", siparis.KapiTipi, SqlDbType.VarChar, 50);
                    data.AddSqlParameter("SIRANO", siraNo, SqlDbType.Int, 50);
                    string sqlInsert = @"INSERT INTO dbo.SIPARISNOSAYAC 
                                         VALUES (@YIL, @KAPITUR,@SIRANO)";
                    data.ExecuteStatement(sqlInsert);
                }

                siparis.SiparisNo = siparis.KapiTipi.Substring(0, 1) + "-" + siraNo;

                // SIPARIS BILGILERINI KAYDET
                data.AddSqlParameter("SIPARISNO", siparis.SiparisNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("SIPARISTARIH", siparis.SiparisTarih, SqlDbType.DateTime, 50);
                data.AddSqlParameter("BAYIADI", siparis.BayiAd, SqlDbType.VarChar, 50);
                data.AddSqlParameter("FIRMAADI", siparis.FirmaAdi, SqlDbType.VarChar, 150);
                data.AddSqlParameter("MUSTERIAD", musteri.MusteriAd, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERISOYAD", musteri.MusteriSoyad, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERIADRES", musteri.MusteriAdres, SqlDbType.VarChar, 500);
                data.AddSqlParameter("MUSTERIIL", musteri.MusteriIl, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIILCE", musteri.MusteriIlce, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERISEMT", musteri.MusteriSemt, SqlDbType.VarChar, 250);
                data.AddSqlParameter("MUSTERIEVTEL", musteri.MusteriEvTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIISTEL", musteri.MusteriIsTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERICEPTEL", musteri.MusteriCepTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ICKAPIMODEL", siparis.IcKapiModel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DISKAPIMODEL", siparis.DisKapiModel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DISKAPIRENK", siparis.DisKapiRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ICKAPIRENK", siparis.IcKapiRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KILITSISTEM", siparis.KilitSistem, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CITA", siparis.Cita, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ESIK", siparis.Esik, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ALUMINYUMRENK", siparis.AluminyumRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("AKSESUARRENK", siparis.AksesuarRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CONTARENK", siparis.ContaRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TACTIP", siparis.TacTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("PERVAZTIP", siparis.PervazTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CEKMEKOLU", siparis.CekmeKolu, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAPINO", siparis.KapiNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("BARELTIP", siparis.BarelTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("BABA", siparis.Baba, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DURBUN", siparis.Durbun, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TAKTAK", siparis.Taktak, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAYITSIZKAMERA", siparis.KayıtYapmayanKamera, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAYITYAPANKAMERA", siparis.KayıtYapanKamera, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ALARM", siparis.Alarm, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OTOKILIT", siparis.OtomatikKilit, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MONTAJDATAKILACAK", olcum.MontajdaTakilacak, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OLCUMBILGI", olcum.OlcumBilgi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OLCUMTARIH", olcum.OlcumTarih, SqlDbType.Date, 50);
                data.AddSqlParameter("OLCUMALANKISI", olcum.OlcumAlanKisi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MONTAJSEKLI", olcum.MontajSekli, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TESLIMSEKLI", olcum.TeslimSekli, SqlDbType.VarChar, 50);
                data.AddSqlParameter("PESINAT", sozlesme.Pesinat, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KALANODEME", sozlesme.KalanOdeme, SqlDbType.VarChar, 50);
                data.AddSqlParameter("FIYAT", sozlesme.Fiyat, SqlDbType.VarChar, 50);
                data.AddSqlParameter("VERGIDAIRESI", sozlesme.VergiDairesi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("VERGINUMARASI", sozlesme.VergiNumarası, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DURUM", siparis.Durum, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ADET", siparis.SiparisAdedi, SqlDbType.Int, 50);
                data.AddSqlParameter("NAKITPESIN", siparis.NakitPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("NAKITKALAN", siparis.NakitKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("NAKITODEMENOTU", siparis.NakitOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("KKARTPESIN", siparis.KKartiPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("KKARTKALAN", siparis.KKartiKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("KKARTODEMENOTU", siparis.KKartiOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("CEKPESIN", siparis.CekPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("CEKKALAN", siparis.CekKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("CEKODEMENOTU", siparis.CekOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("SIPARISNOT", siparis.Not, SqlDbType.VarChar, 500);

                string sqlKaydet = @"INSERT INTO [ACKAppDB].[dbo].[SIPARIS]
                                   ([SIPARISNO]
                                   ,[SIPARISTARIH]
                                   ,[BAYIADI]
                                   ,[FIRMAADI]
                                   ,[MUSTERIAD]
                                   ,[MUSTERISOYAD]
                                   ,[MUSTERIADRES]
                                   ,[MUSTERIIL]
                                   ,[MUSTERIILCE]
                                   ,[MUSTERISEMT]
                                   ,[MUSTERIEVTEL]
                                   ,[MUSTERIISTEL]
                                   ,[MUSTERICEPTEL]
                                   ,[ICKAPIMODEL]
                                   ,[DISKAPIMODEL]
                                   ,[DISKAPIRENK]
                                   ,[ICKAPIRENK]
                                   ,[KILITSISTEM]
                                   ,[CITA]
                                   ,[ESIK]
                                   ,[ALUMINYUMRENK]
                                   ,[AKSESUARRENK]
                                   ,[CONTARENK]
                                   ,[TACTIP]
                                   ,[PERVAZTIP]
                                   ,[CEKMEKOLU]
                                   ,[KAPINO]
                                   ,[BARELTIP]
                                   ,[BABA]
                                   ,[DURBUN]
                                   ,[TAKTAK]
                                   ,[KAYITSIZKAMERA]
                                   ,[KAYITYAPANKAMERA]
                                   ,[ALARM]
                                   ,[OTOKILIT]
                                   ,[MONTAJDATAKILACAK]
                                   ,[OLCUMBILGI]
                                   ,[OLCUMTARIH]
                                   ,[OLCUMALANKISI]
                                   ,[MONTAJSEKLI]
                                   ,[TESLIMSEKLI]
                                   ,[PESINAT]
                                   ,[KALANODEME]
                                   ,[FIYAT]
                                   ,[VERGIDAIRESI]
                                   ,[VERGINUMARASI]
                                   ,[DURUM]
                                   ,[ADET]
                                    ,NAKITPESIN
                                    ,NAKITKALAN
                                    ,NAKITODEMENOTU
                                    ,KKARTPESIN
                                    ,KKARTKALAN
                                    ,KKARTODEMENOTU
                                    ,CEKPESIN
                                    ,CEKKALAN
                                    ,CEKODEMENOTU
                                    ,SIPARISNOT)
                             VALUES
                                   (@SIPARISNO,
                                   @SIPARISTARIH,
                                   @BAYIADI,
                                   @FIRMAADI,
                                   @MUSTERIAD,
                                   @MUSTERISOYAD,
                                   @MUSTERIADRES,
                                   @MUSTERIIL,
                                   @MUSTERIILCE,
                                   @MUSTERISEMT,
                                   @MUSTERIEVTEL,
                                   @MUSTERIISTEL,
                                   @MUSTERICEPTEL,
                                   @ICKAPIMODEL,
                                   @DISKAPIMODEL,
                                   @DISKAPIRENK,
                                   @ICKAPIRENK,
                                   @KILITSISTEM,
                                   @CITA,
                                   @ESIK,
                                   @ALUMINYUMRENK,
                                   @AKSESUARRENK,
                                   @CONTARENK,
                                   @TACTIP,
                                   @PERVAZTIP,
                                   @CEKMEKOLU,
                                   @KAPINO,
                                   @BARELTIP,
                                   @BABA,
                                   @DURBUN,
                                   @TAKTAK,
                                   @KAYITSIZKAMERA,
                                   @KAYITYAPANKAMERA,
                                   @ALARM,
                                   @OTOKILIT,
                                   @MONTAJDATAKILACAK,
                                   @OLCUMBILGI,
                                   @OLCUMTARIH,
                                   @OLCUMALANKISI,
                                   @MONTAJSEKLI,
                                   @TESLIMSEKLI,
                                   @PESINAT,
                                   @KALANODEME,
                                   @FIYAT,
                                   @VERGIDAIRESI,
                                   @VERGINUMARASI,
                                   @DURUM,
                                   @ADET
                                    ,@NAKITPESIN
                                    ,@NAKITKALAN
                                    ,@NAKITODEMENOTU
                                    ,@KKARTPESIN
                                    ,@KKARTKALAN
                                    ,@KKARTODEMENOTU
                                    ,@CEKPESIN
                                    ,@CEKKALAN
                                    ,@CEKODEMENOTU
                                    ,@SIPARISNOT)";
                data.ExecuteStatement(sqlKaydet);

                //MONTAJ BILGISI KAYDET

                data.AddSqlParameter("SIPARISNO", siparis.SiparisNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TESLIMTARIH", sozlesme.MontajTeslimTarih, SqlDbType.DateTime, 50);
                data.AddSqlParameter("DURUM", sozlesme.MontajDurum, SqlDbType.VarChar, 50);

                string sqlKaydetMontaj = @"INSERT INTO [ACKAppDB].[dbo].[MONTAJ] (SIPARISNO,TESLIMTARIH,DURUM) VALUES (@SIPARISNO, @TESLIMTARIH,@DURUM)";
                data.ExecuteStatement(sqlKaydetMontaj);


                data.CommitTransaction();
                return siparis.SiparisNo;
            }
            catch (Exception exc)
            {
                data.RollbackTransaction();
                new LogWriter().Write(AppModules.Siparis, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "SiparisKaydet", "", null);
                return "";
            }
        }

        public bool SiparisGuncelle(Musteri musteri, Siparis siparis, Olcum olcum, Sozlesme sozlesme)
        {
            IData data = GetDataObject();

            try
            {
                data.BeginTransaction();

                // SIPARIS BILGILERINI GUNCELLE
                data.AddSqlParameter("SIPARISNO", siparis.SiparisNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("SIPARISTARIH", siparis.SiparisTarih, SqlDbType.DateTime, 50);
                data.AddSqlParameter("BAYIADI", siparis.BayiAd, SqlDbType.VarChar, 50);
                data.AddSqlParameter("FIRMAADI", siparis.FirmaAdi, SqlDbType.VarChar, 150);
                data.AddSqlParameter("MUSTERIAD", musteri.MusteriAd, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERISOYAD", musteri.MusteriSoyad, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERIADRES", musteri.MusteriAdres, SqlDbType.VarChar, 500);
                data.AddSqlParameter("MUSTERIIL", musteri.MusteriIl, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIILCE", musteri.MusteriIlce, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERISEMT", musteri.MusteriSemt, SqlDbType.VarChar, 250);
                data.AddSqlParameter("MUSTERIEVTEL", musteri.MusteriEvTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIISTEL", musteri.MusteriIsTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERICEPTEL", musteri.MusteriCepTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ICKAPIMODEL", siparis.IcKapiModel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DISKAPIMODEL", siparis.DisKapiModel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DISKAPIRENK", siparis.DisKapiRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ICKAPIRENK", siparis.IcKapiRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KILITSISTEM", siparis.KilitSistem, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CITA", siparis.Cita, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ESIK", siparis.Esik, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ALUMINYUMRENK", siparis.AluminyumRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("AKSESUARRENK", siparis.AksesuarRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CONTARENK", siparis.ContaRenk, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TACTIP", siparis.TacTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("PERVAZTIP", siparis.PervazTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("CEKMEKOLU", siparis.CekmeKolu, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAPINO", siparis.KapiNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("BARELTIP", siparis.BarelTip, SqlDbType.VarChar, 50);
                data.AddSqlParameter("BABA", siparis.Baba, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DURBUN", siparis.Durbun, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TAKTAK", siparis.Taktak, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAYITSIZKAMERA", siparis.KayıtYapmayanKamera, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAYITYAPANKAMERA", siparis.KayıtYapanKamera, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ALARM", siparis.Alarm, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OTOKILIT", siparis.OtomatikKilit, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ADET", siparis.SiparisAdedi, SqlDbType.Int, 50);
                data.AddSqlParameter("MONTAJDATAKILACAK", olcum.MontajdaTakilacak, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OLCUMBILGI", olcum.OlcumBilgi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("OLCUMTARIH", olcum.OlcumTarih, SqlDbType.Date, 50);
                data.AddSqlParameter("OLCUMALANKISI", olcum.OlcumAlanKisi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MONTAJSEKLI", olcum.MontajSekli, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TESLIMSEKLI", olcum.TeslimSekli, SqlDbType.VarChar, 50);
                data.AddSqlParameter("PESINAT", sozlesme.Pesinat, SqlDbType.VarChar, 50);
                data.AddSqlParameter("KALANODEME", sozlesme.KalanOdeme, SqlDbType.VarChar, 50);
                data.AddSqlParameter("FIYAT", sozlesme.Fiyat, SqlDbType.VarChar, 50);
                data.AddSqlParameter("VERGIDAIRESI", sozlesme.VergiDairesi, SqlDbType.VarChar, 50);
                data.AddSqlParameter("VERGINUMARASI", sozlesme.VergiNumarası, SqlDbType.VarChar, 50);
                data.AddSqlParameter("NAKITPESIN", siparis.NakitPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("NAKITKALAN", siparis.NakitKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("NAKITODEMENOTU", siparis.NakitOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("KKARTPESIN", siparis.KKartiPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("KKARTKALAN", siparis.KKartiKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("KKARTODEMENOTU", siparis.KKartiOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("CEKPESIN", siparis.CekPesin, SqlDbType.Decimal, 50);
                data.AddSqlParameter("CEKKALAN", siparis.CekKalan, SqlDbType.Decimal, 50);
                data.AddSqlParameter("CEKODEMENOTU", siparis.CekOdemeNot, SqlDbType.VarChar, 500);
                data.AddSqlParameter("SIPARISNOT", siparis.Not, SqlDbType.VarChar, 500);

                string sqlGuncelle = @"UPDATE [ACKAppDB].[dbo].[SIPARIS]
                                        SET
                                          --[SIPARISTARIH] = @SIPARISTARIH
                                          [BAYIADI] = @BAYIADI
                                          ,[FIRMAADI] = @FIRMAADI
                                          ,[MUSTERIAD] =@MUSTERIAD
                                          ,[MUSTERISOYAD] = @MUSTERISOYAD
                                          ,[MUSTERIADRES] =@MUSTERIADRES
                                          ,[MUSTERIIL] = @MUSTERIIL
                                          ,[MUSTERIILCE] =@MUSTERIILCE
                                          ,[MUSTERISEMT]=@MUSTERISEMT
                                          ,[MUSTERIEVTEL] = @MUSTERIEVTEL
                                          ,[MUSTERIISTEL] = @MUSTERIISTEL
                                          ,[MUSTERICEPTEL] = @MUSTERICEPTEL
                                          ,[ICKAPIMODEL] = @ICKAPIMODEL
                                          ,[DISKAPIMODEL] = @DISKAPIMODEL
                                          ,[DISKAPIRENK] = @DISKAPIRENK
                                          ,[ICKAPIRENK] = @ICKAPIRENK
                                          ,[KILITSISTEM] = @KILITSISTEM
                                          ,[CITA] = @CITA
                                          ,[ESIK] = @ESIK
                                          ,[ALUMINYUMRENK] = @ALUMINYUMRENK
                                          ,[AKSESUARRENK] = @AKSESUARRENK
                                          ,[CONTARENK] = @CONTARENK
                                          ,[TACTIP] = @TACTIP
                                          ,[PERVAZTIP] = @PERVAZTIP
                                          ,[CEKMEKOLU] = @CEKMEKOLU
                                          ,[KAPINO] = @KAPINO
                                          ,[BARELTIP] = @BARELTIP
                                          ,[BABA] = @BABA
                                          ,[DURBUN] = @DURBUN
                                          ,[TAKTAK] = @TAKTAK
                                          ,[KAYITSIZKAMERA] = @KAYITSIZKAMERA
                                          ,[KAYITYAPANKAMERA] = @KAYITYAPANKAMERA
                                          ,[ALARM] = @ALARM
                                          ,[OTOKILIT]= @OTOKILIT
                                          ,[MONTAJDATAKILACAK] = @MONTAJDATAKILACAK
                                          ,[OLCUMBILGI] = @OLCUMBILGI
                                          ,[OLCUMTARIH] = @OLCUMTARIH
                                          ,[OLCUMALANKISI] = @OLCUMALANKISI
                                          ,[MONTAJSEKLI] = @MONTAJSEKLI
                                          ,[TESLIMSEKLI] = @TESLIMSEKLI
                                          ,[PESINAT] = @PESINAT
                                          ,[KALANODEME] = @KALANODEME
                                          ,[FIYAT] = @FIYAT
                                          ,[VERGIDAIRESI] = @VERGIDAIRESI
                                          ,[VERGINUMARASI] = @VERGINUMARASI
                                          ,[ADET] = @ADET
                                            ,NAKITPESIN = @NAKITPESIN
                                            ,NAKITKALAN =@NAKITKALAN
                                            ,NAKITODEMENOTU = @NAKITODEMENOTU
                                            ,KKARTPESIN = @KKARTPESIN
                                            ,KKARTKALAN = @KKARTKALAN
                                            ,KKARTODEMENOTU = @KKARTODEMENOTU
                                            ,CEKPESIN = @CEKPESIN
                                            ,CEKKALAN = @CEKKALAN
                                            ,CEKODEMENOTU = @CEKODEMENOTU 
                                            ,SIPARISNOT = @SIPARISNOT
                                     WHERE [SIPARISNO] =@SIPARISNO";

                data.ExecuteStatement(sqlGuncelle);

                //MONTAJ BILGISI GUNCELLE

                data.AddSqlParameter("SIPARISNO", siparis.SiparisNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TESLIMTARIH", sozlesme.MontajTeslimTarih, SqlDbType.DateTime, 50);

                string sqlGuncelleMontaj = @"UPDATE [ACKAppDB].[dbo].[MONTAJ]
                                             SET  [TESLIMTARIH] =@TESLIMTARIH
                                             WHERE [SIPARISNO] =@SIPARISNO";
                data.ExecuteStatement(sqlGuncelleMontaj);


                data.CommitTransaction();
                return true;
            }
            catch (Exception exc)
            {
                data.RollbackTransaction();
                new LogWriter().Write(AppModules.Siparis, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "SiparisKaydet", "", null);
                return false;
            }
        }

        public DataTable SiparisBilgileriniGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("SIPARISNO", prms["SIPARISNO"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT 
                                    S.*
                                    ,(SELECT TESLIMTARIH FROM [dbo].[MONTAJ] WHERE SIPARISNO = S.SIPARISNO) AS TESLIMTARIH
                               FROM SIPARIS AS S
                               WHERE SIPARISNO=@SIPARISNO";
            data.GetRecords(dt, sqlText);
            return dt;

        }

        public DataTable SiparisSorgula(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("SiparisNo", prms["SiparisNo"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("SiparisTarihiBas", prms["SiparisTarihiBas"], SqlDbType.DateTime, 50);
            data.AddSqlParameter("SiparisTarihiBit", prms["SiparisTarihiBit"], SqlDbType.DateTime, 50);
            data.AddSqlParameter("MusteriAd", prms["MusteriAd"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("MusteriSoyad", prms["MusteriSoyad"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("TeslimTarihiBas", prms["TeslimTarihiBas"], SqlDbType.DateTime, 50);
            data.AddSqlParameter("TeslimTarihiBit", prms["TeslimTarihiBit"], SqlDbType.DateTime, 50);
            data.AddSqlParameter("PersonelListesi", prms["PersonelListesi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlIcKapiModeli", prms["ddlIcKapiModeli"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlDisKapiModeli", prms["ddlDisKapiModeli"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlIcKapiRengi", prms["ddlIcKapiRengi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlKilitSistemi", prms["ddlKilitSistemi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlCita", prms["ddlCita"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlEsik", prms["ddlEsik"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlAksesuarRengi", prms["ddlAksesuarRengi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlMontajSekli", prms["ddlMontajSekli"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlAluminyumRengi", prms["ddlAluminyumRengi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlTacTipi", prms["ddlTacTipi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlPervazTipi", prms["ddlPervazTipi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlContaRengi", prms["ddlContaRengi"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("ddlKapiSeri", prms["ddlKapiSeri"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Il", prms["Il"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Ilce", prms["Ilce"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Durum", prms["Durum"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Semt", prms["Semt"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Adres", prms["Adres"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("Tel", prms["Tel"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT DISTINCT
	                            S.[ID]
                                ,S.[SIPARISNO]
                                ,CONVERT(VARCHAR(10), [SIPARISTARIH],104) AS SIPARISTARIH
                                ,[MUSTERIAD] +' '+[MUSTERISOYAD] + ' ' + ISNULL(FIRMAADI,'') AS MUSTERI
                                ,[MUSTERIADRES]
                                ,[MUSTERIIL]
                                ,[MUSTERIILCE]
                                ,[ICKAPIRENK]
                                ,(CASE WHEN [KILITSISTEM]='Seçiniz' THEN '' ELSE [KILITSISTEM] END) AS [KILITSISTEM]
                                ,(CASE WHEN [CITA]='Seçiniz' THEN '' ELSE [CITA] END) AS [CITA]
                                ,(CASE WHEN [ESIK]='Seçiniz' THEN '' ELSE [ESIK] END) AS [ESIK]
                                ,(CASE WHEN [ALUMINYUMRENK]='Seçiniz' THEN '' ELSE [ALUMINYUMRENK] END) AS [ALUMINYUMRENK]
                                ,(CASE WHEN [AKSESUARRENK]='Seçiniz' THEN '' ELSE [AKSESUARRENK] END) AS [AKSESUARRENK]
                                ,(CASE WHEN [CONTARENK]='Seçiniz' THEN '' ELSE [CONTARENK] END) AS [CONTARENK]
                                ,(CASE WHEN [TACTIP]='Seçiniz' THEN '' ELSE [TACTIP] END) AS [TACTIP]
                                ,(CASE WHEN [PERVAZTIP]='Seçiniz' THEN '' ELSE [PERVAZTIP] END) AS [PERVAZTIP]
                                ,[OLCUMBILGI]
                                ,[MONTAJSEKLI]
                                ,CONVERT(VARCHAR(10), M.[TESLIMTARIH],104)  AS MONTAJTARIHI
                                ,S.ADET
                                ,S.MUSTERISEMT
                            FROM SIPARIS AS S
	                            INNER JOIN [dbo].[MONTAJ] AS M ON S.SIPARISNO = M.SIPARISNO
	                            LEFT OUTER JOIN [dbo].[MONTAJ_PERSONEL] AS MP ON M.[ID] = MP.[MONTAJID]
                            WHERE (@SiparisNo IS NULL OR S.SIPARISNO=@SiparisNo)
	                                AND (@SiparisTarihiBas IS NULL OR S.[SIPARISTARIH]>=@SiparisTarihiBas)
	                                AND (@SiparisTarihiBit IS NULL OR S.[SIPARISTARIH]<=@SiparisTarihiBit)
	                                AND (@MusteriAd IS NULL OR S.[MUSTERIAD] LIKE '%{0}%') 
                                    AND (@MusteriSoyad IS NULL OR S.[MUSTERISOYAD] LIKE '%{1}%')
	                                AND (@TeslimTarihiBas IS NULL OR M.[TESLIMTARIH] >= @TeslimTarihiBas)
	                                AND (@TeslimTarihiBit IS NULL OR M.[TESLIMTARIH] <= @TeslimTarihiBit)
	                                AND (@PersonelListesi IS NULL OR MP.PERSONELID IN ({2}))
	                                AND (@ddlIcKapiModeli IS NULL OR [ICKAPIMODEL] = @ddlIcKapiModeli)
	                                AND (@ddlDisKapiModeli IS NULL OR [DISKAPIMODEL] = @ddlDisKapiModeli)
	                                AND (@ddlIcKapiRengi IS NULL OR [ICKAPIRENK] = @ddlIcKapiRengi)
	                                AND (@ddlKilitSistemi IS NULL OR [KILITSISTEM] = @ddlKilitSistemi)
	                                AND (@ddlCita IS NULL OR [CITA] = @ddlCita)
	                                AND (@ddlEsik IS NULL OR [ESIK] = @ddlEsik)
	                                AND (@ddlAksesuarRengi IS NULL OR [AKSESUARRENK] = @ddlAksesuarRengi)
	                                AND (@ddlMontajSekli IS NULL OR [MONTAJSEKLI] = @ddlMontajSekli)
	                                AND (@ddlAluminyumRengi IS NULL OR [ALUMINYUMRENK] = @ddlAluminyumRengi)
	                                AND (@ddlTacTipi IS NULL OR [TACTIP] = @ddlTacTipi)
	                                AND (@ddlPervazTipi IS NULL OR [PERVAZTIP] = @ddlPervazTipi)
	                                AND (@ddlContaRengi IS NULL OR [CONTARENK] = @ddlContaRengi)
                                    AND (@ddlKapiSeri IS NULL OR SUBSTRING(S.SIPARISNO, 1, 1)= @ddlKapiSeri)
	                                AND (@Il IS NULL OR [MUSTERIIL] = @Il)
	                                AND (@Ilce IS NULL OR [MUSTERIILCE] = @Ilce)
                                    AND (@Durum IS NULL OR S.[DURUM] = @Durum)
                                    AND (@Semt IS NULL OR S.[MUSTERISEMT] = @Semt)
                                    AND (@Adres IS NULL OR S.[MUSTERIADRES] LIKE '%{3}%')
                                    AND (@Tel IS NULL OR S.[MUSTERICEPTEL] LIKE '%{4}%')";

            string liste = String.Empty;
            liste = prms["PersonelListesi"] == null ? "1" : prms["PersonelListesi"].ToString();

            data.GetRecords(dt, String.Format(sqlText, prms["MusteriAd"], prms["MusteriSoyad"], liste, prms["Adres"], prms["Tel"]));
            return dt;
        }
    }
}
