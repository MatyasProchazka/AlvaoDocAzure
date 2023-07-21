<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>New custom field</h1>
    <p>
        Use this form to create a new <a href="../../../../alvao-service-desk/implementation/custom-items">custom field</a>.
    </p>

    <p>Options:</p>

    <ul>
        <li><strong>Custom field name</strong> - enter the name of the custom field under which the field will be displayed in the application to users. The custom field name must not match any other field of the entity (custom or system) or any other column of the <a href="../../../../alvao-asset-management/implementation/customization/database#report_view_list">reporting views</a>.</li>
        <li><strong>Order</strong> - specify the order in which the field should appear in the forms. Fields are displayed in ascending order based on the <em>Order</em> value. If two fields have the same <em>Order</em> value, their relative order will be random.</li>
        <li><strong>Type</strong> - select the type of custom field from the menu.
	<table>
        <thead>
            <tr>
                <th>Type</th>
                <th>Meaning</th>
                <th>Forms display</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="auto-style1">bit</td>
                <td class="auto-style1">logical value yes/no</td>
                <td class="auto-style1">checkbox option</td>
            </tr>
            <tr>
                <td>date</td>
                <td>date</td>
                <td>date text field with calendar selection</td>
            </tr>
            <tr>
                <td>datetime</td>
                <td>date and time</td>
                <td>date and time text fields with calendar selection</td>
            </tr>
            <tr>
                <td class="auto-style1">float</td>
                <td class="auto-style1">decimal number</td>
                <td class="auto-style1">text field</td>
            </tr>
            <tr>
                <td>int</td>
                <td>integer</td>
                <td>text field</td>
            </tr>
            <tr>
                <td>nvarchar</td>
                <td>string</td>
                <td>text field</td>
            </tr>
            <tr>
                <td>user</td>
                <td>a user of Alvao; In the database, this type is represented as type int containing the ID of a user (see <a href="../../../../alvao-asset-management/implementation/customization/database#U_dbo.tPerson">tPerson</a>.iPersonId).</td>
                <td>text field with user selection</td>
            </tr>
        </tbody>
    </table>
            <p>The following fields are only displayed for type <em>nvarchar</em>:</p>
            <ul>
                <li><strong>Multi-line text</strong> - turn on if you want forms to display a larger input field for entering multi-line text. If disabled, only single line input fields are displayed.
                    <div class="note">
                        <div class="icon"></div>
                        <div class="title">Note:</div>
                        This option cannot be combined with a list of values.
                    </div>
                </li>
                <li><strong>Length</strong> - specify the maximum length of text in characters that can be written to the entry.</li>
                <li><strong>Maximum Length</strong> - turn on if you want to store long text in the field.</li>
            </ul>
            <p>This field is displayed only for type <em>user</em>.</p>
            <ul>
                <li><strong>Source group</strong> - select the user group. Values of the field of type <em>user</em> will be limited to members of the group.</li>
            </ul>
        </li>


        <li><strong>Description</strong> - enter a description of the field that will be displayed in forms to help users fill in the field.</li>
        <li><strong>Table</strong> - select the entity for which you want to create a custom field:
            <table>
                <thead>
                    <tr>
                        <th>Value in the menu (name of the table in the database)</th>
                        <th>Entity</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>tHdTicketCust</td>
                        <td>Request</td>
                    </tr>
                    <tr>
                        <td>tPersonCust</td>
                        <td>Person</td>
                    </tr>
                    <tr>
                        <td>tAccoutCust</td>
                        <td>Organization</td>
                    </tr>
                    <tr>
                        <td>tHdSectionCust</td>
                        <td>Service</td>
                    </tr>
                    <tr>
                        <td>tSlaCust</td>
                        <td>SLA</td>
                    </tr>
                    <tr>
                        <td>LicHistCust</td>
                        <td>Licence</td>
                    </tr>

                    <tr>
                        <td>ProductCust</td>
                        <td>Products</td>
                    </tr>

                    <tr>
                        <td>TicketStateCust</td>
                        <td>Ticket Status</td>
                    </tr>

                </tbody>
            </table>

        </li>
        <li><strong>Column</strong>- enter the name of the column in the database where the value of this custom field will be stored. The name must be unique and must not contain spaces or special characters. It is recommended to name columns in English and to follow the recommendations for <a href="https://docs.microsoft.com/en-us/sql/relational-databases/databases/database-identifiers">naming identifiers in the database</a>.</li>


        <li><strong>Use value list</strong> - the custom field will appear as a text box with a drop-down menu on forms. After enabling this option, populate the list of values with <em>Edit</em> - <a href="detail/list-of-values">List of values</a>.<br />
            The list can only be used for <em>nvarchar</em> and <em>int</em> types. A value that is not listed in the list of values can also be written to a custom field of type <em>nvarchar</em>. The values of custom fields of type <em>int</em> are limited only to the values listed in the list of values, no other value can be written to them, and when modifying a value in the list of values, the value of the custom field is automatically changed.</li>
        <li>
            <strong>Enable translation of value list</strong> - enable this option if you want the values from the value list to be exported for <a href="../../../../alvao-service-desk/implementation/multi-languages">translation into other languages</a> and then displayed to users in their preferred language.</li>
    </ul>

</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  
</asp:Content>

