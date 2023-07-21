<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Custom functions to select person</h1>
    <p>
        The <em>Person</em> input field is used in forms to specify a person, such as an applicant, investigator, note author, etc. The field allows you to search and select a person from a menu. The field is used in the following form commands.
    </p>
    <ul>
        <li>New Request</li>
        <li>Submit (also in bulk)</li>
        <li>Edit request (also in bulk)</li>
        <li>Move to another service (also in bulk)</li>
        <li>New Note (also in bulk)</li>
        <li>New Event</li>
        <li>Approve</li>
        <li>My Team - New/Edit</li>
    </ul>

    <h2>System Behaviour</h2>
    <p>
        In ALVAO WebApp, the <em>Person</em> field displays values in two rows. The first line displays the <strong>user name</strong>. The second line displays <strong>department; office; personal number; organization; work phone; mobile number</strong>.<br />
    </p>
    <p>
        The text entered in the field is searched in all columns displayed. It is possible to enter part of the values from several items. The values must be separated by a space and in the same order as they appear in the whisper. Prompted items are sorted by user name.
    </p>

    <h2>Custom functions</h2>
    <p>
        If you wish to change the way you search, sort and display values in the person field, add the <strong translate="no">spPersonSearch_Custom2</strong> procedure to the database.<br />
        If the <em translate="no">spPersonSearch_Custom2</em> procedure is defined in the database, it will always be used for the person menu instead of the default <em translate="no">spPersonSearch</em> procedure.<br />
        The <em translate="no">spPersonSearch_Custom2</em> procedure has the same inputs and outputs as the existing <a href="../../alvao-asset-management/implementation/customization/database#P-dbo.spPersonSearch" translate="no">spPersonSearch</a> procedure.
    </p>
</asp:Content>
