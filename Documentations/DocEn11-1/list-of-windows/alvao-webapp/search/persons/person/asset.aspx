<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Asset</h1>
<p>This page displays information about one entrusted property. </p>


 
<p>Options:</p>
<ul>
	
  <li>Command panel<ul>
      <li><strong>Display in tree</strong> - go to the <a href="../../../objects/object">Object</a> page representing the object. This command is available only to eligible users.</li>
      </ul>
    </li>
    <li>Icon of the object, its type, and name</li>
  <li><strong>Submit new request</strong> - select the service to which you want to submit a new request related to the asset.</li>
  <li>Tabs<ul>
  <li><b>Properties</b> - a list of properties of the asset</li>
  <li><b>Software</b> - an overview of the software that is installed on the computer. The tab is displayed only on objects of the computer type. Users who are responsible for the software on the computer (see the <i>Software Responsible</i> property) also see information about the respective software licenses on the tab.</li>
  </ul>
  </li>
</ul>
  

</asp:Content>
