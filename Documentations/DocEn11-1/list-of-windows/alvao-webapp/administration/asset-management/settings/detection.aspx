<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Detection </h1>
    <p>
        Setting up detections in <a href="../../../../../alvao-asset-management">ALVAO Asset Management</a>.
    </p>
    <p>Options:</p>
    <ul>
        <li><strong>Keep only one valid detection per machine</strong> - enable if you do not want to create new software and hardware computer discovery requests.<br />
            The most recent (youngest) existing records are used, similar to calling <a href="../../../../../alvao-asset-management/implementation/detection">Detect again</a>.
  <div class="tip">
      <div class="icon"></div>
      <div class="title">Tip:</div>
      Enabling this option will ensure that detections are not accumulated for each computer.<br />
      This will ensure that you have just one current detection for hardware and software.
  </div>
        </li>
        <li><strong>Agents verification code</strong> - Enter the code used to authenticate standalone Agents when communicating with the Web Service. You must enter the same code when installing Agents.</li>
        <li><strong>In the records, automatically create new computers with an installed autonomous Agent</strong> - turn on if you want the Autonomous Agent to automatically create new computers that are not in the inventory.</li>
        <li><strong>Scheduling</strong> - After enabling automatic detection, you can set the daily interval of automatic loading and choose exception days when it won't run. </li>
        <li><strong>Loading files</strong> <strong>- Automatic loading of detection files (*.CXM)</strong> - after enabling, additional options will appear.
            <ul>
                <li><strong>Load CXM files automatically from</strong> - Select the storage from which the file will be loaded:
                <ul>
                    <li><strong>Folder</strong> - Choose this option for loading data from a disk folder.
				    <ul>
                        <li><strong>Path</strong> - Enter the path to the folder.</li>
                        <li><strong>If the loading process suceeded/failed</strong> - You can choose what happens with the data file after the process is finished in each of cases. (The file can be deleted or moved to the specified folder.)

				         </li>
                    </ul>
                    </li>
                    <li><strong>Microsoft Azure storage</strong>
                        <ul>
                            <li><strong>Connection string</strong> - enter a valid MS Azure storage connection string following the example: DefaultEndpointsProtocol=https;AccountName=alvao;AccountKey=***;EndpointSuffix=core.windows.net</li>
                        </ul>
                    </li>
                </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>
