<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Automatické vytváření požadavků</h1>
  <p>V tomto okně můžete nastavit pravidla pro automatické vytváření propojených žádostí ve vybraném stavu procesu.</p>
  <p>Možnosti:</p>

  <ul>
      <li><b>Příkazový panel</b>    <ul>
                <li><a href="automatic-request-creation/add">Nové pravidlo</a> - vytvoření nového pravidla</li>
                <li><a href="automatic-request-creation/edit">Upravit</a> - úprava vybraného pravidla</li>
                <li>Odstranit - odstranění pravidla pro vybranou šablonu požadavku</li>
            </ul>
        </li>  
        <li><b>Tabulka</b> - tabulka obsahuje pravidla pro automatické vytváření propojených žádostí ve zvoleném stavu procesu. Obsah tabulky lze <a href="../../../../../../../alvao-asset-management/working-with-tables">upravit</a> podle potřeby.</li>
  </ul>

</asp:Content>
