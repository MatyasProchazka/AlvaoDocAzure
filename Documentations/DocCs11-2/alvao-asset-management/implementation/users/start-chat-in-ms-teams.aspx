<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Spuštění chatu v MS Teams</h1>
    <p>Na stránce <a href="../../../list-of-windows/alvao-webapp/search/persons/person">Osoba</a>, která je přístupná na mnoha místech aplikace, mohou uživatelé pomocí tlačítka <strong>Zahájit chat</strong> zahájit chat v MS Teams se zobrazenou osobou. Tlačítko je ve výchozím nastavení povoleno a viditelné pro všechny uživatele importované z Azure Active Directory. Chcete-li tuto funkci skrýt, použijte tento skript SQL:<br />
      <span class="console">UPDATE tProperty SET bPropertyValue = 0 WHERE sProperty = 'WebApp.StartChatEnabled'</span><br />
       Chcete-li tlačítko znovu povolit a zobrazit, spusťte tento skript SQL:<br />
      <span class="console">UPDATE tProperty SET bPropertyValue = 1 WHERE sProperty = 'WebApp.StartChatEnabled': SQL: UPDATE tProperty SET bPropertyValue = 1 WHERE sProperty = 'WebApp.StartChatEnabled'</span>   </p>

</asp:Content>
