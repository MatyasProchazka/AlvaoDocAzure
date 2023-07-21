<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Custom script</h1>
    <p>The <em>Config</em> folder can contain a file <em translate="no">EpCustomScript.js</em> with a custom script in JavaScript. The <em>Config</em> folder can be found in the folder where the <span translate="no">ALVAO Asset Management Console</span> is installed (by default <em>C:\Program Files\ALVAO\Asset Management Console\Config</em>), if it is not there, create it and put the script in it. After restarting the AM Console, the script will activate itself.</p>
    <p>Handlers can be defined in the script that are automatically called from the AM Console when performing various operations.</p>
    <p><strong>Example 1. Example of EpCustomScript.js</strong></p>
    <div class="wide">
        <pre class="console" translate="no">function OnNodeMoving(nNodeId,nDestNodeId,nUserId) {
  return true;
}

function OnNodeRemoving(nNodeId,nUserId) {
  MessageBox(&quot;Object cannot be removed&quot;,0x30);
  return false;
}</pre>
    </div>
    <p>
        The script in the example contains the <span class="console">OnNodeMoving</span> function and
  <span class="console">OnNodeRemoving</span>. The <span class="console">OnNodeMoving</span> function is used to enable moving an object in the tree. The function is called before the move is performed and the return value <span class="console">true</span> indicates that the move is enabled. The <span class="console">OnNodeRemoving</span> function is called before removing an object from the tree, and its return value enables removal. So in the example above, moving an object is always enabled and removing it is always disabled. In addition, when you try to delete an object, a window with the message &quot;Object cannot be deleted&quot; is displayed.
    </p>

    <h2>Service functions</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Functions</th>
                <th>Event</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="#onnodecopying">OnNodeCopying</a></td>
                <td>A copy of the object will be created. This function is also called when a new object is created by a template.</td>
            </tr>
            <tr>
                <td><a href="#onnodecopied">OnNodeCopied</a></td>
                <td>The object has been copied or a new object has been created according to the template.</td>
            </tr>
            <tr>
                <td><a href="#onnodemoving">OnNodeMoving</a></td>
                <td>The object will be moved in the tree.</td>
            </tr>
            <tr>
                <td><a href="#onnodemoved">OnNodeMoved</a></td>
                <td>The object has been moved.</td>
            </tr>
            <tr>
                <td><a href="#onnoderemoving">OnNodeRemoving</a></td>
                <td>The object will be moved to the Recycle Bin.</td>
            </tr>
            <tr>
                <td><a href="#onnoderemoved">OnNodeRemoved</a></td>
                <td>The object has been moved to the Trash.</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodificationenabled">OnPropertyModificationEnabled</a></td>
                <td>Enable/disable command - Modify (property).</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodifying">OnPropertyModifying</a></td>
                <td>The value of the property will be changed.</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodified">OnPropertyModified</a></td>
                <td>The value of the property has been changed.</td>
            </tr>
        </tbody>
    </table>

    <div id="onnodecopying"></div>

    <h2>OnNodeCopying</h2>
    <p>This function is called before copying an object in the tree, i.e. also in case of creating a new object according to the template.</p>
    <ul>
        <li><strong>Syntax</strong> - bool OnNodeCopying(nNodeId, nDestNodeId, nUserId)</li>
        <li><strong>Parameters</strong>
            <ul>
                <li><strong>nNodeId</strong> - the value of the attribute (in the database) tblNode.intNodeId of the object that is copied, i.e. the sample object.</li>
                <li><strong>nDestNodeId</strong> - value of the tblNode.intNodeId attribute of the object into which the copy will be inserted as a child object. A value of 0 means that the copy will be created at the root of the tree.</li>
                <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute that specifies the currently logged in user.</li>
            </ul>
        </li>
        <li><strong>return value</strong> - if the function returns <tt>true</tt>, the object will be copied. If the function returns <span class="console">false</span>, the copy will not be performed. In this case, it is useful to display an error message using the method <a href="#scripting-messagebox">MessageBox</a>.</li>
        <li><strong>Examples</strong>
            <p><strong>Example 2. Example - Disable copying objects for selected user</strong></p>
            <p>The following example of the OnNodeCopying function prohibits a user with ID 15 from copying objects. The user ID depends on the specific database and must first be found in the tblUser table - attribute intUserId.</p>
            <div class="wide">
                <pre class="console" translate="no">function OnNodeCopying(nNodeId,nDestNodeId,nUserId) {
    if ( nUserId == 15 ) {
        MessageBox(&quot;The object is forbidden to copy.&quot;,0x30);
        return false; 
    }
    return true;
}</pre>
            </div>

            <p><strong>Example 3. Example - calling a stored procedure on SQL server</strong></p>
            <p>In the following example, the stored procedure <tt>spOnNodeCopying</tt> on the SQL server is used to evaluate the event. Object copying is enabled if the stored procedure returns a non-zero value.</p>
            <div class="wide">
                <pre class="console" translate="no">function OnNodeCopying(nNodeId,nDestNodeId,nUserId) {
    var Con=new ActiveXObject(&quot;ADODB.Connection&quot;);
    Con.Open(ConnectionString);
    var Cmd=new ActiveXObject(&quot;ADODB.Command&quot;);
    Cmd.ActiveConnection=Con; 
    Cmd.CommandText=&quot;spOnNodeCopying&quot;;
    Cmd.CommandType=4; 
    Cmd.Parameters.Refresh();
    Cmd.Parameters.Item(&quot;@nNodeId&quot;).Value=nNodeId; 
    Cmd.Parameters.Item(&quot;@nDestNodeId&quot;).Value=nDestNodeId; 
    Cmd.Parameters.Item(&quot;@nUserId&quot;).Value=nUserId; 
    var Rs=Cmd.Execute();
    if ( Rs.Fields.Item(0)==1 )
        return true; 
    MessageBox(&quot;Object cannot be copied.&quot;,0x30);
    return false;
}</pre>
            </div>
            <p>The stored procedure is defined as follows:</p>
            <div class="wide">
                <pre class="console" translate="no">CREATE PROCEDURE [dbo].[OnNodeCopying]
    @nNodeId int, @nDestNodeId int, @nUserId int
AS
BEGIN 
    SET NOCOUNT ON; 
    SELECT 1
END</pre>
            </div>

        </li>
    </ul>
    <div id="onnodecopied"></div>
    <h2>OnNodeCopied</h2>
    <p>This function is called after copying an object or after creating a new object according to the template.</p>
    <ul>
        <li><strong>Syntax</strong> - void OnNodeCopied(nNodeId, nNewNodeId, nUserId)</li>
        <li><strong>Parameters</strong>
            <ul>
                <li><strong>nNodeId</strong> - the value of the attribute (in the database) tblNode.intNodeId of the object that was copied, i.e. the sample object.</li>
                <li><strong>nNewNodeId</strong> - value of the tblNode.intNodeId attribute of the new object that was created by copying.</li>
                <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute specifying the currently logged in user.</li>
            </ul>
        </li>
        <li><strong>return value</strong> - none</li>
        <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
    </ul>

    <div id="onnodemoving">

        <h2>OnNodeMoving</h2>
        <p>This function is called before moving an object in the tree to another location.</p>
        <ul>
            <li><strong>Syntax</strong> - bool OnNodeMoving(nNodeId, nDestNodeId, nUserId)</li>
            <li><strong>Parameters</strong>
                <ul>
                    <li><strong>nNodeId</strong> - the value of the attribute (in the database) tblNode.intNodeId of the object to be moved.</li>
                    <li><strong>nDestNodeId</strong> - the value of the tblNode.intNodeId attribute of the object to which the object is to be moved.  A value of 0 means that the object will be moved to the root of the tree.</li>
                    <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute that specifies the currently logged in user.</li>
                </ul>
            </li>
            <li><strong>return value</strong> - if the function returns <span class="console">true</span>, the object will be moved. If the function returns <span class="console">false</span>, the move will not be performed. In this case, it is useful to display an error message using the method <a href="#scripting-messagebox">MessageBox</a>.</li>
            <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
        </ul>

        <div id="onnodemoved">
            <h2>OnNodeMoved</h2>
            <p>This function is called after moving an object in the tree.</p>
            <ul>
                <li><strong>Syntax</strong> - void OnNodeMoved(nNodeId, nSrcParentNodeId, nUserId)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nNodeId</strong> - the value of the attribute (in the database) tblNode.intNodeId of the object that was moved.</li>
                        <li><strong>nSrcParentNodeId</strong> - the value of the tblNode.intNodeId attribute of the object that was the father (parent object) of the nNodeId object before it was moved.</li>
                        <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute that identifies the currently logged in user.</li>
                    </ul>
                </li>
                <li><strong>return value</strong> - none</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onnoderemoving">
            <h2>OnNodeRemoving</h2>
            <p>This function is called before removing an object, i.e. moving it to the Recycle Bin.</p>
            <ul>
                <li><strong>Syntax</strong> - bool OnNodeRemoving(nNodeId, bMoveToBin, nUserId)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nNodeId</strong> - value of the attribute (in the database) tblNode.intNodeId of the object to be removed or moved to the Recycle Bin.</li>
                        <li><strong>bMoveToBin</strong> - if the object is to be moved to the Recycle Bin, this parameter has the value <span class="console">true</span>.
 <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute specifying the currently logged in user.</li>
                    </ul>
                </li>
                <li><strong>return value</strong> - if the function returns <span class="console">true</span>, the object will be removed or moved to the Recycle Bin. If the function returns <span class="console">false</span>, the operation is not performed. In this case, it is advisable to display an error message using the method <a href="#scripting-messagebox">MessageBox</a>.</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onnoderemoved">
            <h2>OnNodeRemoved</h2>
            <p>This function is called after an object is removed, i.e. after it is moved to the Recycle Bin.</p>
            <ul>
                <li><strong>Syntax</strong> - void OnNodeRemoved(nNodeId, bMoveToBin, nUserId)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nNodeId</strong> - value of the attribute (in the database) tblNode.intNodeId of the object that was removed or moved to the Recycle Bin.</li>
                        <li><strong>bMoveToBin</strong> - if the object is moved to the Recycle Bin, this parameter has the value <span class="console">true</span>.
 <li><strong>nUserId</strong> - the value of the tblUser.intUserId attribute specifying the currently logged in user.</li>
                    </ul>
                </li>
                <li><strong>return value</strong> - none</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodificationenabled">
            <h2>OnPropertyModificationEnabled</h2>
            <p>Enables or disables the -Modify command to modify a property.</p>
            <ul>
                <li><strong>Syntax</strong> - bool OnPropertyModificationEnabled(nPropertyId)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nPropertyId</strong> - Attribute value (in the database) of the tblProperty.intPropertyId property to be modified.</li>
                    </ul>
                </li>
                <li><strong>Return Value</strong> - If the function returns <span class="console">true</span>, the -Edit menu command will be active. Otherwise it will be inactive (greyed out).</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodifying">
            <h2>OnPropertyModifying</h2>
            <p>This function is called within the -Modify command before saving the modified property to the database.</p>
            <ul>
                <li><strong>Syntax</strong> - bool OnPropertyModifying(nPropertyId, strNewValue)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nPropertyId</strong> - attribute value (in the database) of the tblProperty.intPropertyId property that is being modified.</li>
                        <li><strong>strNewValue</strong> - new value of the property.</li>
                    </ul>
                </li>
                <li><strong>NewValue</strong> - if the function returns <span class="console">true</span>, the new value is written to the database. If the function returns <span class="console">false</span>, the operation is not performed. In this case, it is advisable to display an error message using the method <a href="#scripting-messagebox">MessageBox</a>.</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodified">
            <h2>OnPropertyModified</h2>
            <p>This function is called after writing a new property value to the database within the -Modify command.</p>
            <ul>
                <li><strong>Syntax</strong> - void OnPropertyModified(nPropertyId)</li>
                <li><strong>Parameters</strong>
                    <ul>
                        <li><strong>nPropertyId</strong> - the attribute value (in the database) of the tblProperty.intPropertyId property that has been modified.</li>
                    </ul>
                </li>
                <li><strong>Return value</strong> - none</li>
                <li><strong>Examples</strong> - see <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <h2>MessageBox</h2>
        <p>Function displays a text message box.</p>
        <ul>
            <li><strong>Syntax</strong> - int MessageBox(Text,Type)</li>
            <li><strong>Parameters</strong>
                <ul>
                    <li><strong>Text</strong> - message text.</li>
                    <li><strong>Type</strong> - parameter can contain a combination of the following bit values.<ul>
                        <li><strong>Buttons</strong>

                            <table class="wide">
                                <thead>
                                    <tr>
                                        <th class="auto-style1">Value</th>
                                        <th class="auto-style1">Symbol</th>
                                        <th class="auto-style1">Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0</td>
                                        <td>MB_OK</td>
                                        <td>OK</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>MB_OKCANCEL</td>
                                        <td>OK, Cancel</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MB_ABORTRETRYIGNORE</td>
                                        <td>Cancel, Reset, Ignore</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>MB_YESNOCANCEL</td>
                                        <td>Yes, No, Cancel</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>MB_YESNO</td>
                                        <td>Yes, No</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>MB_RETRYCANCEL</td>
                                        <td>Return, Cancel</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                        <li><strong>Icons</strong>
                            <table class="wide">
                                <thead>
                                    <tr>
                                        <th>Value</th>
                                        <th>Symbol</th>
                                        <th>Description</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0x10</td>
                                        <td>MB_ICONERROR</td>
                                        <td>error (red)</td>
                                    </tr>
                                    <tr>
                                        <td>0x20</td>
                                        <td>MB_ICONQUESTION</td>
                                        <td>questionnaire</td>
                                    </tr>
                                    <tr>
                                        <td>0x30</td>
                                        <td>MB_ICONEXCLAMATION</td>
                                        <td>exclamation mark (yellow)</td>
                                    </tr>
                                    <tr>
                                        <td>0x40</td>
                                        <td>MB_ICONINFORMATION</td>
                                        <td>information</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                        <li><strong>Default Button</strong> - the value from the following table determines which button in the order from the left will be set as the default.
                            <table class="wide">
                                <thead>
                                    <tr>
                                        <th>Value</th>
                                        <th>Symbol</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0</td>
                                        <td>MB_DEFBUTTON1</td>
                                    </tr>
                                    <tr>
                                        <td>0x100</td>
                                        <td>MB_DEFBUTTON2</td>
                                    </tr>
                                    <tr>
                                        <td>0x200</td>
                                        <td>MB_DEFBUTTON3</td>
                                    </tr>
                                    <tr>
                                        <td>0x300</td>
                                        <td>MB_DEFBUTTON4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                    </ul>
                    </li>
                </ul>
            </li>
            <li><strong>Return Value</strong>
                <table class="wide">
                    <thead>
                        <tr>
                            <th>Value</th>
                            <th>Symbol</th>
                            <th>Description</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>IDOK</td>
                            <td>OK</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>IDCANCEL</td>
                            <td>Storno</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>IDABORT</td>
                            <td>Cancel</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>IDRETRY</td>
                            <td>Reset</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>IDIGNORE</td>
                            <td>Ignore</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>IDYES</td>
                            <td>Yes</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>IDNO</td>
                            <td>No</td>
                        </tr>
                    </tbody>
                </table>
            </li>
            <li><strong>Examples</strong>

                <p><strong>Example 4. Using MessageBox</strong></p>
                <p>The following example will display a window with the question &quot;Do you want to continue?&quot; and Yes and No buttons, with the No button active.</p>
                <div class="wide">
                    <pre class="console" translate="no">if ( MessageBox(&quot;Do you want to continue?&quot;,4+0x20+0x100) == 6 )
  // continue ...  </pre>
                </div>
            </li>
        </ul>

        <h2>ConnectionString</h2>
        <p>The ConnectionString variable contains the connection string for the currently open database. The variable is read-only.</p>
        <div class="note">
            <div class="icon"></div>
            <div class="title">Note:</div>
            The connection string conforms to ADO technology rules.
        </div>

        <p><strong>Example 5. Using the ConnectionString variable</strong></p>
        <p>In the following example, a connection is made to the Con variable to a database that is currently open in the AM Console.</p>
        <div class="wide">
            <pre class="console" translate="no">var Con=new ActiveXObject(&quot;ADODB.Connection&quot;);
Con.Open(ConnectionString); </pre>
        </div>

        <h2>UserId</h2>
        <p>The UserId variable contains the identifier of the user who is currently logged into the AM Console. The variable is read-only.</p>
        <p>The identifier corresponds to the value of the intUserId attribute in the tblUser table in the database.</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }
    </style>
</asp:Content>

