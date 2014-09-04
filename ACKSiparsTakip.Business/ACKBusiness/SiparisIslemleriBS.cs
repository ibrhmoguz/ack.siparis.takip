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
            ds.Tables.Add(new PersonelBS().PersonelListesiGetir());
            return ds;
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
                data.AddSqlParameter("MUSTERIAD", musteri.MusteriAd, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERISOYAD", musteri.MusteriSoyad, SqlDbType.VarChar, 100);
                data.AddSqlParameter("MUSTERIADRES", musteri.MusteriAdres, SqlDbType.VarChar, 500);
                data.AddSqlParameter("MUSTERIIL", musteri.MusteriIl, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIILCE", musteri.MusteriIlce, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIEVTEL", musteri.MusteriEvTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERIISTEL", musteri.MusteriIsTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("MUSTERICEPTEL", musteri.MusteriCepTel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("ICKAPIMODEL", siparis.IcKapiModel, SqlDbType.VarChar, 50);
                data.AddSqlParameter("DISKAPIMODEL", siparis.DisKapiModel, SqlDbType.VarChar, 50);
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

                string sqlKaydet = @"INSERT INTO [ACKAppDB].[dbo].[SIPARIS]
                                   ([SIPARISNO]
                                   ,[SIPARISTARIH]
                                   ,[BAYIADI]
                                   ,[MUSTERIAD]
                                   ,[MUSTERISOYAD]
                                   ,[MUSTERIADRES]
                                   ,[MUSTERIIL]
                                   ,[MUSTERIILCE]
                                   ,[MUSTERIEVTEL]
                                   ,[MUSTERIISTEL]
                                   ,[MUSTERICEPTEL]
                                   ,[ICKAPIMODEL]
                                   ,[DISKAPIMODEL]
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
                                   ,[VERGINUMARASI])
                             VALUES
                                   (@SIPARISNO,
                                   @SIPARISTARIH,
                                   @BAYIADI,
                                   @MUSTERIAD,
                                   @MUSTERISOYAD,
                                   @MUSTERIADRES,
                                   @MUSTERIIL,
                                   @MUSTERIILCE,
                                   @MUSTERIEVTEL,
                                   @MUSTERIISTEL,
                                   @MUSTERICEPTEL,
                                   @ICKAPIMODEL,
                                   @DISKAPIMODEL,
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
                                   @VERGINUMARASI)";
                data.ExecuteStatement(sqlKaydet);

                //MONTAJ BILGISI KAYDET
                       
                data.AddSqlParameter("SIPARISNO", siparis.SiparisNo, SqlDbType.VarChar, 50);
                data.AddSqlParameter("TESLIMTARIH", sozlesme.MontajTeslimTarih, SqlDbType.DateTime, 50);

                string sqlKaydetMontaj = @"INSERT INTO [ACKAppDB].[dbo].[MONTAJ] (SIPARISNO,TESLIMTARIH) VALUES (@SIPARISNO, @TESLIMTARIH)";
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

        public DataTable SiparisBilgileriniGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("SIPARISNO", prms["SIPARISNO"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT * FROM SIPARIS  WHERE SIPARISNO=@SIPARISNO";
            data.GetRecords(dt, sqlText);
            return dt;
        
        }
    }
}
