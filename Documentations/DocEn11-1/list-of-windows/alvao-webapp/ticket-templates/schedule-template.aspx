<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Schedule</h1>
 
  
<p>Use this form to schedule the automatic periodic creation of new requests according to a selected <a href="../../../alvao-service-desk/requests/ticket-templates">request template</a>.</p>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  In the <a href="../ticket-templates">template table</a>, view the <em>Scheduling</em> column, which contains the scheduled creation date of the next request. After you change the scheduling, the value in the column will appear within 24 hours.</div>
	

  <p>Automatically created requests are linked by a <em>precedes before - follows after</em> type link. Each time you change the scheduling, the chain of links is broken.</p>


	<div class="tip">
	<div class="icon"></div>
	<div class="title">Tip:</div>
	  If the requests are not generated as you would expect, it may be due to some change in permission settings, etc. You can find errors detected during request creation in the <i>Alvao Service</i> event log.</div>
	

  <p>
  Options:</p>
  <ul>
  <li><strong>Automatically create requests based on this template</strong> - enable if you want to automatically create requests according to the selected request template. Disabling this option will temporarily disable the set request creation.</li>
  <li><strong>Requester</strong> - enter at least part of the name of the requester for whom the requests are to be automatically created, and then select the requester from the menu.</li>
  <li><strong>Repeat</strong> - select the frequency of request creation and specify additional time parameters.  
 <ul>
TODO T129697ALVAO
	<li><strong>Daily</strong></li>
		<ul>
			<li><strong>Repetion period (days)</strong> - enter the duration of the repeating in days.</strong></li>
			<li><strong>On weekdays</strong> - choose if you want to repeat the request every weekday.</strong></li>
			<li><strong>Create a new request after resolution of the previous one in the sequence in (days)</strong> - enter the number of days for automatic creation of new requests.</li>
		</ul>
	 <li><strong>Weekly</strong></li>
		<ul>
			<li><strong>Repetion period (weeks)</strong></li>
				<ul><li><strong>Repetition period</strong> - enter duration of the repeating in weeks.</li>
				<li><strong>In these days</strong> - check the days you want the repetition to occur.</li></ul>
			<li><strong>Create a new request after resolution of the previous one in the sequence in (weeks)</strong> - enter the number of weeks for automatic creation of new requests.</li>
		</ul>
	 <li><strong>Monthly</strong></li>
			<ul>
			<li><strong>Day of month</strong> - choose the day of repetiton by its date</li>
			<ul>
				<li><strong>Day</strong> - enter the day of month when will the repetition occur.</li>
				<li><strong>Repetion period (months)</strong> - enter duration of the repetition in months</li> </ul>
			<li><strong>Weekday</strong> - choose the day by its position in month.</li>
			<ul>
				<li><strong>Weekday</strong> - choose the week of month for the repetition</li>
				<li><strong>Day of the week</strong> - choose the day</li>
				<li><strong>Repetion period (months)</strong> - enter duration of the repetition in months</li> </ul>
			<li><strong>Create a new request after resolution of the previous one in the sequence in (months)</strong> - enter the number of months for automatic creation of new requests.</li>
		</ul>
	 <li><strong>Yearly</strong></li>
		<ul>
				<li><strong>Day of month</strong> - choose if you want to specify a single day for the repetition to occur by its date.</li>
					<ul>
					<li><strong>Day</strong> - enter the day of the repetition</li>
					<li><strong>Month</strong> - select the month</li> </ul>
				<li><strong>Weekday</strong> - you can specify the day of the repetition by its position in year.</li>
					<ul>
					<li><strong>Week of the month</strong> - choose the week</li>
					<li><strong>Day</strong> - select the day of the week</li>
					<li><strong>Month</strong> - select the month</li>  </ul>
	</ul>
		<li><strong>Create a new request after resolution of the previous one in the sequence in (years)</strong> - enter the number of years for automatic creation of new requests.</li>
	</ul>

  </li>
  <li><strong>Extent of repetition</strong><ul>
  <li><strong>Start</strong> - enter the day on which the first request is due.</li>
  <li><strong>End</strong> - select how long requests are to be created:<ul>	
  <li><strong>Indefinitely</strong></li>
  <li><strong>End after (occurrences)</strong> - enter the total number of requests you want to create.</li>
  <li><strong>End</strong> - enter the day on which to create the last request.</li>
  </ul>
  </li>
  </ul>
  </li>
 </ul>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

