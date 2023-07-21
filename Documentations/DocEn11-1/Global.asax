<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">
    void Application_Start(object sender, EventArgs e)
    {
        DocEn.RouteConfig.RegisterRoutes(System.Web.Routing.RouteTable.Routes);
    }
</script>