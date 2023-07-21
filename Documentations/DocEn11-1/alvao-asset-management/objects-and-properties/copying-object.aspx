<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Creating a copy of an object</h1>
    <p>
        You can copy objects in the usual way via the Clipboard, i.e. using <strong>Edit - Copy</strong> and <strong>Edit -
Paste</strong>, or by using keyboard shortcuts (<span class="key">Ctrl</span>+<span class="key">C</span> and <span class="key">Ctrl</span>+<span class="key">V</span>).
    </p>
    <p>
        Another option is to drag the object with the mouse to another location and hold down the <span class="key">Shift</span>. The same procedure is used by Windows Explorer for copying files.
    </p>
    <p>The object is copied along with any child objects.</p>
</asp:Content>
