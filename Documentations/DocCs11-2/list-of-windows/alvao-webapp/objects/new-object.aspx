<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový objekt</h1>
  <p>V tomto okně vyberte ve stromu objektů vzorový objekt, na jehož základě chcete vytvořit nový objekt.</p>
  <p>
  Možnosti:</p>
  <ul>
  <li>Pokud znáte název vzorového objektu<b>,</b> zadejte alespoň jeho část a stiskněte klávesu <i>Enter</i>. Pod vstupním řádkem se rozbalí příslušné součásti stromu a nalezené objekty budou zvýrazněny žlutě.</li>
  <li><b>Vzorky objektů/vzory objektů</b> - pomocí tlačítka "+" rozbalte nabídku objektů, vyberte objekt, který chcete použít jako vzor, a stiskněte tlačítko <b>OK</b>. Pokud vyberete objekt typu <i>Assembly</i>, který obsahuje podřazené objekty, bude objekt zkopírován včetně podřízených objektů na první úrovni. U ostatních typů objektů se podřazené objekty nekopírují.</li>
  </ul>
</asp:Content>
