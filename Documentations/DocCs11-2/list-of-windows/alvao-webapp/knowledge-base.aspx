<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Znalostní báze</h1>
  <p>Na této stránce můžete vyhledávat a číst <a href="../../alvao-service-desk/knowledge-base">znalosti</a>.</p>

  
  Možnosti:<ul>
  <li>Záhlaví stránky<ul>
  <li><strong>Hledat v...</strong> - zadejte slovo nebo text, který je obsažen v hledané znalosti, a stiskněte klávesu <span class="key">Enter</span>. Nalezené znalosti se zobrazí v seznamu znalostí na levé straně stránky. Hledá se název, anotace, text znalosti a názvy příloh.<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip: V případě, že se jedná o znalost, která se nachází v databázi, je možné použít tzv:</div>
	  Pomocí příkazu <em>Rozšířené hledání</em> můžete hledání omezit na znalosti z určité služby <em> </em></div>

  </li>
  </ul>
  </li>
  <li>Panel příkazů<ul>
  <li><strong>Rozšířené hledání</strong> - zobrazení možností pro pokročilé vyhledávání znalostí<ul>
  <li><strong>Služba</strong> - zadejte alespoň část názvu služby a poté vyberte službu z rozevírací nabídky. Tím se v seznamu znalostí na levé straně stránky zobrazí pouze znalosti z vybrané služby.</li>
  <li><strong>Včetně podřízených služeb</strong> - tuto možnost povolte, pokud chcete zobrazit znalosti z vybrané služby a také ze všech jejích podřízených služeb. </li>
  </ul>
  </li>
  <li><strong>Základní vyhledávání</strong> - skryje možnosti pokročilého vyhledávání</li>
  <li><a href="knowledge-base/manage">Správa</a> - vytváření nových a úprava stávajících znalostí </li>
  <li><a href="knowledge-base/manage/new-knowledge">Nová znalost</a> - vytvoření nové znalosti</li>
  <li><a href="knowledge-base/manage/edit-knowledge">Upravit</a> - úprava vybraných znalostí </li>
  <li><strong>Smazat</strong> - smazání vybrané znalosti. Tím se znalost přestane zobrazovat uživatelům, ale zůstane uložena v databázi a v případě potřeby ji můžete obnovit příkazem <em>Upravit</em>. </li>
  </ul>
  </li>
  <li>Seznam znalostí - seznam znalostí se zobrazuje v levé části stránky. Klikněte na znalost v seznamu a vybraná znalost se zobrazí v pravé části stránky. </li>
  <li>Znalost - znalost, která je aktuálně vybrána v seznamu vlevo, se zobrazí na pravé straně stránky.</li>
  </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

