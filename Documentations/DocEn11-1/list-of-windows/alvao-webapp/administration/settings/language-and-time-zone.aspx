<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Languages and time zone</h1>
    <p>On this page, you can specify which languages users can choose their <a href="../../../../list-of-windows/alvao-webapp/settings/language">preferred language</a> from, and in which time zone they want to see time data by default. In a <a href="../../../../alvao-service-desk/implementation/multi-languages">multi-language environment</a>, you can translate some settings items into other languages here.</p>

    <p>Options:</p>
    <ul>
        <li><strong>Command Panel</strong>
            <ul>
                <li><strong>Download translation workbook</strong> - download an MS Excel file with phrases for translation when used in a <a href="../../../../alvao-service-desk/implementation/multi-languages">multi-language environment</a>.</li>
                <li><strong>Upload translations</strong> - upload the translated file to Alvao.</li>
            </ul>
        </li>
        <li><strong>Alvao System Language</strong> - basic <a href="../../../../alvao-asset-management/implementation/supported-languages">Alvao system language</a>. This language must be selected during the initial installation of Alvao and cannot be changed later.</li>
        <li><strong>Additional Languages in the Preferred Language Selection Menu</strong> - a list of additional languages that are displayed to users in the menu for selecting their <a href="../../../../list-of-windows/alvao-webapp/settings/language">preferred language</a>, and into which you may want to translate some <a href="../../../../alvao-service-desk/implementation/multi-languages">setting items</a>.
  <ul>
      <li><strong>Add language</strong> - <a href="add-language">add</a> another language to the list.</li>
  </ul>
        </li>
        <li>
            <strong>Default time zone</strong> - the default time zone in which time data is displayed to users in the application.<ul>
                <li><strong>Edit</strong> - change the time zone.</li>
            </ul>
            <div class="note">
                <div class="icon"></div>
                <div class="title">Note:</div>
                Alternatively, each user can <a href="../../../../list-of-windows/alvao-webapp/settings/language">select their time zone</a>. Also, each <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">service</a> in the service catalog can have its time zone set. 
            </div>
        </li>
    </ul>

</asp:Content>
