using System;
using System.Collections.Generic;
using System.Data;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using WebFrame.DataType.Common.Logging;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class RaporBS : BusinessBase
    {
        public DataTable GunlukIsTakipFormuListele(DateTime raporTarihi)
        {
            DataTable dt = new DataTable();
            IData data = GetDataObject();
            string sqlText = @"SELECT
	                            ROW_NUMBER() OVER(ORDER BY S.SIPARISNO DESC) AS ID
	                            , S.SIPARISNO
	                            , S.MUSTERIAD + ' ' + S.MUSTERISOYAD AS MUSTERI
	                            ,  ISNULL(CASE WHEN S.MUSTERICEPTEL IS NOT NULL THEN 'CEP: '+ S.MUSTERICEPTEL ELSE NULL END,'') + ' ' +
	                               ISNULL(CASE WHEN S.MUSTERIEVTEL IS NOT NULL THEN 'EV: '+ S.MUSTERIEVTEL ELSE NULL END,'') + ' ' +
	                               ISNULL(CASE WHEN S.MUSTERIISTEL IS NOT NULL THEN 'İŞ: '+ S.MUSTERIISTEL ELSE NULL END,'') AS TEL
	                            , S.MUSTERIADRES AS ADRES
	                            , S.MUSTERIILCE AS SEMT
	                            , dbo.MONTAJ_EKIP_LISTESI(M.ID) AS MONTAJEKIBI
	                            , CASE WHEN SUBSTRING(S.SIPARISNO,1,1) = 'N' THEN 'NOVA'
		                               WHEN SUBSTRING(S.SIPARISNO,1,1) = 'K' THEN 'KROMA'
		                               WHEN SUBSTRING(S.SIPARISNO,1,1) = 'G' THEN 'GUARD'
	                              END AS KAPICINSI
                             FROM dbo.SIPARIS AS S
	                            INNER JOIN MONTAJ AS M ON M.SIPARISNO = S.SIPARISNO
                            WHERE CONVERT(DATE, CONVERT(VARCHAR(24),M.TESLIMTARIH,103),103) = @TESLIMTARIH";

            data.AddSqlParameter("TESLIMTARIH", raporTarihi, SqlDbType.Date, 50);
            data.GetRecords(dt, sqlText);

            return dt;
        }
    }
}
