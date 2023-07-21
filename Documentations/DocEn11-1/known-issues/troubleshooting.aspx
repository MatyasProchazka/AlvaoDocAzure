<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
    <h1>Basic Troubleshooting</h1>
    <p>This page provides basic tools and procedures for diagnosing problems with ALVAO products. The output of the relevant procedures can be sent along with the problem report to ALVAO technical support. Sending the diagnostic outputs will greatly speed up and facilitate troubleshooting.</p>

    <h2>Web communication recording</h2>
    <p>A progress is made if an operation with the ALVAO WebApp is slow. Turn on communication recording just before invoking a slow function and stop it when the action is complete.</p>
    <p>Execute the progress in Internet Explorer. The procedure is shown for Internet Explorer 10, but the procedure is almost the same in other versions.</p>

    <ol type="1">
        <li>Prepare the page in the WebApp so that the next click results in a slow response.</li>
        <li>Use the Tools - Developer Tools menu (F12).</li>
        <li>Go to the network tab.</li>
        <li>Press the Start Capture button.</li>
        <li>Take an action on the web page that takes a long time.</li>
        <li>Press the Stop Capture button.</li>
        <li>Use the Export captured traffic function.</li>
    </ol>

    <p>
        The exported communication log file usually has the extension <code>.har</code>.
These files can be viewed, for example, in online <a href="http://www.softwareishard.com/har/viewer/" target="_blank">HTTP Archive Viewer</a>
        or <a href="https://toolbox.googleapps.com/apps/har_analyzer/" target="_blank">Google HAR Analyzer</a>.
    </p>

    <div class="caution">
        <div class="icon"></div>
        <div class="title">Caution:</div>
        The exported record file may contain sensitive information. Do not leave it on publicly accessible storage.
    </div>

</asp:Content>
