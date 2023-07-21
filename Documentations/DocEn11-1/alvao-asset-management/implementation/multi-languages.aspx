<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Multilingual environment</h1>
    <p>
        In a multilingual environment, we recommend selecting <strong>English</strong> as the <a href="supported-languages">language of the Alvao system</a>,
 which usually serves as a common communication language across all teams. Then define all configuration items, such as object kind names, in English. You can further translate some items into other languages. The following values can be translated.
    </p>
    <ul>
        <li>Object kind</li>
        <li>Property name</li>
    </ul>

    <h2>Translation</h2>
    <ol>
        <li>In the <strong>ALVAO WebApp</strong>, select the <strong>Administration - Settings - Languages</strong>.</li>
        <li>On the Languages page, select <strong>Download translation workbook</strong> and enter the name of the file to which the translation documents should be saved. The saved file is in XML format.</li>
        <li>Open the file in Microsoft Excel.</li>
        <li>Each row of the table corresponds to one item to be translated. The <strong>value</strong> column contains the original text in English (or in the language of the Alvao system). Add its translations in the columns for the selected preferred languages.
                <div class="tip">
                    <div class="icon"></div>
                    <div class="title">Tip:</div>
                    The fields where translations need to be added are underlined. The required action is also described in the columns <strong>To Do</strong> for each preferred language. The columns may contain the following values:
                </div>
            <ul>
                <li>translate - the text must be translated initially.</li>
                <li>update translation - the existing translation needs to be updated because the original text in the <em>value</em> column has been changed since the last translation.</li>
                <li>- (dash) - the translation already exists and is up to date.</li>
            </ul>
        </li>
        <li>Once the translation is complete in Microsoft Excel, save the file again in XML format.</li>
        <li>In the <strong>ALVAO WebApp</strong> again select the <strong>Administration - Settings - Languages</strong> and use the <strong>Upload Translations</strong> command
  to load the file.</li>
    </ol>
    <div class="tip">
        <div class="icon"></div>
        <div class="title">Tip:</div>
        If different translators will be translating each language, send each translator a table with only the preferred languages they are translating into. Remove the other preferred languages from the table before sending it to the translator. When you import the table into Alvao, only the translations into the languages that are included in the file will be loaded. Do not remove the first 4 columns from the file that identify the text to be translated.
    </div>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        The type of item to be translated (e.g. service name, SLA name, etc.) can be determined by the values in the <em>table</em> and <em>attribute</em> columns,
  which contain the name of the <a href="customization/database">database table and the column</a> in which the text is stored.
    </div>
    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        View settings in tables usually contain filters that depend on the user's preferred language. By adding translations, users may find that the filters no longer work and have to set them up again in their preferred language.
    </div>
</asp:Content>
