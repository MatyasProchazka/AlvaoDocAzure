using System;
using System.Web.UI;

namespace DocCs
{
    public partial class _404 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.StatusCode = 404;
            Page.Response.StatusCode = 404;
        }
    }
}
