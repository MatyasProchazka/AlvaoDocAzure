<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Start chat in MS Teams</h1>
    <p>In the <a href="../../../list-of-windows/alvao-webapp/search/persons/person">Person</a> page, which is accessible in many places in the application, users can use the button <strong>Start chat</strong> to start a chat in MS Teams with the displayed person. The button is enabled and visible by default for all users imported from Azure Active Directory. To hide this feature use this SQL script:<br />
       <span class="console">UPDATE tProperty SET bPropertyValue = 0 WHERE sProperty = 'WebApp.StartChatEnabled'</span><br />
       To re-enable and show the button run this SQL script:<br />
       <span class="console">UPDATE tProperty SET bPropertyValue = 1 WHERE sProperty = 'WebApp.StartChatEnabled'</span>
    </p>

</asp:Content>
