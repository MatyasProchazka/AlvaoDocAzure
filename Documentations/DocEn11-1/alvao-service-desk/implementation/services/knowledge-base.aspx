<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Knowledge base</h1>
    <p>
        If you want to change the number of current service messages displayed in the service catalog, edit the <strong>tProperty</strong> table in the Alvao database and insert or edit a row where the value in the <strong>sProperty</strong> column is: <strong>ServiceDesk.ServiceCatalog.NewsCount</strong> and in the <strong>iPropertyValue</strong> column insert the number of current service messages displayed. By default, 3 current service messages are displayed.
    </p>
    <p>
        Adding a row to the database:<br />
        <font face="Consolas" size="2" color="#0000ff">insert into</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">values</font> <font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.NewsCount'</font><font face="Consolas" size="2" color="#808080">,</font> 3<font face="Consolas" size="2" color="#808080">);</font>
    </p>
    <p>
        Edit a row in the database:<br />
        <font face="Consolas" size="2" color="#ff00ff">update</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#0000ff">set</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> 3 <font face="Consolas" size="2" color="#0000ff">where</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.NewsCount'</font><font face="Consolas" size="2" color="#808080">;</font>
    </p>
    <p>
        If you want to change the number of displayed knowledge for a service in the service catalog, edit the <strong>tProperty</strong> table in the Alvao database and insert, or edit, a row where the value in the <strong>sProperty</strong> column is: <strong>ServiceDesk.ServiceCatalog.KnowledgeCount</strong> and in the <strong>iPropertyValue</strong> column insert the number of displayed service knowledge. By default, 5 service knowledge is displayed.
    </p>
    <p>
        Adding a row to the database:<br />
        <font face="Consolas" size="2" color="#0000ff">insert into</font> <font face="Consolas" size="2" color="#008080">tProperty</font><font face="Consolas" size="2" color="#808080">(</font><font face="Consolas" size="2" color="#008080">sProperty</font><font face="Consolas" size="2" color="#808080">,</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font><font face="Consolas" size="2" color="#808080">)</font> <font face="Consolas" size="2" color="#0000ff">values</font> <font face="Consolas" size="2" color="#808080">(</font></font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.KnowledgeCount'</font><font face="Consolas" size="2" color="#808080">,</font> 3<font face="Consolas" size="2" color="#808080">);</font>
    </p>
    <p>
        Edit a row in the database:<br />
        <font face="Consolas" size="2" color="#ff00ff">update</font> <font face="Consolas" size="2" color="#008080">tProperty</font> <font face="Consolas" size="2" color="#0000ff">set</font> <font face="Consolas" size="2" color="#008080">iPropertyValue</font> <font face="Consolas" size="2" color="#808080">=</font> 3 <font face="Consolas" size="2" color="#0000ff">where</font> <font face="Consolas" size="2" color="#008080">sProperty</font> <font face="Consolas" size="2" color="#808080">=</font> </font><font face="Consolas" size="2" color="#FF0000">'ServiceDesk.ServiceCatalogue.KnowledgeCount'</font><font face="Consolas" size="2" color="#808080">;</font>
    </p>
</asp:Content>

