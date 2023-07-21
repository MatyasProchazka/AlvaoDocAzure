<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1 translate="no">IObjectMoveAutoAction</h1>
    By implementing the IObjectMoveAutoAction interface in an <a href="../../../list-of-windows/alvao-webapp/administration/applications/app/scripts">application script</a>, you can define custom actions that are automatically performed when an object is moved to another location in the object tree, including removing the object to the Trash.<div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        The interface methods are also called in the <span translate="no">Alvao.API.AM.Object.Move</span> and <span translate="no">Alvao.API.AM.Object.Delete</span> methods.
        <br />
        When automatically removing computer components to the Recycle Bin based on hw detection, the methods are not called.
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
                <td translate="no"><a href="#OnObjectMoving">OnObjectMoving</a></td>
                <td>The object will be moved in the tree.</td>
            </tr>
            <tr>
                <td translate="no"><a href="#OnObjectMoved">OnObjectMoved</a></td>
                <td>The object has been moved.</td>
            </tr>
        </tbody>
    </table>

    <h2 id="OnObjectMoving" translate="no">OnObjectMoving</h2>
    This method is called before moving an object in the tree to another location, e.g. within the <em>Move</em> statement.

    <ul>
        <li>Syntax: Tuple&lt;<b translate="no">bool</b>, <b translate="no">string</b>&gt; OnObjectMoving(SqlConnection <b translate="no">con</b>, int <b translate="no">objectId</b>, int <b translate="no">newParentObjectId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">objectId</strong> - ID of the object (tblNode.intNodeId) to be moved.</li>
                <li><strong translate="no">newParentObjectId</strong> - ID of the object (tblNode.intNodeId) to which the object is to be moved. A value of 0 means that the object will be moved to the root of the tree.</li>
                <li><strong translate="no">personId</strong> - the ID of the user (tPerson.iPersonId) who invoked the action.</li>
            </ul>
        </li>
        <li>Return values:
            <ul>
                <li><strong translate="no">bool</strong> - if the method returns true, the object is moved to a new position in the database. If the method returns false, the operation will not be performed and the upcoming object move will be canceled.</li>
                <li><strong translate="no">string</strong> - the message that will be displayed to the user if the return value is false.</li>
            </ul>
        </li>
    </ul>

    For an example use case, see <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">CheckObjectMandatoryProperties</a>.<br />

    <h2 id="OnObjectMoved" translate="no">OnObjectMoved</h2>
    This method is called after moving an object in the tree.
    <ul>
        <li>Syntax: <b translate="no">void</b> OnObjectMoved(SqlConnection <b translate="no">con</b>, int <b translate="no">objectId</b>, int <b translate="no">oldParentObjectId</b>, int <b translate="no">personId</b>)</li>
        <li>Parameters:
            <ul>
                <li><strong translate="no">con</strong> - SqlConnection to the database.</li>
                <li><strong translate="no">objectId</strong> - ID of the object (tblNode.intNodeId) to be moved.</li>
                <li><strong translate="no">oldParentObjectId</strong> - the ID of the object (tblNode.intNodeId) that was the father (parent object) of the object with objectId before it was moved. A value of 0 means that the object was moved from the root of the tree.</li>
                <li><strong translate="no">personId</strong> - the user ID (tPerson.iPersonId) that triggered the action.</li>
            </ul>
        </li>
        <li>Return value: <b>none</b>.</li>
    </ul>
    For an example usage, see the <a href="../../../modules/alvao-am-custom-apps/applications/templates" translate="no">SetComputerDetectionProfile</a> application template.

</asp:Content>
