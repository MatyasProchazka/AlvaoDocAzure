<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Value check</h1>

    <p>On this page, select the object types where the value of this property should be mandatory.</p>
    <p>Options:</p>
    <ul>
        <li><strong>The value of this property is:</strong>
            <ul>
                <li><strong>Optional</strong> - the property will be optional in all objects.</li>
                <li><strong>Mandatory in objects of all kinds</strong> - the property will be mandatory in all objects in which it is used, regardless of object type.</li>
                <li><strong>Mandatory in objects of these kinds</strong> - if you want the property to be mandatory only in objects of certain types, enable this option and enable the object types in the table.
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        If <em>optional</em> or <em>all kinds</em> are checked, field for kinds selection is hidden.
                    </div>
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        If there are some kinds selected, selecting another option will remove all selected kinds.
                    </div>
                </li>
            </ul>
        </li>
    </ul>
  

</asp:Content>
