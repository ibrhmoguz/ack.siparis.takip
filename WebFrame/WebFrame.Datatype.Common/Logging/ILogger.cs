
using System;
using System.Data;
using System.Diagnostics;

namespace WebFrame.DataType.Common.Logging
{
   public interface ILogger
   {

       void Write(GumrukModules moduleId, EventLogEntryType eventType, Exception ex, string pageUrl, string methodName,
                  string message, params string[] extendedProperties);

       void Write(GumrukModules moduleId, EventLogEntryType eventType, Exception ex, string pageUrl, string methodName,
                  string message, DataSet kullaniciYetkileri, params string[] extendedProperties);

       void Write(GumrukModules moduleId, EventLogEntryType eventType, Exception ex, string pageUrl, string methodName,
                  string message, string kullaniciSicil, string pcName, DataSet kullaniciYetkileri,
                  params string[] extendedProperties);

       void WriteAudit(string tableName, string rowID, string columnName, TableOperations operation, string user,
                       string projectName, string oldValue, string newValue, string message);
   }
}
