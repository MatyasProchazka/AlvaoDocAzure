<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>New item</h1>
    <p>This window is used to create a new custom request item and add it to the <a href="new-ticket-items">New Request Form</a>.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Item name</strong> - enter the name of the item to be displayed on the form.</li>
        <li><strong>Item type</strong> - select the data type of the item. 
            <ul>
                <li><strong>Date</strong> - only the date can be entered in the entry.</li>
                <li><strong>Date and Time</strong> - only the date and time can be entered in the entry.</li>
                <li><strong>Number</strong> - only a numeric value can be entered into the entry. The number can be decimal or only integer, see the <em>Decimal Number</em> option.</li>
                <li><strong>Option</strong> - user can select item values from the drop-down menu.</li>
                <li><strong>Text</strong> - any text can be entered into the item. See also the <em>Multi-line text</em> option.</li>
                <li><strong>User</strong> - a user of Alvao can be selected in the item.</li>

            </ul>
        </li>
                <li><strong>Source group</strong> - select the user group. Values of the field of type <em>user</em> will be limited to members of the group. This field is displayed only for the <em>Item type </em>&quot;User&quot;.</li>
            <li><strong>Description</strong> - enter a description of the item, instructions for the applicant to fill in the values, etc. The text entered will be displayed to users on the form.</li>
        <li><strong>Values</strong> - a menu of values for an Option type item. 
            <ul>
                <li><strong>Yes/No</strong> - the item will be displayed on the form as a simple option (checkbox).</li>
                <li><strong>Value list</strong> - list of values in the drop-down menu. You can move the values in the list by grabbing the icon on the left ("up arrow and down arrow") with your mouse.
                    <ul>
                        <li><strong>New Value</strong> - add a new value to the end of the list.</li>
                        <li><strong>Allow custom text entry</strong> - enable this option if you want to allow the user to enter any text into the item in addition to the values in the list.</li>
                        <li><strong>Enable translation of value list</strong> - enable this option if you want to export the values from the list of values for <a href="../../../../../../alvao-service-desk/implementation/multi-languages">translation into other languages</a> and then display them to users in their preferred language.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><strong>Multi-line text</strong> - turn on if you want a larger input field for <em>Text</em> type items in forms to display multi-line text. If disabled, only a single line input field is displayed and the text length is limited to 256 characters.</li>
        <li><strong>Decimal number</strong> - turn on if you want to enter decimal numbers in the entry as well. Otherwise, only integers can be entered.</li>
    </ul>
</asp:Content>
