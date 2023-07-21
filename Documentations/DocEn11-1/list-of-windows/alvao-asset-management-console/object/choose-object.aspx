<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Select object</h1>
<p>In this Window you can search for an object (e.g. the target object to move) in the tree in two ways. The object to be moved is inserted as a child object of the selected object.</p>
<p>If you move an object to the trash or to a discarded asset, the <a href="lic-release">
window that allows you to release the object's assigned licenses</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>Tree Search</strong> - enter the text that is contained in the name of the search object and confirm with <span class="key">
 Enter</span> (or click the <strong>Search</strong> button).
 <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 The text can also contain the wildcard character *.<br/>
 Pressing the <span class="key">Enter</span> key (or the <strong>
 Search</strong>) button) to step through the tree and select objects that match the filter entered in this field.<br/>
 Once you have found the desired object in the tree, you can confirm the move with the <strong>OK</strong> key.
 </div>

  <p><strong>Example: search text</strong></p>
  <table>
 <thead>
 <tr>
 <th>Search text</th>
 <th>Program finds</th>
 <th>Program does not find</th>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>32</td>
 <td>32; 32 MB; 32 MB RAM</td>
 <td></td>
 </tr>
 <tr>
 <td>32*</td>
 <td>32; 32 MB</td>
 <td>RAM 32 MB</td>
 </tr>
 <tr>
 <td>*32*</td>
 <td>32; 32 MB; RAM 32MB</td>
 <td></td>
 </tr>
 </tbody>
  </table>
  <br />
 </li>
 <li><strong>Objects</strong> - select an object in the object tree.</li>
	</ul>
</asp:Content>
