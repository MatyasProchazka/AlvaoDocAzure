using System.IO;
using System.Web;

namespace Documentation.Models
{
    public class Database
    {
        public static string GetDatabaseData()
        {
            string path = HttpContext.Current.Server.MapPath("~/App_Data/database.html");
            return File.ReadAllText(path);
        }
    }
}