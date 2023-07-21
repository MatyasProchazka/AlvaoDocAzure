<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Move licence</h1>
	<p>This function is used to move selected licenses to another computer or user, or to another cost center.</p>
	<ul>
 <li><strong>Move licenses to a computer/user</strong
 select the computer or user from the menu to which the licenses will be moved. A quick search can be used in the menu.<br/>
 When moving multiple licenses of different types in bulk, only licenses of the "per computer" type will be moved.</li>
 <li><strong>Move licenses to cost centre</strong> -
 select a cost centre from the menu, or enter a new cost centre under which the licences will be moved. A quick search can be used in the menu.</li>
	</ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 When moving to another computer/user or cost center, any underlying licenses that have been upgraded by the moving licenses will also be moved. </div>

</asp:Content>
