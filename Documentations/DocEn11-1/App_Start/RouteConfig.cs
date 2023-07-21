using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace DocEn
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute("issue", "known-issues/{id}", "~/known-issues/issue.aspx");
            routes.MapPageRoute("attachment", "known-issues/attachment/{id}", "~/known-issues/attachment.aspx");
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings);
            routes.RouteExistingFiles = true;
        }
    }
}
