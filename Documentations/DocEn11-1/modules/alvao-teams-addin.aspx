<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Teams Add-in</h1>
    <p>
        ALVAO Teams Add-in is an add-in for Microsoft Teams that allows you to:
    </p>
    <ul>
        <li>create a new request in Alvao from a message,</li>
        <li>conveniently search for requests,</li>
        <li>insert links to requests in the messages you send,</li>
        <li>receive notifications from Alvao.</li>
    </ul>
    
  <h2>Technical Requirements</h2>
    <ul>
        <li>ALVAO Service Desk (provided as SaaS)</li>
        <li>User authentication using Azure Active Directory</li>
    </ul>

    <h2>First launch of the add-on</h2>
    The first time you run the add-on, enter the address of your ALVAO REST API provided by your Alvao administrator.<br />
    Then log in using your Azure Active Directory account.

  <h2>Creating a new request from a message</h2>
    <ol>
        <li>In <strong>MS Teams Chat</strong> hover over the message to display commands, click the three-dot button and select <strong>More actions – Create request in Alvao</strong>.</li>
        <li>Fill in the form with additional information.</li>
        <li>Submit the dialog and the request will be created in Alvao. A new card with details of the request will be inserted into the compose message area.</li>
    </ol>

  <h2>Inserting a request link into a message</h2>
    <ol>
        <li>In <strong>MS Teams</strong>, type <strong>@alvao</strong> in the chat or team channel message, or select the <em>Alvao</em> app in the command bar under the message input field.</li>
        <li>The add-on will automatically give you the 5 requests you last worked with in Alvao.</li>
        <li>If you want to search for another request, type at least part of the request name, the request number, part of the service name, the Requester name, or the solver name in the input line. The add-on will offer you requests matching the text you entered.</li>
        <li>Select the request you are looking for from the menu. This will insert a tile representing the request into the chat or channel message. If the recipient of the message clicks the <em>View Request</em> button at the bottom of the tile, they will see the page for that request in the Alvao WebApp.</li>
    </ol>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        You can also insert the request tile into the message text by pasting the url of the request page in the <em>Alvao WebApp</em>. The url will automatically change to a tile.
    </div>

    <h2>Request search</h2>
    <ol>
        <li>In MS Teams, type <strong>@alvao</strong><em> in the search bar in the window header.</em></li>
        <li>Enter at least part of the request name, request number, or other information by which you are searching for the request in the input line of the add-in. The add-in will offer you requests matching the text you entered.</li>
        <li>Click the request you are looking for in the menu. The request tile will appear below the input line. In the tile, press the <strong>View request</strong> button. This will display the request page in the web browser.</li>
    </ol>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can click on the icon in the top right corner to copy the tile to your clipboard and then paste it into a chat message or team channel.&nbsp;
    </div>

</asp:Content>
