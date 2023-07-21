<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový dokument</h1>
 <p>Na této stránce můžete vytvořit nový dokument.</p>

  <p>
  Možnosti:</p>

 <ul>
    <li><b>Typ dokumentu</b> - vyberte <a href="../../../alvao-asset-management/documents">typ</a> dokumentu. </li>
    <li><b>Název dokumentu</b> - v případě, že používáte pole <em>Číslo dokumentu</em> jako jedinečný identifikátor dokumentu, můžete toto pole vynechat nebo zadat popisné informace pro snadnou identifikaci dokumentu ve výpisech. Pokud pole <em>Číslo dokumentu</em> nepoužíváte, je toto pole povinné a doporučuje se zadat jedinečný název dokumentu.</li>
    <li><b>Číslo dokumentu</b> - pokud není číslo generováno <a href="../../alvao-asset-management-console/tools/lists/numeric-sequences">sekvencí</a> ani není k jednoznačné identifikaci dokumentů použit <em>název dokumentu</em>, zadejte do tohoto pole jedinečný identifikátor dokumentu. </li>
    <li><b>Přílohy</b> - (nepovinné) přidejte soubor nebo odkaz na přílohy k dokumentu. </li>
    <li><b>Objekty</b> - (nepovinné) propojte dokument s konkrétními objekty. </li>
    <li><b>Licence</b> - (nepovinné) propojte dokument s konkrétními softwarovými licencemi. </li>
    <li><b>Externí číslo dokumentu</b> - (nepovinné) zadejte původní číslo dokumentu vydané vaším dodavatelem, partnerem atd. </li>
    <li><b>Datum vydání</b> - (nepovinné) zadejte datum vydání dokumentu. </li>
    <li><b>Dodavatel</b> (nepovinné) - zadejte alespoň část názvu dodavatele a poté vyberte dodavatele z rozevíracího seznamu. Toto pole je k dispozici pouze pro typ dokladu <em>Faktura</em>.</li>
    <li><b>Složka dokladu</b> - vyberte <a href="../administration/asset-management/document-folders">složku dokladu</a> ze seznamu. </li>
    <li><b>Poznámky</b> - (nepovinné) zadejte další informace o dokladu. </li>
</ul>



</asp:Content>
