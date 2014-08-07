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
        public DataTable KapıModeliGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();


            string sqlText = @"SELECT [ID],[KAPITURADI]  FROM KAPI_TUR";

            data.GetRecords(dt, sqlText);
            return dt;
        }

        
    }
}
