<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Sum of values</h1>
    <p>
        In this Window you can view the result of the function <a href="../../../alvao-asset-management/objects-and-properties/functions">Sum</a> and allows you to update property values.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Yes</strong> - update the property values of objects in the selected subtree according to the property values in their subobjects.</li>
        <li><strong>No</strong> - not updating property values.</li>
    </ul>

    <h3>Example of property update.</h3>
    <p>We have selected <strong>Use Function</strong> on the server room and aggregated via the <strong>Price</strong> property.</p>
    <ul>
        <li>Server room</li>
        <ul>
            <li>Server 1</li>
            <ul>
                <li>Raid box - Price = 19 000 CZK</li>
                <li>Raid array - Price = 17 000 CZK</li>
                <li>Raid array - Price = 21 000 CZK</li>
                <li>Monitor - Price = 5 000 CZK</li>
                <li>Tape drive - Price = 10 000 CZK</li>
            </ul>
            <li>Server 2</li>
            <ul>
                <li>Raid box - Price = 20 000 CZK</li>
                <li>Raid array - Price = 20 000 Kč</li>
                <li>Raid box - Price = 20 000 CZK</li>
                <li>Raid box - Price = 20 000 CZK</li>
                <li>Monitor - Price = 3 000 CZK</li>
                <li>Tape drive - Price = 12 000 CZK</li>
            </ul>
            <li>Server 3 - Price = 18 000 Kč</li>
            <ul>
                <li>Raid array - Price = 22 000 Kč</li>
                <li>Monitor - Price = 2 000 Kč</li>
            </ul>
        </ul>
    </ul>
    <p>
        Each server and server room has a price property. Only server 3 has this property filled in, but its value is not current.<br />
        The sum function performed a sum of all objects with the price property and printed that the sum of the assets in the server room is 191 thousand crowns. If we update the values, it assigns values to the price property as follows:<br />
        Server 1 - 72 000 CZK<br />
        Server 2 - 95 000 CZK<br />
        Server 3 - 24 000 CZK<br />
        Server room - 191 000 CZK<br />
    </p>
</asp:Content>
