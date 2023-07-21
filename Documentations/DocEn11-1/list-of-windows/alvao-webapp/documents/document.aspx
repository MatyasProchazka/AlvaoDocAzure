<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Document</h1>

    <p>On this page, you see the selected Document.</p>

    <p>
        Options:
    </p>

    <ul>
        <li>
            <b>Command panel</b> - see the command panel on the <a href="../documents">Documents</a> page.
        </li>

        <li>
            Tabs
            <ul>
                <li><strong>General</strong> - properties of the document</li>
                <li><strong>Attachments</strong> - a list of attachments of the document. To delete an attachment, click on the &quot;cross&quot; icon by each attachment.<br />
                    Additional commands in the command panel:
                    <ul>
                        <li><strong>Add file</strong> - choose a file to attach to the document.</li>
                        <li><a href="document/add-link">Add link</a> - attach a link to a web page or any other external resource by its URL address to the document. </li>
                    </ul>
                </li>

                <li><strong>Objects</strong> - a table of <a href="../objects">objects</a> linked to the document;<br />
                    Additional commands in the command panel:
                    <ul>
                        <li><a href="document/add-object">Add object</a> - attach an object to the document.</li>
                        <li><strong>Remove object</strong> - detach the selected objects from the document.</li>
                        <li>Document drop-down menu - when an object is selected in the table, commands relating to the document (not to the selected objects) are collapsed into this menu. </li>
                    </ul>
                </li>

                <li><strong>Licenses</strong> - a table of <a href="../../../alvao-asset-management/software-management/licenses">software licenses</a> linked to the document.<br />
                    Additional commands in the command panel:
                    <ul>
                        <li><a href="document/add-license">Add license</a> - attach a license to this document.  </li>
                        <li><strong>Remove license</strong> - detach the selected software license from the document.</li>
                        <li>Document drop-down menu - when a software license is selected in the table, commands relating to the document (not to the selected license) are collapsed into this menu. </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>
