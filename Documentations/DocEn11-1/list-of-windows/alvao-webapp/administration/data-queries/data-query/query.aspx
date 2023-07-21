<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

<h1>Query</h1> 
<p>On this page, enter the SQL query.</p>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        A poorly defined SQL query can irreversibly damage the Alvao database. Always create and test SQL queries on a testing copy of the production database.
    </div>


<p>Options:</p>
	<ul>
  <li><strong>Command panel</strong><ul>
      <li><strong>Save</strong> - saves changes.</li>
      <li><strong>Execute</strong> - runs the SQL query and previews the results.</li>
      </ul>
        </li>
  <li><strong>Query editor</strong> - enter the SQL query.</li>

	</ul>

    <p>
        You can use the following variables in the SQL query:</p>
    <ul>
        <li>@personId - ID&nbsp; of the user (<a href="../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">tPerson</a>.iPersonId) running the data query.</li>
        <li>@localeId - LCID (<a href="../../../../../alvao-asset-management/implementation/customization/database#U_dbo.tLocale">tLocale</a>.iLocaleId) of the preferred language of the user running the data query.</li>
        <li>@customId - the value of the <em>customId</em> query string parameter. You can use this variable in customizations, e.g., <a href="../../../../../modules/alvao-am-custom-apps/applications/i-entity-tab">IEntityTab</a>. For instance, the URL of the data query may look like this: <em>https://contoso.onalvao.com/Alvao/DataQuery/Result?id=1&customId=1</em>.</li>
    </ul>
    <p>
        On the page <a href="../../../data-queries">Data queries</a>, the users can view all columns returned by the SQL query. If the column name ends with &quot;TicketId&quot;, &quot;NodeId&quot;, or &quot;PersonId&quot; (e,q. &quot;MentorPersonId&quot;), the values are displayed as links to the corresponding entity page. When an entire row is selected, the entity page for the first such column is displayed on the right.</p>
    <p>
        As an example, use SQL queries in <a href="../../../../../alvao-asset-management/searching/database-sql/samples">SQL query examples</a>.</p>

</asp:Content>
