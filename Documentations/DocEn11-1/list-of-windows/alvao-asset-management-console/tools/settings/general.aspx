<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>General</h1>
    <p>
        This tab accesses general <a href="../../../../alvao-asset-management/console">console settings
Asset Management Console</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Create history records with current date and time</strong>
            - Enable if you wish to automatically assign time stamps to history records <a href="../../../../alvao-asset-management/objects-and-properties">moving, creating, or deleting objects</a>. If the option is disabled, you need to confirm (or edit) the time of the action each time you manipulate an object.</li>
        <li><strong>Always confirm when moving objects</strong> - turn on if every time <a href="../../../../alvao-asset-management/objects-and-properties/moving-object">moving an object</a> you want to display a confirmation window.</li>
        <li><strong>Confirm moving computers/users to the "Recycle bin" or "Discarded assets"</strong> - turn off if you don't
            want to be warned when moving computers or users with assigned licenses, installed software, or detection requests 
            to the <em>Recycle Bin</em> or <em>Discarded assets</em>.</li>
        <li><strong>Detect if the software product library is up-to-date automatically</strong> - turn on if you want to be automatically notified of the latest version of <a href="../../../../alvao-asset-management/software-management/custom-swlib">when AM Console starts
 software product library</a>. (A similar function is provided by <a href="../../../../alvao-asset-management/implementation/detection/collector">ALVAO Collector</a>, which monitors the vendor's site at regular intervals to see if a newer library is available and then automatically loads it into the database.)</li>
    </ul>
</asp:Content>
