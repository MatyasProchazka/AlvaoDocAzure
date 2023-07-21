<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Mapping Active Directory Attributes to Object Properties</h1>
    <p>The ALVAO Asset Management system allows you to retrieve data from Active Directory. Organizational objects, users, and computers are retrieved by default. To configure the retrieval of data from Active Directory, the tblADMap database table is used, which describes the mapping of the Active Directory object structure to ALVAO Asset Management objects.</p>
    <img class="wide" src="tblADMap.png" alt="tblADMap" />
    <p><strong>Description of the tblADMap table:</strong></p>
    <ul>
        <li><strong>lintClassId</strong> - the object kind, e.g. <strong>5</strong>,
 <strong>47</strong>, <strong>48</strong>, <strong>49</strong>, <strong>50</strong> - computer (see below); <strong>7</strong> - user; <strong>30</strong> - folder.
            <p>
                Computer types: <strong>5</strong> -
  Computer/desktop, <strong>47</strong> - Computer/laptop, <strong>47</strong> - Computer/notebook, <strong>48</strong> - Computer/virtual, <strong>49</strong> - Computer/terminal, <strong>50</strong> - Computer/server.
            </p>
        </li>

        <li><strong>lintKindld</strong> - object property identifier corresponding to the value of the intKindId attribute in the tblKind table. If you do not fill in this field, the value is loaded from Active Directory into the object name.</li>
        <li><strong>txtADClass</strong> - the name of the Active Directory object class.</li>
        <li><strong>txtADAttr</strong> - the name of the Active Directory object attribute. Special values are allowed: <strong>sAMAccountNameWithDomain</strong> - the username (sAMAccountName) with the entire domain, <strong>lastFound</strong> - the date the object was last found in AD, <strong>Alvao.computerName</strong> - the computer name (the value is governed by the <a href="../../../../../list-of-windows/alvao-asset-management-console/tools/settings/general">List-of-windows/alvao-asset-management-console/tools/settings/general">In computer names, specify the domain name (FQDN))</a>.</li>
        <li><strong>bolKey</strong> - a value of True means that the attribute is unique.  
            <div class="caution">
                <div class="icon"></div>
                <div class="title">Caution:</div>
                Each class in the tblADMap table must have only one attribute that is unique. 
            </div>
        </li>
    </ul>

    <p>In the tblADMap table, you can configure the loading of additional properties from Active Directory into ALVAO Asset Management.</p>
    <p>For example, if you want to load the phone number property of a user from Active Directory into the phone property of the user object in ALVAO Asset Management, do the following:</p>
    <ol>
        <li>Open the tblADMap table for editing.</li>
        <li>Enter the values <em>in the lintClassId column.
  &quot;7&quot; </em>- user.</li>
        <li>Enter the <em>values in the lintKindld column.
  &quot;45&quot; </em> - the Phone property (it is necessary to find out in the tblKind table what intKindId the Phone property has).</li>
        <li>In the txtADClass column, enter <em>&quot;user&quot;</em>.</li>
        <li>In the txtADAttr column, enter <em>&quot;telephoneNumber&quot; </em>.</li>
        <li>In the bolKey column, enter the values <em>&quot;False&quot;</em>.</li>
    </ol>
    &nbsp;

</asp:Content>
