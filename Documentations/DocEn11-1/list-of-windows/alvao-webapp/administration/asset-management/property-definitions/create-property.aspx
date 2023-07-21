<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>New property</h1>
    <p>This form can be used to create a new property.</p>
 
    <p>Options:</p>
    <ul>
        <li><strong>Property name</strong> - enter the unique name of the property, (e.g. Size, Capacity, First Name, Surname etc.).</li>
        <li><strong>Data type</strong> - select whether the property will be of type Text, Number, or Date. If you change the type after the fact, the property values are automatically converted to the new type. If changing from Text to Date or Number type, it is a good idea to check that the values have been converted correctly, see <a href="../../../../../alvao-asset-management/implementation/object-property-change-type">Change property of type Text to another type</a>.
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Can’t be changed in edit mode for system properties.
            </div>
        </li>
        <li><strong>Inherit Property</strong> - enable if the property is to be inherited, i.e. if an object has this property, then all its child objects also have this property.</li>
        <li><strong>Global across all objects</strong> - turn on if the property and the values it takes on should be treated as global across all object types.<br />
            A typical example is <em>Inventory Number</em>, which is unique across all objects.<br />
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                <br />
                
                This option affects:<br />
                <ul>
                    <li>Evaluation of uniqueness check - if you do not turn it on, two objects of different types can have the same value for this property.</li>
                    <li>Content of the automatically generated list of property values - if you turn this option off, the list of values in the <a href="../../../../../list-of-windows/alvao-asset-management-console/tab-view/properties/property-edit">Property</a> will only list values specified for objects of the same type, e.g. the Name property will list different values for printers and different values for monitors.</li>
                </ul>
            </div>
        </li>
        <li><strong>Unique</strong> - turn on if the values of this property are to be unique.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                All properties that are supposed to be unique are checked using Uniqueness Check. For example, different objects or devices can be distinguished by the values of these properties.<br />
                A typical example of a unique property is <em>Inventory Number</em>.<br />
                The uniqueness check is only performed in the active inventory, i.e. outside the <em>Recycle Bin, Assets, Object Templates, Object Views, and Property Categories</em>. 
            </div>
        </li>
        <li><strong>Delete value when copying objects</strong> - turn on if you want the property value to always be filled consciously (not unconsciously when copying an object). An example is the serial number.
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                This option is automatically enabled if the <strong>Unique</strong>.
            </div>
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Can’t be unchecked. 
            </div>
        </li>
        <li><strong>Order in list</strong> - if applicable, specify the order in which to display the property being edited. Alternatively, you can sort the list of properties by these values - sort by the column in <strong>Order in list</strong>.</li>
        <li><strong>Icon</strong> - button to select the icon for the property being edited.</li>
    </ul>

</asp:Content>
