<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Installation Settings - WebApp and REST API</h1>
    <ul>
        <li><strong>ALVAO WebApp</strong>
            <ul>
                <li><strong>Authenticate users using</strong> - select the authentication method for users who will use the application.
                    <ul>
                        <li><strong>Windows Integrated Authentication</strong></li>
                        <li><strong>Forms</strong> - authenticate with name and password.</li>
                    </ul>
                </li>
                <li><strong>URL</strong> - edit the application address if necessary, e.g. <span class="console">http://app.company.com/alvao</span>
                </li>
                <li><strong>Virtual Folder Name</strong> -
 if necessary, edit the name of the virtual folder on IIS. The default folder name is <em>Alvao</em>.
                </li>
            </ul>
        </li>
        <li><strong>REST API</strong>
            <ul>
                <li><strong>URL</strong> - edit the service address if necessary, e.g. <span class="console">http://app.company.com/alvaorestapi</span>
                </li>
                <li><strong>Further settings</strong>
                    <ul>
                        <li><strong>Virtual Folder Name</strong> - if necessary, edit the name of the virtual folder on IIS.  The default folder name is <em>AlvaoRestApi</em>.
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>
