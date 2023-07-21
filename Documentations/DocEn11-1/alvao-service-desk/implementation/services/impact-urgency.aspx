<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">





    <h1>Impact and urgency</h1>


    <p>If they are in or on the <a href="processes">process</a> of the <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">new ticket form</a>, the <em>Date</em> or <em>Emergency</em> items are enabled, the <em>Priority</em> of the request is automatically set according to the values of these items, see the priority table:</p>

    <table>
        <thead>
            <tr>
                <th>Fall</th>
                <th rowspan="2">High</th>
                <th rowspan="2">Medium</th>
                <th rowspan="2">Low</th>
            </tr>
            <tr>
                <th>Emergency</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>High</td>
                <td>critical</td>
                <td>high</td>
                <td>medium</td>
            </tr>
            <tr>
                <td>Medium</td>
                <td>high</td>
                <td>medium</td>
                <td>low</td>
            </tr>
            <tr>
                <td>Low</td>
                <td>medium</td>
                <td>low</td>
                <td>planning</td>
            </tr>
        </tbody>
    </table>

    <p>The priority can still be <a href="../../../list-of-windows/alvao-webapp/requests/request/edit">changed</a> manually to any value.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        Priority item values:
  <table>
      <thead>
          <tr>
              <th>Icon</th>
              <th>Czech</th>
              <th>English</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td><span class="ms-Icon ms-Icon--Error fabric-icon-red icon-size-medium icon-table-row-align-style"></span></td>
              <td>critical</td>
              <td>critical</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Up fabric-icon-red icon-size-medium icon-table-row-align-style"></span></td>
              <td>high</td>
              <td>high</td>
          </tr>
          <tr>
              <td></td>
              <td>medium</td>
              <td>medium</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Down fabric-icon-blue icon-size-medium icon-table-row-align-style"></span></td>
              <td>low</td>
              <td>low</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Clock icon-size-medium icon-table-row-align-style"></span></td>
              <td>scheduling</td>
              <td>planning</td>
          </tr>
      </tbody>
  </table>
    </div>


    <p>In addition, if SLAs with a quality index of 1 to 5 are available in the service, changing Impact and Urgency will also change the SLA to an SLA with a quality index according to the following table:</p>

    <table>
        <thead>
            <tr>
                <th>Fall</th>
                <th rowspan="2">High</th>
                <th rowspan="2">Medium</th>
                <th rowspan="2">Low</th>
            </tr>
            <tr>
                <th>Emergency</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>High</td>
                <td>5</td>
                <td>4</td>
                <td>3</td>
            </tr>
            <tr>
                <td>Medium</td>
                <td>4</td>
                <td>3</td>
                <td>2</td>
            </tr>
            <tr>
                <td>Low</td>
                <td>3</td>
                <td>2</td>
                <td>1</td>
            </tr>
        </tbody>
    </table>

    <p>Even if the SLA is set by the Impact and Urgency values, it can be changed to a different value.</p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        If there is no SLA with a calculated quality index for the selected applicant, the next higher one will be selected. If neither exists, the SLA with the highest quality index for the applicant will be selected.<br />
        If there are multiple SLAs with the same quality index, it is not defined which one will be selected.
    </div>

</asp:Content>