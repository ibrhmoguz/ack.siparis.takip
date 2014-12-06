using System;
using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using WebFrame.DataType.Common.Logging;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class YonetimKonsoluBS : BusinessBase
    {
        public DataSet RefTablolariGetir()
        {
            DataSet ds = new DataSet();

            ds.Tables.Add(KapiRenkGetir());
            ds.Tables.Add(KilitSistemiGetir());
            ds.Tables.Add(CitaGetir());
            ds.Tables.Add(EsikGetir());
            ds.Tables.Add(AksesuarRenkGetir());
            ds.Tables.Add(AluminyumRenkGetir());
            ds.Tables.Add(ContaRenkGetir());
            ds.Tables.Add(TacTipiGetir());
            ds.Tables.Add(PervazTipiGetir());
            ds.Tables.Add(MontajSekliGetir());
            ds.Tables.Add(TeslimSekliGetir());
            ds.Tables.Add(TumKapiModelGetir());
            ds.Tables.Add(BarelTipGetir());
            ds.Tables.Add(CekmeKoluGetir());

            return ds;
        }

        private DataTable KapiRenkGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_KAPIRENK";

            string sqlText = @"SELECT * FROM REF_KAPIRENK";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable KilitSistemiGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_KILITSISTEM";

            string sqlText = @"SELECT * FROM REF_KILITSISTEM";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable CitaGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_CITA";

            string sqlText = @"SELECT * FROM REF_CITA";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable BarelTipGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_BARELTIP";

            string sqlText = @"SELECT * FROM REF_BARELTIP";
            data.GetRecords(dt, sqlText);

            return dt;
        }
        private DataTable CekmeKoluGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_CEKMEKOLU";

            string sqlText = @"SELECT * FROM REF_CEKMEKOLU";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable EsikGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_ESIK";

            string sqlText = @"SELECT * FROM REF_ESIK";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable AksesuarRenkGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_AKSESUARRENK";

            string sqlText = @"SELECT * FROM REF_AKSESUARRENK";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable AluminyumRenkGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_ALUMINYUMRENK";

            string sqlText = @"SELECT * FROM REF_ALUMINYUMRENK";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable ContaRenkGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_CONTARENK";

            string sqlText = @"SELECT * FROM REF_CONTARENK";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable TacTipiGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_TACTIP";

            string sqlText = @"SELECT * FROM REF_TACTIP";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable PervazTipiGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_PERVAZTIP";

            string sqlText = @"SELECT * FROM REF_PERVAZTIP";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable MontajSekliGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_MONTAJSEKLI";

            string sqlText = @"SELECT * FROM REF_MONTAJSEKLI";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        private DataTable TeslimSekliGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_TESLIMSEKLI";

            string sqlText = @"SELECT * FROM REF_TESLIMSEKLI";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable TabloAdlariGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT AD,TABLO FROM REF_TABLOLAR ORDER BY 1 ";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public bool OgeSil(Dictionary<string, object> prms)
        {
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("TABLOADI", prms["TABLOADI"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("ID", prms["ID"], SqlDbType.VarChar, 50);

                string sqlSil = @"DELETE FROM " + prms["TABLOADI"].ToString() + " WHERE ID=@ID";
                data.ExecuteStatement(sqlSil);

                return true;
            }
            catch (Exception exc)
            {
                new LogWriter().Write(AppModules.YonetimKonsolu, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "OgeSil", "", null);
                return false;
            }
        }

        public bool OgeEkle(Dictionary<string, object> prms)
        {
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("TABLOADI", prms["TABLOADI"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("AD", prms["AD"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("NOVA", prms["NOVA"], SqlDbType.Bit, 1);
                data.AddSqlParameter("KROMA", prms["KROMA"], SqlDbType.Bit, 1);
                data.AddSqlParameter("GUARD", prms["GUARD"], SqlDbType.Bit, 1);

                string sqlKaydet = @"INSERT INTO " + prms["TABLOADI"].ToString() + " (AD, NOVA, KROMA, GUARD) VALUES ( @AD, @NOVA, @KROMA, @GUARD)";
                data.ExecuteStatement(sqlKaydet);

                return true;
            }
            catch (Exception exc)
            {
                new LogWriter().Write(AppModules.YonetimKonsolu, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "KullaniciKaydet", "", null);
                return false;
            }
        }

        public bool KapiModelEkle(Dictionary<string, object> prms)
        {
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("TABLOADI", prms["TABLOADI"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("KAPISERIID", prms["KAPISERIID"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("AD", prms["AD"], SqlDbType.VarChar, 50);

                string sqlKaydet = @"INSERT INTO " + prms["TABLOADI"].ToString() + " (KAPISERIID, AD) VALUES ( @KAPISERIID, @AD)";
                data.ExecuteStatement(sqlKaydet);

                return true;
            }
            catch (Exception exc)
            {
                new LogWriter().Write(AppModules.YonetimKonsolu, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "KullaniciKaydet", "", null);
                return false;
            }
        }

        public DataTable KapiSeriGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT ID,AD FROM REF_KAPISERI ORDER BY 1 ";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable KapiModelGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("KAPISERIID", prms["KAPISERIID"], SqlDbType.VarChar, 50);

            string sqlText = @"SELECT ID,AD FROM REF_KAPIMODEL WHERE KAPISERIID=@KAPISERIID  ORDER BY 1 ";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable TumKapiModelGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            dt.TableName = "REF_TUMKAPIMODELLERI";

            string sqlText = @"SELECT DISTINCT ID,AD FROM REF_KAPIMODEL";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable HatalariGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT TOP 500
                                  (CASE 
			                            WHEN MODULEID = 0 THEN 'ACKSiparisTakip'
			                            WHEN MODULEID = 1 THEN 'Siparis'
			                            WHEN MODULEID = 2 THEN 'IsTakvimi'
			                            WHEN MODULEID = 3 THEN 'YonetimKonsolu'  
			                            WHEN MODULEID = 4 THEN 'SifreGuncelle'  
		                             END) AS MODUL
                                  ,(CASE 
			                            WHEN EVENTLOGENTRYTYPEID=1 THEN 'Error'
			                            WHEN EVENTLOGENTRYTYPEID=1 THEN 'Warning'
			                            WHEN EVENTLOGENTRYTYPEID=1 THEN 'Information'
			                            WHEN EVENTLOGENTRYTYPEID=1 THEN 'SuccessAudit'
			                            WHEN EVENTLOGENTRYTYPEID=1 THEN 'FailureAudit'
		                            END) AS LOGTYPE
                                  ,[EXCEPTION]
                                  ,[PAGEURL]
                                  ,[METHODNAME]
                                  ,[MESSAGE]
                                  ,[USERIDENTITY]
                                  ,[PCNAME]
                                  ,[USERAUTHORITY]
                                  ,[EXTENDEDPROPERTIES]
                                  ,[USERNAME]
                                  ,[DATE]
                              FROM [ACKAppDB].[dbo].[HATA]
                              ORDER BY [DATE] DESC";
            data.GetRecords(dt, sqlText);
            return dt;
        }
    }
}
