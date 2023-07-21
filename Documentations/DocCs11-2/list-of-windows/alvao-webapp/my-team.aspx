<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

  <h1>Můj tým</h1>
<p>Na této stránce můžete spravovat svůj <a href="../../alvao-service-desk/implementation/users/my-team">tým uživatelů</a>. </p>

<p>Možnosti:</p>
<ul>
  <li id="commands"><strong>Panel příkazů</strong><ul>
  <li><a href="my-team/new-user">Nový uživatel</a> - vytvoření nového uživatele v systému Alvao. Vytvoření uživatelé jsou v systému Alvao uvedeni jako vaše děti.</li>
  <li><a href="my-team/new-user-edit">Upravit</a> - úprava vlastností a oprávnění vybraného uživatele.</li>
  <li><strong>Změnit heslo</strong> - změna hesla vybraného uživatele.</li>
  <li><strong>Odstranit</strong> - odstranění vybraného uživatele. Po odstranění se uživatel již nemůže přihlásit do systému Alvao ani vytvářet požadavky.</li>
  </ul>
  </li>

  <li><strong>Tabulka uživatelů</strong> - obsahuje všechny děti a jejich vybrané atributy. Pokud chcete zobrazit pouze své přímé podřízené, vyberte možnost <em>Zobrazit pouze přímé podřízené.</em><br />Přizpůsobení tabulky <a href="../../alvao-asset-management/working-with-tables">přizpůsobení</a>.</li>
  
</ul>

</asp:Content>
