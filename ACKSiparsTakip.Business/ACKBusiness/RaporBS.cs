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
	                            , S.MUSTERISEMT AS SEMT
	                            , dbo.MONTAJ_EKIP_LISTESI(M.ID) AS MONTAJEKIBI
                                , ISNULL(CASE WHEN S.KILITSISTEM IS NOT NULL THEN S.KILITSISTEM +', ' ELSE NULL END,'')+
                                  ISNULL(CASE WHEN S.CITA IS NOT NULL THEN S.CITA +',  ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.ESIK IS NOT NULL THEN S.ESIK +',' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.ALUMINYUMRENK IS NOT NULL THEN S.ALUMINYUMRENK +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.CONTARENK IS NOT NULL THEN S.CONTARENK +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.TACTIP IS NOT NULL THEN S.TACTIP +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.PERVAZTIP IS NOT NULL THEN S.PERVAZTIP +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.CEKMEKOLU IS NOT NULL THEN S.CEKMEKOLU +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.BARELTIP IS NOT NULL THEN S.BARELTIP +', ' ELSE NULL END,'')+ 
                                  ISNULL(CASE WHEN S.BABA IS NOT NULL THEN 'Baba:'+S.BABA +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.DURBUN IS NOT NULL THEN 'Dürbün:'+S.DURBUN +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.TAKTAK IS NOT NULL THEN 'Taktak:'+S.TAKTAK +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.KAYITSIZKAMERA IS NOT NULL THEN 'Kayıtsız Kamera:'+S.KAYITSIZKAMERA +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.KAYITYAPANKAMERA IS NOT NULL THEN  'Kayıt Yapan Kamera:'+S.KAYITYAPANKAMERA +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.ALARM IS NOT NULL THEN 'Alarm:'+S.ALARM +', ' ELSE NULL END,'') +
                                  ISNULL(CASE WHEN S.OTOKILIT IS NOT NULL THEN 'Otomatik Kilit:'+S.OTOKILIT +', ' ELSE NULL END,'') AS ACIKLAMA
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
