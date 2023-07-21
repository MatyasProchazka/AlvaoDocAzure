<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Povolení</h1>

    <p>Možnosti:</p>
    <ul>
        <li><strong>Vyberte osobu nebo skupinu</strong> - vyberte osobu nebo skupinu, která bude mít konkrétní oprávnění.</li>
        <li><strong>Objects of the kind</strong> - vyberte konkrétní typ objektu. Oprávnění pro danou vlastnost se pak budou vztahovat pouze na konkrétní typ objektu       <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Je možné zvolit možnost "&lt;všechny typy objektů&gt;", v takovém případě bude oprávnění pro vlastnost platit pro všechny typy objektů."          </div>
        </li>
        <li><strong>Oprávnění</strong> - viz <a href="../../../../../../../alvao-asset-management/objects-and-properties/property-security">Zabezpečení vlastností</a>.</li>
    </ul>
  

</asp:Content>
