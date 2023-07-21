<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Enabling reCAPTCHA</h1>

<p>For better protection against password guessing attacks, the reCAPTCHA display can be enabled in the ALVAO WebApp. <br />
	The reCAPTCHA support is only valid for <strong>version 2</strong> (Checkbox variant). To enable it, proceed as follows. </p>
<ol>
	<li>Go to <a href="https://www.google.com/recaptcha/intro/index.html">
	reCAPTCHA</a>, create an account and get your public and private keys. Follow the instructions on the page.</li>
	<li>Execute the following SQL statements on the database, adding the obtained public key (Site key) and private key (Secret key):
		<span class="console" translate="no"> <br />
				INSERT INTO tProperty (tProperty,tPropertyValue) VALUES(N'WebApp.CAPTCHAPublicKey', N'&lt;public key&gt;'); <br />
				INSERT INTO tProperty (tProperty,tPropertyValue) VALUES(N'WebApp.CAPTCHAPrivateKey';
        </span>
	
	</li>

<li>In case of a large number of unsuccessful logins to the WebApp, the login will be checked to make sure they are human and not automated robots.</li>
</ol>

<p>To disable this behavior, do the following:<br/>
	<span class="console" translate="no">
			DELETE FROM tProperty WHERE sProperty = N'WebApp.CAPTCHAPublicKey'; <br />
			DELETE FROM tProperty WHERE
    </span>
</p></asp:Content>

