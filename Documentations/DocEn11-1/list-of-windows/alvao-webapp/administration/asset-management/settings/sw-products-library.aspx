<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>SW products library</h1>


    <p>On this page, specify settings for automatic updates of the software products library.</p>


    <p>Options:</p>
    <ul>
        <li><strong>Auto update</strong>
            <ul>
                <li><strong>Download from Internet</strong> - turn on if Alvao should automatically download the latest software product library from the Internet.<ul>
                    <li><strong>Library availability verification period (days)</strong> - specify in days how often to check if a new library of sw products is available on the manufacturer's website.</li>
                </ul>
                </li>
                <li><strong>Load from backup</strong> - this library update option is recommended to use if the Alvao Service application does not have access to the Internet. Then, periodically once a week, download the <a href="https://www.alvao.com/downloads/swlib2.swl">https://www.alvao.com/downloads/swlib2.swl</a> file from the web and save it to a folder on the server disk.<p>Specify the path to the folder to match the disk and folder structure from the view of the configured server.</p>
                </li>
                <li><strong>Do not update</strong> - Alvao will not automatically update the library.</li>
            </ul>
        </li>
        <li><strong>Evaluate existing detections based on new library automatically</strong> - Enable if you want to automatically evaluate existing software detections against the new library of software products.</li>
        <li><strong>Send requests for changes in software products library over Internet</strong> - turn on if you want Alvao to send change requests to the software product library.<br />
            Change requests include <em>requests to add a new product</em>
            or <em>requests with unrecognized software</em>.</li>
        <li id="l"><strong>Search for unrecognized software automatically</strong>
            - Turn on if Alvao should search the entire database for unrecognized software once a week.<br />
            Unrecognized records are saved and if you send requests for changes to the sw product library (option above), they will be sent to ALVAO technical support specialists who will add the unrecognized software to the standard library.
                
                <div class="note">
                    <div class="icon"></div>
                    <div class="title">Note:</div>
                    The automatic search for unrecognized software will only be performed if the library in the database is less than one month old.
                </div>
        </li>
        <li><strong>Disclaimer for sending information on unrecognized and new software</strong>
            <ul>
                <li><strong>If you need any additional information, you can contact me by e-mail</strong> - select if technical support staff can contact you if needed and fill in the email contact person.</li>
                <li><strong>I do not wish to be contacted. I want to send data anonymously</strong> - select if you want to send data anonymously. Our specialists will not be able to contact you, so if some unrecognized products cannot be identified by the records you have sent, the product will not be included in the standard library.</li>
            </ul>
        </li>
    </ul>

</asp:Content>



