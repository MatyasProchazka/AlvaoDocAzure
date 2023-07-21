<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový počítač</h1>
<p>V tomto okně můžete v databázi Asset Management vytvořit nové počítače. Počítače, které jsou v síti detekovány, můžete vytvářet automaticky nebo je přidat ručně.</p>
	<ul>
 <li><strong>Vyhledat nové počítače v síti</strong> - výběrem této možnosti prohledáte síť a vytvoříte počítače, které jsou v síti nově objeveny.</li>
 <li><strong>Vytvořit počítač ručně</strong> - vyberte, pokud chcete v databázi vytvořit nový počítač.  <ul>
 <li><strong>Druh objektu</strong> - vyberte z <a href="../../../alvao-asset-management/implementation/node-class">druhu objektu</a> typ počítače. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 Abyste mohli vybrat druh objektu počítače, musí pro tento druh existovat šablona. Proto se v nabídce zobrazují pouze typy s existující šablonou.<br/>Výchozí druh objektu můžete změnit v <strong>aplikaci ALVAO WebApp</strong> - <strong>Management</strong> - <strong>Message</strong>Asset Management</strong> - <strong>Settings</strong> - <a href="../../alvao-webapp/administration/asset-management/settings/general">General</a>.</div>
 
 
 </li>
 <li><strong>Hostname (Název hostitele)</strong> - Zadejte jedinečný název počítače v síti.  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 Pokud je pro vybraný typ počítače aktivní číselný rozsah, název se automaticky vygeneruje podle typu počítače a pořadí jeho vytvoření ve Správě prostředků.<br/> Název tedy nelze zadat ručně.  </div></li>
 <li><strong>Zjišťovat podrobnosti o počítači po síti pomocí uložených nastavení</strong> - povolte, pokud chcete automaticky naplánovat zjišťování nového počítače (podle <a href="../../alvao-webapp/administration/asset-management/settings/detection">globálního nastavení zjišťování</a> nastaveného ve správě).</li>
  </ul>
 </li>
	</ul>
</asp:Content>
