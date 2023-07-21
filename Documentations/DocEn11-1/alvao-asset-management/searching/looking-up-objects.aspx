<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Object Search</h1>
    <ol>
        <li>From the main menu, select <strong>Edit - Find</strong>.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/edit/find">Search - Text</a>, in which you enter the search text or part of it and select whether to search <strong>object names</strong>, <strong>property values</strong>, <strong>notes</strong> or <strong>object log</strong>
            (<em>Record Type</em>
            - Object History and Information). For example, to find a computer in the tree by its name, just search the object names because the object representing the computer is named after the computer. To find a computer by serial number, we have to search the property values because the serial number is written as a property of the computer object. For normal object lookups, we just need to search the object names and property values. If you are entering only part of the search text, type an asterisk before and after the text. If you do not use the <strong>Whole text only</strong> option, &quot;*&quot; are added automatically. For example, if we search for the text &quot;*desk*&quot; in object names,
the program will find the objects &quot;DeskPorte&quot;, &quot;HelpDesk&quot;, &quot;desktop&quot; etc.</li>
        <li>Stop the search with the <strong>Search</strong> button.</li>
        <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Found Objects</a> with a list of found objects, when you double-click an item in the list, the corresponding object is selected in the tree.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        You can keep the <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">found objects</a> window open on your screen and work in the main AM Console window at the same time. You can close and reopen it with the <strong>View - Found Objects</strong>.
    </div>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        Searching for equipment by inventory or serial numbers will also be greatly facilitated by a simple barcode scanner, which works by simulating the input of the corresponding numeric code from the computer keyboard when connected to the computer and reading the barcode.<p>To locate equipment using a barcode scanner, proceed as follows:</p>
        <ol>
            <li>Select <strong>Edit - Find</strong> from the main menu, or click the mouse somewhere in the tree and press <span class="key">Ctrl</span>+<span class="key">F</span>.
This will open a search window on the screen - <a href="../../list-of-windows/alvao-asset-management-console/edit/find">Search - Text</a>.</li>
            <li>Read the barcode of the inventory number or serial number from the label on the device using a scanner. The reader enters the numeric code in the search line and presses <span class="key">Enter</span> to begin searching for objects in the tree.</li>
            <li>A window will open on the screen <a href="../../list-of-windows/alvao-asset-management-console/view/search-results">Found Objects</a> with a list of found devices.</li>
        </ol>
    </div>
</asp:Content>
