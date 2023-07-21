<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Údržba databáze</h1>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Obnovení dat pro reporty</strong> - přidání sloupců reprezentujících nové <a href="../../../alvao-asset-management/implementation/customization/database#view-list">databázové pohledy</a> ve schématu <em>dotazů</em>, které jsou určeny pro analýzu dat a reporting, do <a href="../../../alvao-service-desk/implementation/custom-items">vlastních polí</a> požadavků a nových <a href="../../../alvao-asset-management/objects-and-properties">vlastností</a> objektů. Tuto aktualizaci není třeba provádět před každou analýzou nebo sestavou, ale pouze po přidání nových vlastních polí nebo vlastností.</li>
  <li><strong>Optimalizace výkonu</strong> - aktualizujte statistiky a defragmentujte indexy v databázi a odstraňte dočasná data. Tato operace se provádí <a href="../../../alvao-asset-management/implementation/installation/maintenance">pravidelně automaticky</a>. Tento příkaz použijte pouze v případě, že výkon databáze poklesl a systém Alvao se zpomalil.  <div class="caution">
	 <div class="icon"></div>
	  <div class="title">Upozornění:</div>
	  Optimalizaci výkonu nedoporučujeme provádět během doby provozu systému, protože může trvat několik minut a aplikace během této doby mohou přestat reagovat.  </div>
	  <div class="note">
	 <div class="icon"></div>
	  <div class="title">Poznámka:</div>
	  Pro optimalizaci výkonu je nutné mít nainstalovanou <a href="../../../alvao-service-desk/implementation/installation/installation-server-manual">službu ALVAO</a> </div>
  </li>
  <li>
 <strong>Opravit databázi -</strong> Přepočítejte předpočítané hodnoty v databázi, jako jsou pomocné tabulky jazykových lokalizací, cesty ve stromu objektů (AM), názvy objektů generované z hodnot vlastností (AM) atd. Tento příkaz je určen pouze pro nouzové situace a není třeba jej spouštět pravidelně.</li>
  </ul>



 

</asp:Content>
