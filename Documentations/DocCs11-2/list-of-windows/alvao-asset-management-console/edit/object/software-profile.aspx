<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Profil softwaru</h1>
<p>Tato záložka umožňuje nastavit <a href="../../../../alvao-asset-management/software-management/software-profiles">Profil softwaru pro</a> aktuálně upravovaný počítač.</p>
	<div class="note">
	<div class="icon"></div>
	<div class="title">Poznámka:</div>
	Rozdíly ve skutečných instalacích oproti profilu softwaru jsou uvedeny na <strong>kartě Software jednotlivých počítačů</strong> v <a href="../../../alvao-asset-management-console">hlavním okně konzoly AM</a>.</div>

<p>Volby: V této části se zobrazí položka Software:</p>
	<ul>
 <li><strong>Software Profile for selected computer (Profil softwaru pro vybraný počítač</strong> ) - z nabídky vyberte jeden z předdefinovaných Profilů softwaru.</li>
 <li><a href="software-profile-exeptions">Výjimky</a>- definujte výjimku (drobné změny oproti vybranému Softwarovému profilu).</li>
 <li><strong>Popis</strong> - zobrazí popis vybraného Softwarového profilu.</li>
 <li><strong>All software is allowed (Všechen software je povolen</strong> ) - zapněte, pokud nechcete na upravovaném počítači používat Profil softwaru. (Stav profilu pro všechny produkty nainstalované v počítači se zobrazí jako volitelný)</li>
	</ul>
</asp:Content>
