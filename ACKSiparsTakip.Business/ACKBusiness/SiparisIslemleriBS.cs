using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;


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
            ds.Tables.Add(new PersonelBS().PersonelleriGetir());
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
    }
}
