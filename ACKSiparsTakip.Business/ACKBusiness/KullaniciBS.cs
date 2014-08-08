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

        public DataTable KullanicilariGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT KULLANICIADI, YETKI FROM KULLANICIBILGI ORDER BY 1";
            data.GetRecords(dt, sqlText);
            return dt;
         
        }
        public string KullaniciTanimla(Dictionary<string, object> prms)
        {
            string kayit = "true";
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("KULLANICIADI", prms["KULLANICIADI"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("YETKI", prms["YETKI"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("SIFRE", prms["SIFRE"], SqlDbType.VarChar, 50);

                string sqlKaydet = @"INSERT INTO KULLANICIBILGI (KULLANICIADI,SIFRE,YETKI) VALUES (@KULLANICIADI,@SIFRE,@YETKI)";            
                data.ExecuteStatement(sqlKaydet);
            }
            catch
            {
                
                kayit="false";
            }
            

            return kayit;
        }

        public string KullaniciSil(Dictionary<string, object> prms)
        {
            string silme = "true";
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("KULLANICIADI", prms["KULLANICIADI"], SqlDbType.VarChar, 50);


                string sqlSil = @"DELETE FROM KULLANICIBILGI WHERE KULLANICIADI=@KULLANICIADI";
                data.ExecuteStatement(sqlSil);
            }
            catch
            {

                silme = "false";
            }


            return silme;
        }

    }
}
