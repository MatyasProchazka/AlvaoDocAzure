<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Filter</h1>
    <p>Using a filter, you can display only rows in a table that meet a certain criterion. You can find the commands to work with the filter in the local table menu and also in the local header menu.</p>
    <h2>Desktop applications</h2>
    <p>
        In the AM Console desktop application, the filter is controlled in a different way than in the web browser (ALVAO WebApp).
  When the filter is enabled, the filter parameters are displayed in a row below the table header.
    </p>

    <img src="filtering.png" alt="Filter in table" />
    <p>Filter is turned on and off with the <strong>Filter</strong> command in the local menu in the table header.</p>

    <h3 id="filter-by-selection">Filter by Selection</h3>
    <p>
        This command is useful when the table contains too many rows and we are only interested in a few. In that case, you can right-click on a specific cell and select <strong>Filter by Selection</strong> from the menu.
  This will turn on a filter in the table that will show only the rows with the selected value.  If you want to filter by multiple values, first select the rows with those values in the table and then use <em>Filter by Selection</em> in that column.
    </p>
    <p>
        For example, on the <strong>Detection</strong> tab in <a href="../../list-of-windows/alvao-asset-management-console">main window</a>, a long list of different detections can be displayed.  If we are only interested in software detections, i.e. rows that have a value of &quot;software&quot; in the <em>Species</em> column, we just need to find one row in the table with a software detection, right-click on the value in the <em>Species</em> column and select <em>Filter by Selection</em> from the menu.
  This will turn on the filter in the table, which will only pass rows that have a value selected in the <em>Species</em> column.
    </p>

    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        The <em>Filter by Selection</em> command can only be placed in the <em>Table</em> submenu.
    </div>

    <h3>Filter Out of Selection</h3>
    <p>
        This command is used similarly to the <a href="#filter-by-selection">Filter by selection</a>. The difference is that rows that have a value selected in the column are filtered out, and all others are passed through.  Also, you can use this command for multiple selected table rows at once.
    </p>

    <h2>Advanced Filter</h2>

    <p>
        If the filter is enabled, you can manually change its settings in the row below the header. If you enter text in a column, only the rows whose value in that column contains the specified text will be displayed in the table. When comparing values, diacritics are ignored.<br />
        The asterisk represents any number of arbitrary characters, so if you enter, for example, &quot;ar&quot;, the filter will only pass values that contain the substring &quot;ar&quot;. Entering &quot;*ar*&quot; would have the same result, because the asterisk is added automatically at the beginning and end.<br />
        Another option is to enter a boolean expression into the filter, such as:
    </p>
    <p><span class="console">&quot;*ar*&quot; or &quot;*unk*&quot;</span></p>

    Searched parts of the text must be enclosed in quotation marks. The following logical operators may be used in the expression:<br />
    <ul>
        <li>and</li>
        <li>or</li>
        <li>not</li>
    </ul>

    The keywords listed in the following table can only be used in column filters with Yes/No (boolean) values:<br />
    <table>
        <thead>
            <tr>
                <th>Keyword</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="style1">yes / yes</td>
            </tr>
            <tr>
                <td class="style1">no / no</td>
            </tr>
        </tbody>
    </table>

    <p>
        For columns of type text, number and date and time it is possible to use mathematical operators <em>em>
 &quot;&gt;&quot;</em> (greater), <em>&quot;&lt;&quot;</em> (less), &quot;&gt;=&quot; (greater than or equal to), &quot;&lt;=&quot; (less than or equal to), <em>&quot;!,Not,&lt;&gt;,!=&quot;</em> (negation, not, not equal to), <em>&quot;=,==&quot;</em> (equal to). The alphanumeric order of the texts is assumed when comparing them.
    </p>

    <h2 id="datetime-filters">Filter above columns of type &quot;date and time&quot;</h2>
    <p>If the column is of type &quot;date and time&quot;, the following filter write options are supported:</p>
    <ul>
        <li><strong>@now</strong> - displays entries from today's date and current time to the nearest hour.</li>
        <li><strong>@today</strong> - displays entries from today's day only.</li>
        <li><strong>*.M.YYYY</strong> - displays data from month M and year YYYY</li>
        <li><strong>*.*.YYYY</strong> - displays data from year YYYY</li>
        <li><strong>D.M.YYYY</strong> - displays data from a specific day D.M.YYYY</li>
        <li><strong>D.M.YYYY H</strong> - displays data from a specific day D.M.YYYY and hour H</li>
        <li><strong>D.M.YYYY H:M</strong> - displays data from a specific day D.M.YYYY and hour H and minute M</li>
        <li><strong>operators:
                <table>
                    <thead>
                        <tr>
                            <th>Operator</th>
                            <th>Description</th>
                            <th>Example of use</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>&lt;, &gt;, &lt;=, &gt;=</td>
                            <td>smaller, larger, less than or equal to, greater than or equal to</td>
                            <td>&gt;15.4.2013</td>
                        </tr>
                        <tr>
                            <td>=, ==</td>
                            <td>equals</td>
                            <td>=15.4.2013</td>
                        </tr>
                        <tr>
                            <td>!=, &lt;&gt;</td>
                            <td>not equal</td>
                            <td>&lt;&gt;15.4.2013</td>
                        </tr>
                        <tr>
                            <td>Not, !</td>
                            <td>does not (same meaning as does not equal)</td>
                            <td>Not 15.4.2013</td>
                        </tr>
                        <tr>
                            <td>and, or</td>
                            <td>logical product and logical sum</td>
                            <td>=15.4.2013 or =16.4.2014</td>
                        </tr>
                    </tbody>
                </table>
        </strong></li>
    </ul>
    <div class="note">
        <div class="icon"></div>
        <div class="title">Note:</div>
        <br />
        <ul>
            <li>Date formats <strong>D.M.YYYY</strong>, <strong>D.M.YYY</strong> can be written to the filter.
  M/D/YYYY</strong>
  and <strong>YYYY-M-D</strong>, the date separator can be followed by a space, the day and month digits can be written as single or double digits, the year must be written as a 4-digit number.</li>
            <li>If the <strong>AND</strong> or <strong>OR</strong> operator is used,
  some mathematical comparison operator (e.g. =) must also be specified.</li>
            <li>An integer representing the number of <strong>hours</strong> can be added/subtracted to the <strong>@now</strong> variable. The resulting time is calculated regardless of service hours, weekends and holidays. E.g. @now+10 means: in 10 hours.</li>
            <li>An integer can be added/subtracted to the <strong>@today</strong> variable to represent the number of <strong>days</strong>. The resulting date is calculated on a calendar basis, regardless of service hours, weekends and holidays. E.g. @today-1 means: yesterday.</li>
        </ul>
    </div>
    <h3>Examples</h3>
    <ol>
        <li>Today's data:<br />
            <span class="console">@today</span></li>
        <li>Data for the last 30 days:<br />
            <span class="console">&gt;= (@today - 30)</span></li>
        <li>Data from the following day:<br />
            <span class="console">= (@today + 1)</span></li>
        <li>Data over the next 3 days:<br />
            <span class="console">(&gt; @today) AND (&lt;= (@today + 3))</span></li>
        <li>Data from the next 5 hours from now:<br />
            <span class="console">(&gt; @now) AND (&lt;= (@now + 5))</span></li>
        <li>Data as of 4/14/2017:<br />
            <span class="console">14.4.2017</span></li>
        <li>Data as of 3pm on 10/24/2017:<br />
            <span class="console">15.10.24.2017</span></li>
        <li>Data from the month of March 2017:<br />
            <span class="console">* March 3, 2017</span></li>
        <li>Data from 2016:<br />
            <span class="console">*.*.2016</span></li>
        <li>Data from January to May 2018:<br />
            <span class="console">&gt;=1.1.2018 and &lt;1.6.2018</span></li>
        <li>Data from October 5 and 6, 2017:<br />
            <span class="console">=5.10.2017 or =6.10.2017</span></li>

    </ol>

    <h2>Variable @me</h2>
    <p>The @me variable represents the name of the currently logged in user. You can use it to filter out records related to the currently logged in user.</p>
    This variable is available in the ALVAO Service Desk:<ul>
        <li>Requests - in the Applicant and solver columns</li>
        <li>Diary - in the From, To, Created by, Solver, Requester columns</li>
        <li>Request log table (bottom left) - in From, To, Created by columns</li>
    </ul>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">

    <style type="text/css">
        .style1 {
            text-align: center;
        }
    </style>

</asp:Content>

