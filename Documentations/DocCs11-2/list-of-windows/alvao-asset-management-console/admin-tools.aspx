<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nástroje pro správce</h1>
<p>Tato nabídka obsahuje příkazy pro správce počítače. Tato stránka popisuje pouze výchozí nástroje, které jsou po instalaci dostupné v AM Console. Pomocí <strong>. správy příkazů</strong> může správce Asset Management vytvořit další příkazy a určit umístění v místní nabídce, ze kterého budou dostupné.</p>
<p>Options:</p>
	<ul>
 <li><strong>NetMeeting client -</strong> připojení k vybranému počítači pomocí služby <a href="https://en.wikipedia.org/wiki/Microsoft_NetMeeting">NetMeeting</a>.</li>
 <li><strong>Připojení ke vzdálené ploše</strong> - připojení k vybranému počítači prostřednictvím vzdálené plochy.</li>
 <li><strong>VNC klient</strong> - připojení k vybranému počítači pomocí <a href="https://en.wikipedia.org/wiki/Virtual_Network_Computing">virtuálního síťového počítače</a>.</li>
 <li><strong>Internet Explorer</strong> - otevření kořenové adresy vybraného serveru (v aplikaci Internet Explorer). Pokud vybraný počítač není serverem, je adresa považována za nedostupnou.</li>
 <li><strong>Správa počítače</strong> - správa počítače pomocí <a href="http://windows.microsoft.com/en-us/windows-vista/what-is-the-microsoft-management-console-mmc">konzoly Microsoft Management Console</a>.</li>
 <li><a href="tools/lists/commands">Správce příkazů</a>- úprava nebo vytvoření nového nástroje pro správu.</li>
	</ul>

	
</asp:Content>
