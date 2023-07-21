<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Absence</h1>
	<p>On this page you can schedule your absence from work and choose your <a href="../../../alvao-service-desk/implementation/users/deputy">representative</a>.</p>
<p>Options:</p>
	<ul>
 <li><strong>I am or will be absent</strong> - turn on if you plan to be absent from work.<ul>
 <li><strong>From</strong> - enter the date and time you will be absent from work.</li>
 <li><strong>To</strong> - enter the date and time you will be back at work.</li>
 </ul>
 </li>
 <li><strong>My substitute</strong>- enter at least part of your representative's name and then select that person from the menu. Your representative must be from the same organisation as you.</li>
 <li><strong>I am substituting</strong> - the table lists the people you are representing and the dates of their planned absence. <ul>
 <li><strong>Set person as Out of office (absent)</strong> - if the person has not set their absence and is absent, you can set an absence for them.</li>
 
 </ul>
 

</ul>

</asp:Content>


