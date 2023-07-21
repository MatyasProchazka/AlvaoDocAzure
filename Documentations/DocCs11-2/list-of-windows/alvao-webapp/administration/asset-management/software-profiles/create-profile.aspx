<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nový profil</h1>
<p>Formulář umožňuje definovat konkrétní <a href="../../../../../alvao-asset-management/software-management/software-profiles">profil softwaru</a>. Tento profil lze později použít k vytváření <a href="../../../../alvao-asset-management-console/edit/object/software-profile-exeptions">výjimek</a><br/></p>
<p>Možnosti: V případě, že se jedná o profil, který je v rozporu se zákonem o ochraně osobních údajů, je možné zadat profil, který je v rozporu se zákonem:</p>
	<ul>
 <li><strong>Název</strong> - zadejte název softwarového profilu.</li>
 <li><strong>Podprofil</strong> - povolte, pokud lze profil použít pouze jako podprofil pro konstrukci jiných profilů.</li>
 <li><strong>Popis</strong> - v případě potřeby zadejte popis profilu (podprofilu), abyste upřesnili jeho účel.</li>
 <li><strong>Notes (Poznámky)</strong> - je-li to vhodné, zadejte další pracovní poznámky k profilu.</li>
 
	</ul>
</asp:Content>
