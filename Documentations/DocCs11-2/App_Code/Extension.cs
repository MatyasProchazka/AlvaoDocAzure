using System.Web.UI;

namespace DocCs.App_Code
{
    public static class Extension
    {
        public static void RenderVersion(this Page page)
        {
            var items = page.Request.Path.Split('/');
            string version = items.Length > 2 ? items[2] : "11.2";

            page.Response.Write(page.Server.HtmlEncode(version));
        }
    }
}
