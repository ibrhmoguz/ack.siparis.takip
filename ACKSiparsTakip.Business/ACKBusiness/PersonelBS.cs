using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using System;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class PersonelBS : BusinessBase
    {
        public DataTable PersonelleriGetir()
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();

            string sqlText = @"SELECT ID, AD, SOYAD FROM PERSONELBILGI ORDER BY 1";
            data.GetRecords(dt, sqlText);
            return dt;

        }
        public bool PersonelTanimla(Dictionary<string, object> prms)
        {
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("AD", prms["AD"], SqlDbType.VarChar, 50);
                data.AddSqlParameter("SOYAD", prms["SOYAD"], SqlDbType.VarChar, 50);

                string sqlKaydet = @"INSERT INTO PERSONELBILGI (AD,SOYAD) VALUES (@AD,@SOYAD)";
                data.ExecuteStatement(sqlKaydet);

                return true;
            }
            catch (Exception exc)
            {
                //HataLogla
                return false;
            }
        }

        public bool PersonelSil(Dictionary<string, object> prms)
        {
            try
            {
                IData data = GetDataObject();

                data.AddSqlParameter("ID", prms["ID"], SqlDbType.VarChar, 50);

                string sqlSil = @"DELETE FROM PERSONELBILGI WHERE ID=@ID";
                data.ExecuteStatement(sqlSil);

                return true;
            }
            catch (Exception exc)
            {
                //HataLogla
                return false;
            }
        }
    }
}
