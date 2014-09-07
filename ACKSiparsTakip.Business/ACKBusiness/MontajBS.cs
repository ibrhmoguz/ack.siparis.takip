using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using WebFrame.Business;
using WebFrame.DataAccess;
using WebFrame.DataType.Common.Attributes;
using WebFrame.DataType.Common.Logging;

namespace ACKSiparisTakip.Business.ACKBusiness
{
    [ServiceConnectionNameAttribute("ACKconnectionString")]
    public class MontajBS : BusinessBase
    {
        public DataTable MontajlariListele(DateTime dtBaslangic, DateTime dtBitis)
        {
            IData data = GetDataObject();
            DataTable dt = new DataTable();

            data.AddSqlParameter("BASTAR", dtBaslangic, SqlDbType.DateTime, 50);
            data.AddSqlParameter("BITTAR", dtBitis, SqlDbType.DateTime, 50);

            string sqlKaydet = @"SELECT
	                                M.ID
                                    , M.TESLIMTARIH
	                                , S.SIPARISNO
	                                , S.MUSTERIAD + ' ' + S.MUSTERISOYAD AS MUSTERI
	                                , S.MUSTERIILCE +'/' + S.MUSTERIIL AS ILILCE
	                                , S.MUSTERIADRES AS ADRES
	                                , S.MUSTERICEPTEL AS TEL
	                                , dbo.MONTAJ_EKIP_LISTESI(M.ID) AS PERSONEL
                                    , dbo.MONTAJ_EKIP_ID_LISTESI(M.ID) AS PERSONELID
                                    , M.DURUM
                                FROM MONTAJ AS M
	                                INNER JOIN SIPARIS as S ON M.SIPARISNO = S.SIPARISNO
                                WHERE M.TESLIMTARIH >=@BASTAR AND M.TESLIMTARIH <=@BITTAR";
            data.GetRecords(dt, sqlKaydet);
            return dt;
        }

        public bool MontajGuncelle(string montajID, DateTime teslimTarihi, List<string> personelListesi, string montajDurumu)
        {
            IData data = GetDataObject();

            try
            {
                data.BeginTransaction();

                //Montaj tarihini guncelle
                data.AddSqlParameter("ID", montajID, SqlDbType.Int, 50);
                data.AddSqlParameter("TESLIMTARIH", teslimTarihi, SqlDbType.DateTime, 50);
                data.AddSqlParameter("DURUM", montajDurumu, SqlDbType.VarChar, 50);
                string sqlUpdate = @"UPDATE  MONTAJ 
                                      SET TESLIMTARIH=@TESLIMTARIH
                                          , DURUM=@DURUM
                                      WHERE ID=@ID";
                data.ExecuteStatement(sqlUpdate);

                if (personelListesi.Count > 0)
                {
                    //Montaj personelini sil
                    data.AddSqlParameter("ID", montajID, SqlDbType.Int, 50);
                    string sqlSil = @"DELETE FROM MONTAJ_PERSONEL WHERE MONTAJID=@ID";
                    data.ExecuteStatement(sqlSil);

                    //Montaj personeli ekle
                    string sqlInsert = @"INSERT INTO [dbo].[MONTAJ_PERSONEL] ([MONTAJID],[PERSONELID]) VALUES ({0} ,{1}); ";
                    StringBuilder sb = new StringBuilder();
                    foreach (var item in personelListesi)
                    {
                        sb.Append(String.Format(sqlInsert, montajID, item));
                    }
                    data.ExecuteStatement(sb.ToString());
                }

                data.CommitTransaction();
                return true;
            }
            catch (Exception exc)
            {
                data.RollbackTransaction();
                new LogWriter().Write(AppModules.IsTakvimi, System.Diagnostics.EventLogEntryType.Error, exc, "ServerSide", "MontajGuncelle", "", null);
                return false;
            }
        }
    }
}
