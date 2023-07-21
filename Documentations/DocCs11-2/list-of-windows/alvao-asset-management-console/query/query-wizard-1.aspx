<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Průvodce dotazem - Krok 1</h1>
<p>V prvním kroku vytváření <a href="../../../alvao-asset-management/searching/query">databázového dotazu</a> vyberte ve stromu objekt správy, tj. objekt, jehož data chcete sledovat.</p>
<p><strong>Příklad: Objekty správy</strong></p>
	<table>
 <thead>
  <tr>
 <th>Požadavek</th>
 <th>Objekt řízení</th>
 <th>Poznámka</th>
  </tr>
 </thead>
 <tbody>
  <tr>
 <td>Seznam všech monitorů</td>
 <td>monitor</td>
 <td></td>
  </tr>
  <tr>
 <td>Seznam všech počítačových sestav s velikostí pevného disku</td>
 <td>počítačová sestava</td>
 <td>Pevné disky budou sledovány pomocí poddotazu v rámci každé počítačové sestavy.</td>
  </tr>
 </tbody>
	</table>
</asp:Content>
