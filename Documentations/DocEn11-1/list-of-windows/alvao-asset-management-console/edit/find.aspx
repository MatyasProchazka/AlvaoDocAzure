<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Find</h1>
<p>The tab allows <a href="../../../alvao-asset-management/searching/looking-up-objects">
search</a> in Asset Management for individual objects by the text they contain.</p>
	<ul>
 <li><strong>Text to find</strong> - enter the text you want to search for. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 You can use the &quot;*&quot; character instead of any section of text. The asterisk represents any number of arbitrary characters.</div></li>
 <li><strong>Full text only</strong> - turn on if you want to search only for exactly the text you specify.<br/>
 If the option is turned off, the program automatically adds the character &quot;*&quot; before and after the search word - so the searched text is also searched within other text. Otherwise, the text is searched for exactly as it is entered, and the &quot;*&quot; character performs the same function.</li>
 <li><strong>Search in</strong>
  <ul>
 <li><b>Object Names</b></li>
 <li><b>Property values</b></li>
 <li><b>Note text</b> - message field in object logs for records of type Note</li>
 <li><b>Object log (object history, property changes)</b> - message field in object log for the following two record types: <ul>
 <li>Object History</li>
 <li>Information (records in the form &#39;Property &quot;V&quot; was changed from &quot;X&quot; to &quot;Y&quot; or &#39;Property &quot;V&quot; was removed (original value &quot;X&quot;)</li>
 </ul>
 </li>
 <li><b>System objects (bin, object templates, discarded assets, ...)</b></li>
  </ul>
 </li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 When searching in the object log, the following are for <em>Record Type</em>
 &quot;information&quot; only the sections between quotes are searched, i.e. &quot;V&quot;, &quot;X&quot;, &quot;Y&quot;.
	</div>

	<p><strong>Example 1. Search text - option &quot;full text only&quot; is not checked</strong>
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
	</p>
</asp:Content>
