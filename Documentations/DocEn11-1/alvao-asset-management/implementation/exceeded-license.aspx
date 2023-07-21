<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>ALVAO Asset Management license exceeded</h1>

    <p>If there are more computers in the object tree than the system is licensed for, the functionality of the system will be limited. Remove the excess computers from the inventory or enter the activation key with the larger license that you obtain from your Alvao system vendor.</p>

    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        After removing the computers, run AM Console again, or use the Help - Program Information command to recheck the license and restore blocked functionality if necessary.
    </div>

    <p>The functionality restriction applies only to the last added computers that exceed the license. For computers that were added to the registry before the license was exhausted, functionality will be fully preserved.</p>

    <p>Hardware and software detections are not performed for computers that exceed the license, nor can manual detections be loaded into the system. These computers are not displayed or counted in the Licenses and Installations Overview window or on the Software tab for the organizational folder.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Computers in the Discarded Assets, Trash, Object Templates, and Object Patterns folders are not included in the license.
    </div>

</asp:Content>
