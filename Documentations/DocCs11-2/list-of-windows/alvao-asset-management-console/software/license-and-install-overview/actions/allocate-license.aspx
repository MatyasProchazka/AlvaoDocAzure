<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Licencování</h1>
<p>V tomto okně můžete hromadně přidělovat licence. Po otevření okna systém automaticky vybere nejvhodnější dostupné volné licence pro všechny nelicencované produkty.<br/>Tabulka <strong>Vybrané produkty</strong> zobrazuje produkty z vybraných instalací, které nemají přidělenou licenci. Vykřičník označuje produkty, které nemají v pravém seznamu vybranou licenci k přidělení. <br/>
Tabulka <strong>Vybrat licenci k přidělení</strong> zobrazuje všechny dostupné licence pro produkt vybraný v levém seznamu. Licence pro jednotlivé uživatele se zobrazí pouze v případě, že se počítač nachází ve stromu pod konkrétním uživatelem.</p>

<p>Pomocí možnosti <b>OK</b> přiřadíte počítači všechny vybrané licence.</p>



<h3>Výběr nejlepší licence</h3>
 <ul>
  <li>Bezplatná položka licence ve stejném nákladovém středisku a položka licence má stejný aktivační klíč jako zjištěný aktivační klíč produktu.</li>
  <li>Volná licence ve stejném nákladovém středisku a položka licence má stejný aktivační klíč jako zjištěný aktivační klíč produktu.</li>
  <li>Bezplatná položka bez nákladového střediska a položka licence má stejný aktivační klíč jako zjištěný aktivační klíč produktu.</li>
  <li>Bezplatná licence bez nákladového střediska a položka licence má stejný aktivační klíč jako zjištěný aktivační klíč produktu.</li>
  <li>Položka volné licence ve stejném nákladovém středisku (např. zadáno pouze inventární číslo).</li>
  <li>Volná licence ve stejném nákladovém středisku.</li>
  <li>Volná položka bez nákladového střediska.</li>
  <li>Volná licence bez nákladového střediska.</li>
 </ul>
 Pokud není nalezena žádná volná licence (např. jsou k dispozici pouze licence z jiného nákladového střediska), program je automaticky nevybere, ale zobrazí je v nabídce a v případě potřeby je můžete vybrat ručně. <br />Pokud chcete pro některý produkt vybrat jinou licenci, vyberte tento produkt v levé tabulce a v pravé tabulce zaškrtněte požadovanou licenci</asp:Content>
