<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Položky licence</h1>
<p>V tabulce jsou uvedeni uživatelé nebo počítače, kterým byla přidělena licence. Platné licence jsou zobrazeny žlutou ikonou, neplatné licence jsou zobrazeny šedou přeškrtnutou ikonou. Vpravo dole je uvedeno, kolik licencí <strong>je registrováno</strong> / z celkového <strong>počtu licencí</strong>.<br/>Licence jsou registrovány v <a href="../../../../../../alvao-asset-management/software-management/licenses">registru licencí</a>.</p>
<p>Možnosti: V seznamu licencí je uveden seznam licencí:</p>
 <ul>
 <li><a href="../new-license/item">Přidat</a> - přidání dalšího záznamu.</li>
 <li><a href="../new-license/item">Upravit</a> - úprava hodnoty vybrané položky.</li>
 <li><strong>Odstranit</strong> - odstranění vybrané položky.</li>
	</ul>
</asp:Content>
