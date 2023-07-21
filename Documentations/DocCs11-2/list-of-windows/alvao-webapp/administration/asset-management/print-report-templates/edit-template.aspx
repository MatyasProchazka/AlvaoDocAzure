<%@ Page masterpagefile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Upravit</h1>
  <p>Tento formulář slouží k úpravě <a href="../print-report-templates">šablon tiskových sestav</a>.</p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Název</strong> - zadejte název šablony.</li>
  <li><strong>Popis</strong> - zadejte případný popis šablony.</li>
  <li><strong>Přidat soubory</strong> - nahrajte všechny soubory definující šablonu.  Obvykle se jedná o tři povinné soubory s příponami rep, htm a xsl nebo jeden soubor htm, dále soubory css a případně obrázky, např. ve formátu gif nebo png.  <div class="note">
	 <div class="icon"></div>
	  <div class="title">Poznámka:</div>
	  Šablony jiných typů tiskových sestav než <a href="../../../../../alvao-asset-management/implementation/customization/reports">REP</a> nelze do databáze nahrát. Při jejich použití je však můžete vybrat ze složky na disku v AM Console.  </div>
  </li>
  </ul>

</asp:Content>
