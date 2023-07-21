<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object name</h1>
    <p>An object name can either be entered manually, or it can be automatically generated based on the current values of one or more object properties. If the object contains at least one property that specifies the object name, then the name is automatically generated and cannot be changed manually. To change the name in this case, you must change the value of the corresponding property.</p>
    <p>You can set whether a property determines the name of an object or what part of the name it determines in the <a href="../implementation/object-templates">object template</a> in the tab <a href="../../list-of-windows/alvao-asset-management-console/tab-view/properties">Properties</a> with command <b>Edit</b>.</p>
    <p>If the object name is made up of several properties, then the name is created by concatenating their values into a single string by inserting the values of each property in order and separating them with a comma. If the value of a property defining the object name is empty, this property will be omitted from the object name (to avoid displaying an extra comma).</p>
    <p>Object names (people, computers, and organizational structure) can also be retrieved from Active Directory. If you rename an object in AD, it is automatically renamed in Asset Management.</p>


</asp:Content>
