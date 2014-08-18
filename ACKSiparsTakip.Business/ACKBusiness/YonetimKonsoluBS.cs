using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class YonetimKonsoluBS : BusinessBase
    {
        public DataSet RefTablolariGetir()
        {
            DataSet ds = new DataSet();

            ds.Tables.Add(KapiRenkGetir());
       
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

        public DataTable TabloAdlariGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT AD,TABLO FROM REF_TABLOLAR ORDER BY 1 ";
            data.GetRecords(dt, sqlText);

            return dt;
        }

    }
}
