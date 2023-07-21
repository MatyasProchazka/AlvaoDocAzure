<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1><span class="notranslate">Insider Preview</span></h1>

    <p>
        Insider Preview is a part of the Alvao system containing agilely developed experimental functionalities that are for testing purposes only. Functionality released in Insider Preview mode is continuously updated as part of FIX and SP releases. For a description of the functionality included in a specific update, please see the <a href="#changelog">Unreleased Updates</a> section on this page.
    </p>

    <h2>Insider Preview Switch</h2>

    <p>
        By default, Insider Preview functionality is not available in apps. If you want to make them available to certain users, do the following.
    </p>
  <ol>
      <li>Add the users to the <i>Insider Preview Testers</i> group to whom you want to make Insider Preview functionality available. The functionality will remain hidden from other users.</li>
      <li>Enable Insider Preview in <i>ALVAO WebApp - Administration - Settings - Insider Preview</i>.</li>
  </ol>
        <p>After installing subsequent FIXs and SPs, Insider Preview will remain enabled.</p>
        <p>
            After upgrading to a new version of Alvao, Insider Preview will automatically be turned off, and if you want to try the new Insider Preview functionality included in the new version, turn it back on. User membership in the <i>Insider Preview Testers</i> group will be retained from the previous version. 
        </p>

        <h2>Disabling Insider Preview</h2>
        <p>You can disable Insider Preview functionality at any time in <i>ALVAO WebApp - Administration - Settings - Insider Preview</i>.</p>
        <p>
            If you only want to disable Insider Preview functionality for certain users, remove them from the <i>Insider Preview Testers</i> group.
        </p>

        <a name="changelog"></a>
        <h2>Updates released</h2>
        <ul>
            <li>SD WebApp - Requests - The command forms for creating a new event in the request log (Note, Send Message, etc.) open on the right side of the screen. Send comments as <a href="https://app.alvao.com/Alvao/Custom/ALVAO/Ideas/Idea?id=114303">T114303ALVAO</a> idea comments.</li></ul>
</asp:Content>
