<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Odeslat oznámení</h1>

  <p>Tato stránka slouží k zasílání oznámení o probíhající webové inventuře uživatelům, kteří se jí účastní.</p>

  <p>Příkazy:</p>
  <ul>
  <li>Příkazy:<b>Odeslat</b> - odeslání oznámení uživatelům.</li>
  <li><b>Upravit oznámení</b> - zobrazí stránku <a href="../../../alvao-webapp/administration/asset-management/settings/web-asset-check">Nastavení - Webová inventura</a>, kde můžete upravit text oznámení a další položky.</li>
  </ul>

  <p>Volby: V případě, že se jedná o oznámení, které se zobrazí v seznamu, můžete zadat, zda se jedná o oznámení:</p>
  <ul>
  <li><b>From</b> - zobrazí e-mailovou adresu, ze které budou oznámení odesílána. Pomocí příkazu <i>Upravit oznámení</i> můžete adresu změnit.</li>
  <li><b>Komu</b> - zobrazí aktuální počet příjemců oznámení, tj. uživatelů, kteří ještě nepotvrdili všechen majetek zařazený do inventury, za něž jsou odpovědní.</li>
  <li><b>Náhled oznámení v jazyce</b> - vyberte jazyk, ve kterém chcete zobrazit náhled obsahu oznámení. Nabídka obsahuje pouze jazyky, do kterých je oznámení přeloženo. Před odesláním oznámení doporučujeme zkontrolovat, zda jsou překlady oznámení ve všech jazycích aktuální. Každý uživatel obdrží oznámení v preferovaném jazyce. Pokud pro jejich jazyk neexistuje překlad (výchozí stav), obdrží oznámení v <a href="../../../../alvao-service-desk/implementation/multi-languages">jazyce systému Alvao</a>.</li>
  <li><b>Předmět</b> - náhled předmětu oznámení ve zvoleném jazyce.</li>
  <li><b>Text</b> - náhled textu oznámení ve zvoleném jazyce.</li>
  </ul>

</asp:Content>
