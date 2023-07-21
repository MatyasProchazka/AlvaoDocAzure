<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Akce</h1>
<p>Nabídka umožňuje spravovat přidělování licencí a audity v <a href="../license-and-install-overview">Přehledu licencí a instalací</a>.<br/>Většina možností je k dispozici pouze v případě, že máte v dolním okně vybrán alespoň jeden objekt. Objekty ve spodním okně se zobrazí, jakmile v horním okně vyberete alespoň jeden produkt, který je nainstalován na počítači.</p>
<p>Možnosti: V nabídce jsou uvedeny možnosti, které lze použít v případě, že se jedná o zařízení, které se nachází v systému:</p>
	<ul>
 <li><a href="actions/allocate-license">Přiřadit licenci počítači</a> - vyberte licenci, kterou chcete přiřadit vybranému počítači.</li>
 <li><strong>Přiřadit licenci automaticky</strong> - automatické přidělení volné licence vybranému počítači.</li>
 <li><strong>Odebrat licenci z počítače</strong> - odebere licenci z vybraného počítače.</li>
 <li><a href="actions/license-cover">Sdílet licenci</a>- přiřadit sdílenou licenci vybranému objektu.</li>
 <li><a href="actions/special-installation">Speciální instalace</a> - zapsat speciální instalaci produktu.</li>
 <li><strong>Audit produktu</strong></li>
 <li><strong>Vyjmutí produktu z auditu</strong></li> </li>
	</ul>
</asp:Content>
