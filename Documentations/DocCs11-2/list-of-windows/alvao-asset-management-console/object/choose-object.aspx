<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Vybrat objekt</h1>
<p>V tomto okně můžete vyhledat objekt (např. cílový objekt, který chcete přesunout) ve stromu dvěma způsoby. Objekt, který má být přesunut, se vloží jako podřazený objekt vybraného objektu.</p>
<p>Pokud objekt přesunete do koše nebo do vyřazeného majetku, zobrazí se <a href="lic-release">okno, které umožňuje uvolnit přiřazené licence objektu</a>.</p>
<p>Volby: V nabídce je možné zobrazit položky, které se vztahují k objektům, které jsou v majetku:</p>
	<ul>
 <li><strong>Stromové hledání</strong> - zadejte text, který je obsažen v názvu hledaného objektu, a potvrďte klávesou <span class="key">Enter</span> (nebo klikněte na tlačítko <strong>Hledat</strong> ) <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip: V případě, že se jedná o vyhledávání, můžete se obrátit na tlačítko Vyhledat:</div>
 Text může obsahovat také zástupný znak *.<br/>Stisknutím klávesy <span class="key">Enter</span> (nebo tlačítka <strong>Hledat</strong>)) postupně procházíte stromem a vybíráte objekty, které odpovídají filtru zadanému v tomto poli.<br/>Jakmile jste ve stromu našli požadovaný objekt, můžete přesun potvrdit klávesou <strong>OK</strong> </div>

  <p><strong>Příklad: hledaný text</strong></p>
  <table>
 <thead>
 <tr>
 <th>Hledaný text</th>
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
  <br />
 </li>
 <li><strong>Objekty</strong> - vyberte objekt ve stromu objektů.</li>
	</ul>
</asp:Content>
