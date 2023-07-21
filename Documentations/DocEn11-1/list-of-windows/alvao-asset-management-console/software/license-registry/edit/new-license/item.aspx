<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>License item</h1>
<p> In this Window, you can edit the license item - that is, the computer or user to whom the license is assigned and other details about that assignment.</p>
<p>Options:</p>
	<ul>
 <li><strong>Computer/User</strong> - select from the list the computer or user to which you want to assign the license. Alternatively, use <strong>
 ...</strong> select in a new window
 <a href="../../../license-and-install-overview/actions/computers">Computers</a> or <a href="../../../license-and-install-overview/actions/users">
 Users</a>.<br/>
 <div class="note">
 <div class="icon"></div>
 <div class="title">Notes:</div>
 <ul>
 <li>If you are adding new entries, you can also select multiple computers/users at once. Only one item can be edited.</li>
 <li>Only computers/users that have not yet been assigned a license are offered.</li>
 <li>If you change the computer of an existing license item, this change will be propagated throughout the upgrade history, i.e. also to the items to which this license is linked.</li>
 </ul></div></li>
 <li><strong>Number of licenses assigned</strong>- Enter the number of licenses you want to assign to the selected computer. This field is displayed only for kernel licenses.
  <div class="tip">
 <div class="icon"></div>
 <div class="title">Tip:</div>
 The number of physical cores of the selected computer is listed under the Computer field. </div>
 </li>

 <li><strong>Activation Key</strong> - Enter the license activation key. <br/>If you are assigning an MSDN license to a user, enter the MSDN ID number here. <div class="caution">
 <div class="icon"></div>
 <div class="title">Caution:</div>
 This value will be stored in the database in unencrypted form! </div></li>
 <li><strong>Cost Center</strong> - eventually select or type <a href="../../../license-and-install-overview/view">cost center</a> for which the license item is intended. <div class="note">
 <div class="icon"></div>
 <div class="title">Notes:</div>
 <ul>
 <li>If you do not enter any value, the license will be available for all cost centres.</li>
 <li>If you change the cost centre for an existing license item, the change will be propagated throughout the upgrade history, including to items to which the license is linked.</li>
 </ul></div></li>
 <li><strong>Inventory Number</strong> - specify the inventory number under which this license item will be recorded in the accounting system.</li>
 <li><strong>Request</strong> - a number or other reference to a request related to the license request item can be entered, e.g. purchase request, etc.</li>
 <li><strong>Note</strong> - write a note on the license item.</li>
 <li><strong>Enter next item</strong> - turn on if you want to enter another license item. (This option is only available if you are writing a new license item.)</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Note:</div>
 If you do not enter a <em>&quot;serial number&quot;</em>, <em>&quot;center&quot;</em> or <em>
 &quot;inventory number&quot;</em>, the corresponding value specified in the license is automatically used. </div>

</asp:Content>
