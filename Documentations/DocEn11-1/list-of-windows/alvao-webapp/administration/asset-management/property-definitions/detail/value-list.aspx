<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Value list</h1>

    <p>This form can be used to create a value list of property. This function is available only for <strong>Text data type</strong>.</p>
    <p>Options:</p>
    <ul>
        <li><strong>Use the List of another Property</strong> - turn on if you want the user to be able to select values for this property from the list of values. You can select values for another property or define possible values yourself. Select the property you want to use the list of values from the menu. By default, the value of <strong>this property</strong> is selected, which says that the custom list of values for this property will be used. If you select a different property, the property being edited will share the list of values with the property selected from the menu. The use of a list is useful, for example, for the User property, The list then contains the names of the individual users.</li>
        <li><strong>Value list</strong> - turn on if you want to choose the value of property.</li>
        <li><strong>Selection only</strong> - enable if you want to prevent the user from entering a custom value that is not in the automatically generated list of values (must select from the list). For example, if you want to select only users existing in the database as property values.<br />
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                It is disabled when <em>Use the List of another Property</em> or <em>Value list</em> is not checked.
            </div>
        </li>
    </ul>
  

</asp:Content>
