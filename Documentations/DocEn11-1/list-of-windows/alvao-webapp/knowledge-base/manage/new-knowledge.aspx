<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>New Knowledge</h1>
    <p>Use this form to create a new <a href="../../../../alvao-service-desk/knowledge-base">knowledge</a>.</p>
    <p>Options:</p>
    <ul>
        <li>Command Panel<ul>
            <li><strong>OK</strong> - submit form</li>
            <li><strong>Attachment</strong> - attach an attachment to the knowledge. This command has the same function as the <em>Add Attachment</em> button.
  in the form.</li>
            <li><strong>Assign to Services</strong> - assign the knowledge to services. This command has the same function as the <em>Knowledge Assigned to Services - Edit</em> button.
  in the form.</li>
        </ul>
        </li>
        <li><strong>Name</strong> - enter a short name for the knowledge that will be displayed as the title.</li>
        <li><strong>Annotation</strong> - briefly summarize the content of the knowledge. This text is displayed below the title.</li>
        <li><strong>Text</strong> - describe the procedure or create the necessary article.</li>
        <li><strong>Attachments</strong> - list the attachments to the knowledge<ul>
            <li><strong>Add Attachment</strong> - select the file you want to add as an attachment. You can also attach files by dragging and dropping them into the form.</li>
        </ul>
        </li>
        <li><strong>Knowledge Assigned to Services</strong> - an abbreviated list of services to which the knowledge is assigned.<ul>
            <li><strong>Edit</strong> - in the services table, select the services to which you want to assign the knowledge.</li>
        </ul>
        </li>
        <li><strong>Display to requesters</strong> - turn on if you want the knowledge to be visible to Requesters of the corresponding services. If disabled, the knowledge display is governed by <a href="../../../../alvao-service-desk/knowledge-base">knowledge permissions</a>.</li>
        <li><strong>Display Order</strong> - Enter a numeric value that determines the order in which the knowledge is displayed in the lists. Knowledge is displayed in ascending order of the value in this entry. 
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                Use a uniform scale of values across all services, e.g. 5=frequently used knowledge (FAQ), 10=normal knowledge, 15=little used knowledge. This will ensure the correct order of displaying knowledge from different services.
            </div>
            <div class="tip">
                <div class="icon"></div>
                <div class="title">Tip:</div>
                In the title, annotation and text of the knowledge, use words that your users actually search for the knowledge. For search statistics, see <a href="../../../../alvao-service-desk/evaluation-of-system-operation/data-analysis">data analysis</a> on the <em>Search</em> sheet.
            </div>

        </li>
    </ul>

</asp:Content>
