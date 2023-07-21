<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Description of XML object export</h1>

    <p>The tree structure in Asset management can be exported to XML format. Below you can find a description of the individual tags (entities) that are used in the structure.</p>
    <ul>
        <li>ICONLIST - a list of icons including the binary form
            <ul>
                <li>ICON - icon
                    <ul>
                        <li>UID - unique identifier of system icons</li>
                        <li>DATE - binary icon data (24-bit BMP without FILEHEADER)</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>KINDLIST - list of property definitions</li>
        <ul>
            <li>KIND - property definition</li>
            <ul>
                <li>NAME - name</li>
                <li>ICON - icon name</li>
                <li>ORDER - order</li>
                <li>FLAGS - bitmap of property attribute settings, (0x0002=uses list of values, 0x0020=inherited, 0x1000=unique,0x2000=selection only)</li>
                <li>VALUELIST - list of static values</li>
                <li>VALUEKINDID - name of the property from which the list of values is shared</li>
                <ul>
                    <li>VALUE - value in the list of values</li>
                </ul>
                <li>UNIQUE - unique</li>
                <li>GLOBALSCOPE - global across all objects</li>
                <li>SELECTONLY - selection only</li>
                <li>ACCOUNTING - accountant role can edit values</li>
                <li>CLEANVALUEBYCOPYING - delete value when copying an object</li>
            </ul>
        </ul>
        <li>NODE - object in tree</li>
        <ul>
            <li>NAME - name in the tree</li>
            <li>ICON - icon name</li>
            <li>CLASSID - object kind ID</li>
            <li>CLASS - object kind</li>
            <li>HIDDEN - system object</li>
            <li>STATE - bitmap of object attribute settings (0x16=hidden object)</li>
            <li>AUTOUPDATE - automatically update according to detection</li>
            <li>IGNOREDIFFERENCES - ignore differences against registration</li>
            <li>PROPLIST - list of object properties</li>
            <ul>
                <li>PROP - property</li>
                <ul>
                    <li>VALUE - value</li>
                    <li>KIND - property type</li>
                    <li>STATE - bitmap of property attributes (0x10=determine name in tree, 0x40=inherit property)</li>
                    <li>NAMEORDER - order in the object name</li>
                    <li>INHERITABLE - inherit property</li>
                </ul>
            </ul>
            <li>HISTORYLIST - object history</li>
            <ul>
                <li>HISTORY - one history record</li>
                <ul>
                    <li>DATE - date</li>
                    <li>DESC - description</li>
                    <li>USER - user</li>
                    <li>FLAGS - bitmap of flags (See chapter on <a href="database">Alvao database</a>).</li>
                </ul>
            </ul>
            <li>NODELIST - list of NODE child objects</li>
            <li>SWLIST - list of installed software on the computer</li>
            <ul>
                <li>SW - name of the installed product, attributes:</li>
                <ul>
                    <li>CAT - category (1=operating system)</li>
                    <li>TYPE - 1=commercial, 2=freeware, 3=shareware, 4=unspecified</li>
                    <li>LICNAME - the name of the license that covers the installation</li>
                    <li>SERIALNUM - license activation key</li>
                    <li>FROMPACK - the product is included in the package</li>
                    <li>INSTUSER - installed</li>
                    <li>INVNUM - license inventory number</li>
                    <li>INVOICE - invoice number of the purchased license</li>
                    <li>PARAM1 - product user field</li>
                    <li>PARAM2 - user field of the product</li>
                    <li>INSTDATE - installed</li>
                    <li>DETINSTDATE - installation detected</li>
                    <li>AUTHORIZED - approved installation</li>
                </ul>
            </ul>
        </ul>
    </ul>


</asp:Content>
