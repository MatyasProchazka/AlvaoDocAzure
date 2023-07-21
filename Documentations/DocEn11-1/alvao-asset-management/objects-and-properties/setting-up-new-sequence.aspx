<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Setting a new number series for generating the property value</h1>
    <ol>
        <li>From the main menu, use <strong>Tools - Lists -
Numeric Sequences</strong>, which will open the <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences">Numeric sequences</a>.</li>
        <li>Press the <strong>New</strong> button.</li>
        <li>The window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/numeric-sequences/numeric-sequence">New numeric sequence</a> with numeric sequence settings.</li>
        <li>Enter the name of the new sequence (e.g. &quot;Computer names&quot;), the prefix, the number and the sequence extension (e.g. PC, 1, ALVAO).</li>
        <li>Select the property whose value you want the series to generate (e.g., &quot;Name in network&quot;).
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Properties that have the &quot;selection only&quot; option enabled are not displayed in the menu - an automatic dial cannot be defined for them
            </div>
        </li>
        <li>Select the object type, (e.g. &quot;Computer&quot;) and press the <strong>&lt;&lt;Add</strong> button next to the list. The object type will be added to the list.<div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            If the list of object types is empty, the value will be generated for the property for all object types.
            </div>
        </li>
        <li>Confirm the changes using the <strong>OK</strong> button. If the row setting conflicts with another row, a warning message is displayed and the row cannot be saved.<div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            A row defined for specific object types takes precedence over a row that is defined for all object types. The two series do not collide. This rule also applies to the computer type.
            </div>
        </li>
    </ol>
    <p>
        Numeric ranks generate values for selected object properties immediately when a new object is created in the tree (New Object, Copy Object command).
The generated property value can be manually changed later. Uniqueness may or may not be enabled on the property definition.
    </p>

</asp:Content>
