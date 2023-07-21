<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Upravit</h1>
  <p>Tento formulář slouží k úpravě jedné nebo více <a href="../../../../alvao-service-desk/requests">žádostí</a>.</p>
  <p>Možnosti:</p>
  <ul>
 <li><strong>Název požadavku</strong> - v případě potřeby upravte název požadavku.</li> <li><strong>Stav</strong> - v případě potřeby změňte stav požadavku, viz záložka <a href="../request">Požadavek</a> - <em>Průběh řešení</em>.</li> <li><strong>Interní cíl</strong> - povolte, pokud chcete v požadavku nastavit <a href="../../../../alvao-service-desk/requests/internal-target">interní cíl</a>, a poté zadejte název a termín cíle. Po dokončení interního cíle znovu použijte příkaz <em>Upravit</em> a vypněte možnost <em>Interní cíl</em> nebo ji změňte na jiný interní cíl.<br />
 Název interního cíle by měl odpovídat požadovanému výsledku řešení v době plánovaného termínu. Například pokud se požadavek analyzuje, interní cíl je "Analýza" se stanoveným datem dokončení. Název interního cíle nemusí vždy odpovídat názvu stavu požadavku, např. v rámci stavu " <em>Řešení"</em> může probíhat analýza, návrh a implementace. <li>Další položky viz formulář " <a href="../new-request">Nový požadavek"</a>. Pokud upravujete více požadavků najednou, můžete upravovat pouze položky, které existují ve všech vybraných požadavcích </li> </ul>


</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

