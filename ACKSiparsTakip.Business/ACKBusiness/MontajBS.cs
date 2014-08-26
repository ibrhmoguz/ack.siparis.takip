using System;
using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class MontajBS : BusinessBase
    {
        public bool MontajKaydet(string siparisNo, DateTime teslimTarihi)
        {
            IData data = GetDataObject();

            data.AddSqlParameter("SIPARISNO", siparisNo, SqlDbType.VarChar, 50);
            data.AddSqlParameter("TESLIMTARIH", teslimTarihi, SqlDbType.DateTime, 50);

            string sqlKaydet = @"INSERT INTO [ACKAppDB].[dbo].[MONTAJ] (SIPARISNO,TESLIMTARIH) VALUES (@SIPARISNO, @TESLIMTARIH)";
            data.ExecuteStatement(sqlKaydet);
            return true;
        }
    }
}
