<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Instalace služby Asset Management WebService a služby Alvao odděleně na různé servery</h1>
    <p>Služba ALVAO Asset Management WebService se instaluje samostatně a slouží ke komunikaci se samostatnými agenty.</p>
    <h2>Změna složky pro ukládání detekcí</h2>
    <p>
        Ve výchozím nastavení ukládá webová služba AM přijaté detekce do složky nastavené v nabídce <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Správa - Asset Management - Nastavení - Detekce - Načítání souborů</a>. 
        Služba Alvao pak tyto detekce načítá z této složky. Pokud chcete WebService Asset Management nainstalovat na jiný počítač než Službu Alvao, nastavte v nastavení <i>Cesta</i> na UNC cestu ke sdílené složce (např. <span class="console">\\server1\detection</span>)    </p>
</asp:Content>
