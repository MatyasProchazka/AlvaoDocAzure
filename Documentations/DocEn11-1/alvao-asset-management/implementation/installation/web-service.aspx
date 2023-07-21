<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Installing Asset Management WebService and Alvao Service separately on different servers</h1>
    <p>ALVAO Asset Management WebService is installed separately and is used to communicate with standalone Agents.</p>
    <h2>Changing the folder for storing detections</h2>
    <p>
        By default, AM WebService stores received detections in the the folder set in 
        <a href="../../../list-of-windows/alvao-webapp/administration/asset-management/settings/detection">Administration – Asset Management – Settings – Detection – Loading files</a>. 
        The Alvao Service then retrieves these detections from this folder. If you want to install Asset Management WebService on different machine than Alvao Service, 
        set the <i>Path</i> in the settings to UNC path to shared folder (e. g. <span class="console">\\server1\detection</span>).
    </p>
</asp:Content>
