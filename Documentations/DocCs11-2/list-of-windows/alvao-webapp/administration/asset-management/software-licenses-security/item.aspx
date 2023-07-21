<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Zabezpečení softwarových licencí - oprávnění</h1>
  <p>V tomto okně můžete přidat nebo upravit vybraná oprávnění osoby nebo skupiny k softwarovým licencím organizace. Jeden uživatel (nebo skupina) může mít více těchto oprávnění.</p>
  <p>Volby: 1:</p>
  <ul>
  <li><strong>Vyberte osobu nebo skupinu</strong> - zadejte část jména osoby nebo názvu skupiny a z nabídky vyberte osobu nebo skupinu, které chcete nastavit oprávnění.</li>
  <li><strong>Softwarové licence patřící organizaci</strong> - vyberte objekt typu <em>Organizace</em>, na jehož licence se budou oprávnění vztahovat. Pokud žádnou organizaci nevyberete, oprávnění se vztahuje na licence, které nejsou přiřazeny žádné organizaci.</li>
  <li><strong>Oprávnění</strong><ul>
  <li><strong>Číst</strong> - povolte, pokud chcete, aby vybraná osoba nebo skupina viděla všechny licence vybrané organizace.</li>
  <li><strong>Změnit</strong> - zapněte, pokud chcete, aby vybraná osoba nebo skupina mohla upravovat a provádět další operace s licencemi vybrané organizace.</li>
  </ul>
  </li>
  </ul>
</asp:Content>
