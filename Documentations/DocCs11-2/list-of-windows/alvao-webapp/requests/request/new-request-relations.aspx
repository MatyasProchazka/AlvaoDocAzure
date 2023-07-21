<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nová propojená požadavek</h1>
  <p>
  Formulář obsahuje stejné položky jako <a href="new-request">Nový požadavek</a></p>
  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Při otevírání formuláře, například pomocí vlastního příkazu, můžete vybrat typ vazby a služby, které budou ve formuláři předvyplněny, zadáním následujících parametrů v url: <ul>
  <li>
 <strong>relCompositeId</strong> - toto číslo představuje typ vazby, který bude předvyplněn ve formuláři. Hodnotu parametru získáte sečtením dvou částí. Horních 16 bitů slouží pro id typu odkazu z tabulky <a href="../../alvao-asset-management/implementation/customization/database#U_dbo.TicketRelationType">TicketRelationType</a> a dolních 16 bitů obsahuje číslo 1 nebo 2, které určuje, na které straně požadavku se odkaz nachází.  <br />
  <br />
  <table>
  <tr>
  <th>Typ spojení</th>
  <th>RelCompositedId</th>
  </tr>
  <tr>
  <td>Souvisí s</td>
  <td>65637</td>
  </tr>
  <tr>
  <td>Je nadřazen</td>
  <td>131073</td>
  </tr>
  <tr>
  <td>Předchází</td>
  <td>196609</td>
  </tr>
  <tr>
  <td>Blokování</td>
  <td>262145</td>
  </tr>
  <tr>
  <td>Je duplicitní</td>
  <td>327681</td>
  </tr>
  <tr>
  <td>Je podřízeno</td>
  <td>131074</td>
  </tr>
  <tr>
  <td>Následuje</td>
  <td>196610</td>
  </tr>
  <tr>
  <td>Je blokován</td>
  <td>262146</td>
  </tr>
  <tr>
  <td>Duplikáty</td>
  <td>327682</td>
  </tr>
  </table>
  <br />
  </li>
  <li>
 <strong>sectionId</strong> - id služby<a href="../../../alvao-asset-management/implementation/customization/database#U_dbo.tHdSection">(tHdSection</a>.iHdSectionId), které má být předvyplněno ve formuláři.  </li>
  </ul>
  </div>

</asp:Content>

