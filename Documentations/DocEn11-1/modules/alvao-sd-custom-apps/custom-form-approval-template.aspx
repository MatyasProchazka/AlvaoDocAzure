<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom Request Approval Form</h1>
    <p class="MsoNormal">The ALVAO WebApp request approval/rejection form can be replaced by a custom form with specific content and behavior. The custom form allows the approver to set some of the request items and thus allows support for more complex approval schemes.<o:p></o:p></p>
    <p class="MsoNormal">
        Templates for creating custom forms can be found in the <strong>\Custom\Templates\Approval</strong> in the ALVAO WebApp installation folder.
    </p>


    <h2>Preparing a new form</h2>
    <p>
        Copy the sample form - <strong>Approval</strong> folder to the <strong>Approval</strong> folder
        <strong>Custom\&lt;functionality name&gt;</strong>. Rename both the .cshtml and .cs files contained in the folder so that the name matches the meaning or functionality of the form.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        A general description for setting up custom forms is described in the instructions for <a href="custom-form-template">Custom form for submitting a new request</a>.

    </div>

    <h2>Form behaviour definition</h2>

    The description of the behavior is in the <strong>.cs</strong> file. In the code, comments indicate areas that are intended for modification. Do not interfere with other parts of the code! The most important thing here is request approval. In the file there is already an example of approval and rejection of a request, according to which you can make your own modifications.<br />
    The basic structure of the request approval/rejection commands is as follows:<br />
    <p>
        <strong>TicketApprovalAccept(iHdTicketId, &quot;Request approved:&lt;br&gt;&quot;+
MessageBody);</strong><br />
        <strong>TicketApprovalReject(iHdTicketId, &quot;Request denied:&lt;br&gt;&quot;+
MessageBody);</strong>
    </p>
    <p>Where <strong>MessageBody</strong> is the already prepared request approval/denial text that was created by converting the form content to text. If necessary, text concatenation can be used in all items as shown in the example. To insert line breaks into the actual text, use the &lt;br&gt; tag.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        If the "StringField" element is not used on the form,
	which can be used to enter text in HTML format, use the string \n for line breaks.<br />
        To access the values of custom fields, use the following structure (example for items &quot;NewName&quot; and &quot;NewNumber&quot;):<br />
        <br />
        <strong><span class="console" translate="no">string newName = ((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NewName&quot;).Value as string;<br />
            int newNumber = (int)((ColumnsControl)Model.ColumnsControl[&quot;ColumnsControl0&quot;]).Values.Find(Col =&gt; Col.Column.sColumn == &quot;NewNumber&quot;).Value;<span class="console">
            </span>
        </span></strong>

    </div>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        If you want to approve the current step, prematurely terminate approval with it, and skip any subsequent steps in the running approval scheme, use the following structure:<br />
        <br />
        <strong>TicketApprovalAcceptAndFinish(iHdTicketId, &quot;Request Approved:&lt;br&gt;&quot;+ MessageBody);</strong><br />
    </div>

    <h2>Connecting the form to the application</h2>
    <p class="MsoNormal">
        In&nbsp;ALVAO WebApp - Administration - Service Desk -
            <a href="../../list-of-windows/alvao-webapp/administration/service-desk/approval-scheme">Approval Schemes</a> select the schema you want to edit. Use the <em>Edit</em> command in the <em>Approval Steps</em> block to open a window to edit the approval step. In the <strong>Custom Form (URL)</strong> entry
enter the URL of the created form (in the same format as used in the Service -
  Edit - New Ticket Submission Form - Form Design - <a href="../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">Custom form (URL)</a>).
    </p>
</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>
