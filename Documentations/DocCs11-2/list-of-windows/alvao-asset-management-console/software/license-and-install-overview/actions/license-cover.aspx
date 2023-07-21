<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Pokrytí licencí</h1>
<p>V tomto okně můžete zadat sdílenou licenci.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Použít licenci</strong><ul>
 <li><strong>ze stolního počítače</strong> - vyberte, zda je sdílená licence nainstalována na stolním počítači.  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 U některých licencí, pokud je produkt nainstalován na stolním počítači, může být pod stejnou licencí nainstalován i na přenosném počítači téhož uživatele. V takovém případě pro instalaci produktu na přenosný počítač vyberte přidružený stolní počítač, ze kterého bude licence čerpána.</div></li>
 <li><strong>users</strong> - vyberte, pokud chcete zaregistrovat počítač, který používá více osob a není uveden pod žádným konkrétním uživatelem.</li>
  </ul>
 <li><strong>...</strong> - vyberte z nabídky nebo v samostatném okně konkrétní počítač nebo uživatele, jehož licence bude sdílena na cílovém počítači.<br/>Podle toho, jakou licenci používáte, <a href="users">se otevře okno Uživatelé</a> nebo <a href="computers">Počítače</a>.</li> <li><strong>Poznámka</strong> - zadejte poznámku o pokrytí licence</li></ul>
</asp:Content>
