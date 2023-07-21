<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Formatting patterns</h1>
    <p>This page is intended for the authors of this user documentation as a template for formatting pages.</p>
    <p>Do not use any html tags or styles on the pages that are not listed on this page.</p>
    <p>For more information, see <a href="https://alvao.sharepoint.com/Doc/Vývoj%20produktů/Uživatelská%20dokumentace%20k%20produktům.docx?web=1">User Documentation</a>.</p>

    <h2>Formatting</h2>

    <p>Introductory paragraph with <strong>bold</strong> font and <em>cursive</em>.</p>

    <table>
        <thead>
            <tr>
                <th>Column1</th>
                <th>Column2</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>AA</td>
                <td>BB</td>
            </tr>
            <tr>
                <td>CC</td>
                <td>DD</td>
            </tr>
        </tbody>
        <tfoot>
            <tr>
                <td>Total1</td>
                <td>Total2</td>
            </tr>
        </tfoot>
    </table>

    <p>
        <img src="alvao-service-desk/requests/superior_subordinated.png" alt="Child requests" /></p>

    <h3>Procedure 1</h3>

    <ol>
        <li>Launch <strong>ALVAO Admin</strong>.</li>
        <li>From the main menu, select <strong>Open - File...</strong>,
	or use the keyboard shortcut <span class="key">Ctrl</span>+<span class="key">O</span>.</li>
        <li>Enter the file name in the format &quot;<em>path</em>\logfile.txt&quot;.
 <div class="tip">
     <div class="icon"></div>
     <div class="title">Tip:</div>
     Select the file name from the list by clicking the mouse.
 </div>
        </li>
        <li>Select the <strong>Normal</strong> usage mode.</li>
        <li>Enter the command:<br />
            <span class="console">admin.exe /command</span>
        </li>
        <li>The <a href="#settings">Settings</a> window will appear on the screen.</li>
    </ol>


    <h3>Window and command index - form</h3>
    <p>On this page you can manage user groups.</p>
    <p>Options:</p>
    <ul>
        <li id="commands"><strong>Commands Panel</strong><ul>
            <li><strong>New Group</strong> - create <a href="list-of-windows/alvao-webapp/administration/groups/create-group">new group</a>.</li>
            <li><strong>Edit</strong>- edit user properties and permissions. The menu contains the same commands as the blocks in the <a href="list-of-windows/alvao-webapp/administration/groups/detail">preview</a> groups. </li>
            <li><strong>Delete</strong> - delete the selected group.<br />
            </li>
        </ul>
        </li>
        <li><strong>Groups table</strong> - contains all Alvao groups and their selected attributes. You can <a href="alvao-asset-management/working-with-tables">customize the table as needed</a>.</li>
        <li><strong>Selected Group</strong> - After selecting a group in the table, the <a href="list-of-windows/alvao-webapp/administration/groups/detail">view</a> will appear on the right with information about the selected group, its permissions and other settings. The individual blocks of the preview display the <em>Edit</em> command to modify the group settings.</li>
    </ul>

    <h3>Tags in text</h3>
    <p>Place the tagged parts in the text in the following order:</p>
    <ol>
        <li>Highlights</li>
        <li>Main text</li>
        <li>Tip</li>
        <li>Note</li>
    </ol>
    <p>
        For example:
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        Caution...!<br />
        A caution warns the reader of some danger.
    </div>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Recommended...<br />
        A tip is a recommendation on how to handle a situation that is marginally related to the article.
    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        For reference...
    </div>

    <p>Or:</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        For reference...<br />
        The note is peripheral supplementary information to the article.
    </div>

    <h3>Dictionary of terms</h3>

    <dl>
        <dt>Volume 1</dt>
        <dd>Importance ...</dd>
        <dt>Item 2</dt>
        <dd>Meaning ...</dd>
    </dl>

    <h1>H1 heading</h1>
    <h2>Headline H2</h2>
    <h3>H3</h3>
    <h4>Headline H4</h4>
    <h5>Headline H5</h5>
    <p>Normal paragraph text.</p>
    <h2>Sample copy text</h2>
    <p>Customize the table <a href="alvao-asset-management/working-with-tables">as needed</a>.</p>
    <p>- enter at least part of the user's name and then select that user from the drop-down menu.</p>
    <p>
        (this line is followed by &lt;br /&gt; for copying)<br />
        (end)
    </p>
    <p>Mark the place to wrap a long string with a zero-with-space character: &#8203;</p>


</asp:Content>
