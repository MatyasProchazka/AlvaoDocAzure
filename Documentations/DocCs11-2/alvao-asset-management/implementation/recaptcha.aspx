<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Povolení reCAPTCHA</h1>

<p>Pro lepší ochranu proti útokům na hádání hesel lze ve webové aplikaci ALVAO povolit zobrazení reCAPTCHA. <br />
	Podpora reCAPTCHA platí pouze pro <strong>verzi 2</strong> (varianta Checkbox). Chcete-li ji povolit, postupujte následujícím způsobem. </p>
<ol>
	<li>Přejděte na stránku <a href="https://www.google.com/recaptcha/intro/index.html">reCAPTCHA</a>, vytvořte si účet a získejte veřejný a soukromý klíč. Postupujte podle pokynů na stránce.</li>
	<li>Proveďte následující příkazy SQL v databázi a přidejte získaný veřejný klíč (Site key) a soukromý klíč (Secret key)<span class="console" translate="no"> <br />
				INSERT INTO tProperty (tProperty,tPropertyValue) VALUES(N'WebApp.CAPTCHAPublicKey', N'&lt;public key&gt;'); <br />
				INSERT INTO tProperty (tProperty,tPropertyValue) VALUES(N'WebApp.CAPTCHAPrivateKey';
        </span>
	
	</li>

<li>V případě velkého počtu neúspěšných přihlášení do webové aplikace bude provedena kontrola, zda se jedná o člověka, a ne o automatizovaného robota.</li>
</ol>

<p>Chcete-li toto chování zakázat, proveďte následující:<br/><span class="console" translate="no">
			DELETE FROM tProperty WHERE sProperty = N'WebApp.CAPTCHAPublicKey'; <br />
			DELETE FROM tProperty WHERE
    </span>
</p></asp:Content>

