<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Copied items</h1>
  <p>In this window, select the source request fields whose values you want to copy to the newly created linked request.</p>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
Fields are only displayed if they have been added to both the process service used in the source request and the process service from which the new linked request is created.
</div>

  <div class="note">
	<div class="icon"></div>
	<div class="title">Note:</div>
	Values of unfilled (blank) items are not copied even if they are selected in this window.
</div>

</asp:Content>
