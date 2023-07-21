<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Najít</h1>
<p>Karta umožňuje <a href="../../../alvao-asset-management/searching/looking-up-objects">vyhledávat</a> ve správě aktiv jednotlivé objekty podle textu, který obsahují.</p>
	<ul>
 <li><strong>Text k vyhledání</strong> - zadejte text, který chcete vyhledat. <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 Místo libovolného úseku textu můžete použít znak &quot;*&quot;. Hvězdička představuje libovolný počet libovolných znaků.</div></li>
 <li><strong>Pouze celý text</strong> - zapněte, pokud chcete hledat pouze přesně zadaný text.<br/>Pokud je tato možnost vypnutá, program automaticky přidá znak &quot;*&quot; před a za hledané slovo - hledaný text se tedy hledá i v rámci jiného textu. V opačném případě je text vyhledáván přesně tak, jak je zadán, a znak &quot;*&quot; plní stejnou funkci.</li>
 <li><strong>Vyhledávání v</strong><ul>
 <li><b>Názvy objektů</b></li>
 <li><b>Hodnoty vlastností</b></li>
 <li><b>Text poznámky</b> - pole zprávy v protokolech objektů pro záznamy typu Poznámka</li>
 <li><b>Záznam objektu (historie objektu, změny vlastností</b> ) - pole zprávy v záznamu objektu pro tyto dva typy záznamů: <ul>
 <li>Historie objektu</li>
 <li>Informace (záznamy ve tvaru &quot;Vlastnost &quot;V&quot; byla změněna z &quot;X&quot; na &quot;Y&quot; nebo &quot;Vlastnost &quot;V&quot; byla odstraněna (původní hodnota &quot;X&quot;)&quot;</li>
 </ul>
 </li>
 <li><b>Systémové objekty (koš, šablony objektů, vyřazené prostředky, ...)</b></li>
  </ul>
 </li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Při vyhledávání v protokolu objektů jsou pro <em>typ záznamu</em>&quot;informace&quot; prohledávány pouze úseky mezi uvozovkami, tj. &quot;V&quot;, &quot;X&quot;, &quot;Y&quot;</div>

	<p><strong>Příklad 1. Vyhledávání textu - není zaškrtnuta možnost &quot;pouze plný text</strong>&quot;<table>
 <thead>
  <tr>
 <th>Vyhledávaný text</th>
 <th>Program najde</th>
 <th>Program nenajde</th>
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
