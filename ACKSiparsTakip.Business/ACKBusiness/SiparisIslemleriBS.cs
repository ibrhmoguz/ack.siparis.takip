using System;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using System.Data;
using System.Collections.Generic;
using System.Text;
using WebFrame.Business;


namespace ACKSiparsTakip.Business.ACKBusiness
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

        public DataTable KullaniciBilgisiGetir(string pKullaniciAdi, string pSifre)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();


            string sqlText = @"SELECT * FROM KULLANICIBILGI WHERE KULLANICIADI=@KULLANICIADI and SIFRE=@SIFRE";
           

            data.AddSqlParameter("KULLANICIADI",pKullaniciAdi,SqlDbType.VarChar, 50 );
            data.AddSqlParameter("SIFRE", pSifre, SqlDbType.VarChar, 50);
            data.GetRecords(dt, sqlText);
            
            return dt;
        }
    }
}
