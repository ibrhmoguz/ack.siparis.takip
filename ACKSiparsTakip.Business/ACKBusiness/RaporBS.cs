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
	                            ,  ISNULL(CASE WHEN S.MUSTERICEPTEL IS NOT NULL THEN 'CEP: '+ S.MUSTERICEPTEL ELSE NULL END,'') + CHAR(10) +
	                               ISNULL(CASE WHEN S.MUSTERIEVTEL IS NOT NULL THEN 'EV: '+ S.MUSTERIEVTEL ELSE NULL END,'') + CHAR(10) +
	                               ISNULL(CASE WHEN S.MUSTERIISTEL IS NOT NULL THEN 'İŞ: '+ S.MUSTERIISTEL ELSE NULL END,'') AS TEL
	                            , S.MUSTERIADRES AS ADRES
	                            , S.MUSTERISEMT AS SEMT
	                            , dbo.MONTAJ_EKIP_LISTESI(M.ID) AS MONTAJEKIBI
                                , ISNULL(S.KILITSISTEM,'')+','+ISNULL(S.CITA,'')
                                +','+ISNULL(S.ESIK,'')+','+ISNULL(S.ALUMINYUMRENK,'')
                                +','+ISNULL(S.CONTARENK,'')+','+ISNULL(S.TACTIP,'')
                                +','+ISNULL(S.PERVAZTIP,'')+','+ISNULL(S.CEKMEKOLU,'')
                                +','+ISNULL(S.BARELTIP,'')+',Baba:'+ISNULL(S.BABA,'')
                                +',Dürbün:'+ISNULL(S.DURBUN,'')+',Taktak:'+ISNULL(S.TAKTAK,'')
                                +',Kayıtsız Kamera:'+ISNULL(S.KAYITSIZKAMERA,'')+',Kayıt Yapan Kamera:'+ISNULL(S.KAYITYAPANKAMERA,'')
                                +',Alarm:'+ISNULL(S.ALARM,'')+',Otomatik Kilit:'+ISNULL(S.OTOKILIT,'') AS ACIKLAMA
	                            , CASE WHEN SUBSTRING(S.SIPARISNO,1,1) = 'N' THEN 'NOVA'
		                               WHEN SUBSTRING(S.SIPARISNO,1,1) = 'K' THEN 'KROMA'
		                               WHEN SUBSTRING(S.SIPARISNO,1,1) = 'G' THEN 'GUARD'
	                              END AS KAPICINSI
                             FROM dbo.SIPARIS AS S
	                            INNER JOIN MONTAJ AS M ON M.SIPARISNO = S.SIPARISNO
                            WHERE CONVERT(DATE, CONVERT(VARCHAR(24),M.TESLIMTARIH,103),103)= @TESLIMTARIH";

            data.AddSqlParameter("TESLIMTARIH", raporTarihi, SqlDbType.Date, 50);
            data.GetRecords(dt, sqlText);

            return dt;
        }
    }
}
