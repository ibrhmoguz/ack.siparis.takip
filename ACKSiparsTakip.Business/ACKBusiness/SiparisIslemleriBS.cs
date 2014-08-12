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
    }
}
