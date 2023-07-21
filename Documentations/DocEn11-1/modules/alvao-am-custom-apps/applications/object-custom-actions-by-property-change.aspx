<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">IObjectPropertyAutoAction</h1>
    By implementing the IObjectPropertyAutoAction interface in a <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom actions that are automatically performed when the user manually modifies the value of an object property.
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        Interface methods are also called in both variants of the <span translate="no">Alvao.API.AM.ObjectProperty.Update</span> method.
        <br />
        The <em>AM Console</em> command - <a href="../../../list-of-windows/alvao-asset-management-console/tab-view/properties">Properties</a> tab - <em>Generate Value</em> does not call the <i translate="no">OnObjectPropertyModifying</i> method.
It only calls the <i translate="no">OnObjectPropertyModified</i> method.
    </div>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        If you want to use only some of the methods of the implemented interface in the automatic action, leave an exception in the body of the other methods from the interface: <span class="console" translate="no">throw new NotImplementedException();</span>.
    </div>

    <h2>Interface Methods</h2>
    <table>
        <thead>
            <tr>
                <th>Method</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td translate="no"><a href="#OnObjectPropertyModifying">OnObjectPropertyModifying</a></td>
                <td>The value of the property will be changed.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnObjectPropertyModified">OnObjectPropertyModified</a></td>
                <td>The value of the property has been changed.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnObjectPropertyModifying" translate="no">OnObjectPropertyModifying</h2>
    This method is called before saving the modified property value to the database, e.g. within the <em>Modify (property)</em> statement.

    <ul>
        <li>Syntax: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>&gt; OnObjectPropertyModifying(SqlConnection <b translate="no">con</b>, int <b translate="no">propertyId</b>, int <b translate="no">personId</b>, string <b translate="no">newValue</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">propertyId</strong> - ID of the property (tblProperty.intPropertyId) that is being modified.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) who invoked the action.</li>
                <li><strong translate="no">newValue</strong> - new value of the property.</li>
            </ul>
        </li>
        <li>Return values:
            <ul>
                <li><strong translate="no">bool</strong> - if the method returns true, the new value is written to the database. If the method returns false, the operation is not performed and the upcoming property value change is canceled.</li>
                <li><strong translate="no">string</strong> - the message that is displayed to the user if the return value is false.</li>
            </ul>
        </li>
    </ul>

    For an example, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CheckPhoneNumberFormat</a> application template.<br />

    <h2 id="OnObjectPropertyModified" translate="no">OnObjectPropertyModified</h2>
    This method is called after writing a new property value to the database, e.g. by the <em>Modify (property)</em> statement.

    <ul>
        <li>Syntax: <b translate="no">void</b> OnPropertyModified(SqlConnection <b translate="no">con</b>, int <b translate="no">propertyId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">propertyId</strong> - ID of the property (tblProperty.intPropertyId) that has been changed.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) who invoked the action.</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>

    For an example use case, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CopyNewPropertyValueToAnotherProperty</a> application template.
  
</asp:Content>
