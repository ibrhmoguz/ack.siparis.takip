using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class KullaniciBS : BusinessBase
    {
        public DataTable KullaniciBilgisiGetir(Dictionary<string, object> prms)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();


            string sqlText = @"SELECT * FROM KULLANICIBILGI WHERE KULLANICIADI=@KULLANICIADI and SIFRE=@SIFRE";


            data.AddSqlParameter("KULLANICIADI", prms["KULLANICIADI"], SqlDbType.VarChar, 50);
            data.AddSqlParameter("SIFRE", prms["SIFRE"], SqlDbType.VarChar, 50);
            data.GetRecords(dt, sqlText);

            return dt;
        }
    }
}
