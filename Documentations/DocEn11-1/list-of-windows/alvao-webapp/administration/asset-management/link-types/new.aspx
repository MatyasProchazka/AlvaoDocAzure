<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New link type</h1>
  <p>Use this form to create a new custom <a href="../../../../../modules/alvao-configuration-management/object-links">object-links</a> type.</p>
  <p>Options:</p>
  <ul>
  <li><b>Origin Name</b> - enter a name that captures the meaning of the object from which the link originates, e.g. <i>Is backed up</i>. If it is a non-directional link, enter a name that describes the objects on either side of the link.</li>
  <li><b>End Name</b> - if this is a directional link, enter a name that captures the meaning of the object to which the link is pointing, e.g. <i>Backs up</i>.</li>
  <li><b>Directional</b> - turn on if the direction of the link is important. In the diagram, this direction will be shown by an arrow pointing from the starting object to the ending object.</li>
  <li><b>Allow cycles</b> - turn on if links of this type can form cycles, e.g. A -&gt; B -&gt; C -&gt; A.</li>
  <li><b>The health of the end object is affected by the health of the starting object</b> - enable if links of this type can transfer <a href="../../../../../modules/alvao-configuration-management/object-health">health</a> of the starting object to the end object. The link transmits information only about the existence of serious incidents. The option is only displayed if the <a href="../../../../../alvao-service-desk">ALVAO Service Desk</a> product is also activated.</li>
  <li><b>Multiplicity</b> - select the cardinality of the link. If you select 1:N, no more than one link of this type will ever be allowed to go to a single object. However, any number of links of this type will be able to exit from a single object. When <i>Allow cycles</i> is enabled, only trees will be able to form links of this type. If you select M:N, there is no limit to the number of links directed to a single object.</li>
  <li><b>Line Style</b> - select the line style that the link will be represented by in the diagram.</li>
  <li><b>Line Color</b> - select the color of the line that will be used to represent the link in the diagram.</li>
  </ul>
</asp:Content>
