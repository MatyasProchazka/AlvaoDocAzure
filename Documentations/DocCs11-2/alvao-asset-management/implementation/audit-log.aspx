<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Protokol změn v nastavení</h1>
    <p>Změny nastavení systému Alvao se automaticky zaznamenávají do protokolu událostí na serveru, na kterém je <i>ALVAO Server</i> nainstalován. Obsah protokolu můžete zobrazit běžným způsobem v <b>Prohlížeči událostí - Protokoly aplikací a služeb - Audit ALVAO</b>.</p>
    <p>Do protokolu se zapisují následující změny:</p>
    <ul>
        <li>Přihlášení a odhlášení uživatelů do/z aplikací</li>
        <li>Změny informací o uživateli</li>
        <li>Přiřazení uživatelů a skupin do skupin</li>
        <li>Oprávnění ke službám SD</li>
        <li>Přiřazení SLA žadatelům o služby SD</li>
        <li>Oprávnění k objektům AM</li>
        <li>Oprávnění k vlastnostem objektů AM</li>
    </ul>

</asp:Content>
