<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Links</h1>
<p>In this Window you can manage <a href="../../../../../../alvao-asset-management/software-management/licenses-links">
links between licenses</a>. Existing links (licenses currently being edited) are shown in the table.<br/>
Links between licenses can be of the following types:</p>


 <table>
	<thead>
 <th>Link type</th>
 <th>Description</th>
	</thead>
	<tbody>
 <tr>
  <td>Related to - Related to</td>
  <td>License A is related to License B.</td>
 </tr>
 <tr>
  <td>Precedes before - Follows after</td>
  <td style="mso-bidi-font-size: 11.0pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: &quot;Times New Roman&quot;; mso-bidi-theme-font: minor-bidi; mso-ansi-language: CS; mso-fareast-language: EN-US; mso-bidi-language: AR-SA" class="style2">
  License A precedes License B. For example: the MS Office 20003 license precedes the MS Office 2010 license.</td>
 </tr>
	</tbody>
</table>
<p>Options:</p>
	<ul>

 <li><strong>Add</strong>
   - add a new link.</li>
 <li><strong>Edit</strong>
   - edit the selected link.</li>
 <li><strong>Remove</strong> - remove the selected link.</li>
	</ul>

	
</asp:Content>
