<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Request form</h1>
    <p>In this window, you can specify the form of the <em>New Request Form</em> that requesters use to submit their requests self-service. This form may look different in each service and may contain different fields. Main solvers who write requester requests also see this form, but it has additional fields for operators compared to requester requests.</p>
    <p>Options:</p>
    <ul>
        <li><strong>Commands Panel</strong>
            <ul>
                <li><strong>Save and Close</strong> - save changes and close the window.</li>
                <li><strong>Add Item</strong> - <a href="new-ticket-form-add-item">add</a> an item or section to the end of the form.</li>
                <li><strong>Design Form/Custom Form (URL)</strong> - select whether to design the form by selecting the request items, or use <a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">custom programmed form</a> and enter only its URL.</li>
                <li><strong>...</strong>
                    <ul>
                        <li><strong>Default request template</strong> - select <a href="select-template">default request template</a> to populate the default form field values. This command is only displayed in <i>Form Design</i> mode.</li>
                        <li><strong>Javascript</strong> - specify custom javascript that is added to the form page and can modify its appearance and behavior. This command is only available after activating the <a href="../../../../../../modules/alvao-sd-custom-apps" translate="no">ALVAO Service Desk Custom Apps</a>.</li>
                        <li><strong>Process</strong> - displays the <a href="../../process/detail">process page</a> of the service being edited.</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><strong>Form Design Mode</strong> - in this mode, form items are displayed in the window. You can add additional items to the form by using the <em>Add Item</em> command in the command bar or by clicking the button below the last item. Clicking on the item name will expand the item body with additional options. You can change the order of items on the form by dragging them with the mouse. 
            <ul>
                <li>
                    <strong>Requested for</strong> - the item appears on the form only to members of the <em>Users with permission to create requests for other users</em> system group. This item cannot be removed from the form or moved to another location.  </li>
                <li><strong>Request Name</strong> - This item is displayed in the editor even if it is hidden on the form. 
                    <ul>
                        <li><strong>Display in the form</strong> - turn this on if you want to show a field on the form for requesters to enter a request name.</li>
                        <li><strong>Hide on form and build request name by template</strong> - turn on if you do not want the requester to enter the request name on the form, but want the name to be built automatically from the values of other items. Specify a template to automatically build the title according to. You can use static text in the template and also variables representing the values of the request items. The template is applied only to newly created requests. If the template contains variables, the request is not automatically renamed when the value of the request item (variable) is changed. 
                            <ul>
                                <li><strong>Insert Variable</strong> - in the request name template, place the cursor where you want to insert the variable, and then select the variable from this menu.</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li><strong>Objects</strong>
                    <ul>
                        <li><strong>Required</strong> - see this option in the <i>Other Items</i> block</li>
                        <li><strong>Insert into request name template</strong> - see this option in the <i>Other Items</i> block</li>
                        <li><strong>Limit field by object kind</strong> - if you want the requester to be able to fill in only objects of certain types in the <i>Objects</i> field when submitting a request, specify those allowed types.</li>
                    </ul>
                </li>
                <li><strong>Sections</strong> - to make the form clearer, you can group its items into sections and name these sections. Insert a section into the form using the Add Item command and then move it to the place where the block of items should start. The block will include all subsequent items until the end of the form or the beginning of the next section. In the <a href="../../../../requests/new-request">New Request</a> form, the user can then collapse or expand each section of items as needed.
                    <ul>
                        <li><strong>Edit (pencil icon)</strong> - edit section name.</li>
                        <li><strong>Remove from form (trashcan icon) </strong>- removal of the section. Section entries are not removed from the form</li>
                        <li><strong>More options after expanding </strong>
                            <ul>
                                <li><strong>When the form is displayed, section - Collapse/Expand</strong> - select the default section display mode on the <a href="../../../../requests/new-request">New Request</a> form</li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li>Additional Items - a list of additional form items. 
                    <ul>
                        <li>Header items
                            <ul>
                                <li><strong>Form Item (lock icon)</strong> - this icon indicates items that are only on the form for submitting a new request. These items, unlike process-defined items, do not appear on the General tab of the request, and members of the solution team cannot change their values in the request. Like process-defined items, these items are written to the request creation message and can be displayed in the columns of the request table.</li>
                                <li><strong>Edit (pencil icon)</strong> - <a href="new-ticket-form-edit-item">edit</a> the selected custom request item.</li>
                                <li><strong>Remove from form (trashcan icon)</strong> - remove the selected item from the form. Items that are set as mandatory for the <em>New</em> status in the <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">process</a> of the service cannot be removed from the form.</li>
                            </ul>
                        </li>
                        <li>Item body<ul>
                            <li><strong>Mandatory</strong> - turn on if you want to prevent the requester from submitting a request without filling in a value for this item. For items that are set as mandatory for the <em>New</em> status in the <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">process</a> service, this option cannot be disabled. The <em>Request Name</em>, <em>Request Description</em>, and <em>Request Attachments</em> items cannot be marked as mandatory.
                        <li><strong>Add to request name template</strong> - a variable representing the value of this item is added to the end of the request name template, see <em>Request name</em>.</li>
                        </ul>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><strong>Custom Form Mode (URL)</strong>
            <ul>
                <li><strong>Custom Form URL</strong> - alternatively, enter the path to the <a href="../../../../../../modules/alvao-sd-custom-apps/custom-form-template">form for submitting a new request</a>, usually in the form <em>~/Custom/&lt;extension name&gt;/&lt;form name without the .cshtml&gt;</em>.</li>
            </ul>
        </li>
    </ul>


    <p>
        The <em>New Request</em> form displays all mandatory items for the <em>New</em> status in addition to the selected optional items, according to the <a href="../../../../../alvao-webapp/administration/service-desk/process/detail/request-items">process settings</a>.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Service - Edit - <a href="../extended">Extended</a> section - the <em>Show Requester Optional Items</em> option does not specify the items displayed on the <em>New Request</em> form.
    </div>
</asp:Content>
