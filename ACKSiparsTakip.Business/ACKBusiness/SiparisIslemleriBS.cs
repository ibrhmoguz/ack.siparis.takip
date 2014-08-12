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
        public DataTable KapıModeliGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            data.AddSqlParameter("ID", prms["ID"], SqlDbType.VarChar, 50);
     
            string sqlText = @"SELECT KAPIMODELID,AD FROM REF_KAPIMODEL WHERE KAPISERIID=@ID";
            data.GetRecords(dt, sqlText);

            return dt;
        }

        public DataTable KapıRenkGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            string durum = "1";
           
            data.AddSqlParameter("KAPISERI", prms["KAPISERI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("DURUM",durum, SqlDbType.VarChar, 50);

            string sqlText = @"SELECT KAPIRENKID,AD FROM REF_KAPIRENK WHERE "+prms["KAPISERI"].ToString()+"=@DURUM";
            data.GetRecords(dt, sqlText);

            return dt;
        }


        
    }
}
