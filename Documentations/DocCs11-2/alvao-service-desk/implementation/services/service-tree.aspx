<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Strom služeb</h1>
    <p>
        Strom služeb můžete spravovat v <strong>aplikaci ALVAO WebApp</strong>pomocí příkazu <strong>Administration - Service Desk - Services</strong>, který v hlavním okně zobrazí <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail">strom služeb</a>   </p>

    <h2>Přijímání požadavků e-mailem</h2>

    <p>
        Pokud chcete automaticky získávat obsah určité schránky do určité služby Service Desk, musíte pro tuto službu nastavit spojení s touto schránkou. Spojení se nastavuje u vybrané služby v části <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/loading-messages">Načítání zpráv</a>   </p>

    <p>Po přijetí nového požadavku systém odešle žadateli automatickou odpověď, která zní přibližně takto:</p>
    <p>
       <em>Dobrý den,<br />
            <br />Přijali jsme Váš požadavek pod číslem &lt;značka požadavku&gt;.<br />Budeme Vás kontaktovat nejpozději do &lt;datum odpovědi&gt;.<br />Požadavek bude vyřešen nejpozději do &lt;termín&gt;.<br />...<br />Pro další informace prosím odpovězte na tento e-mail.<br />Děkujeme, že využíváte naše služby.<br />&lt;název služby&gt; </em>   </p>

    <p>Číslo požadavku je uvedeno také v předmětu automatické odpovědi. Pokud žadatel na tuto zprávu odpoví další zprávou, nebude tato nová zpráva považována za nový požadavek, ale spíše za doplňující informace a bude vložena do protokolu stávajícího požadavku.</p>
    <p>
        Systém prohledá předmět zprávy, aby zjistil, zda někde neexistuje identifikace existujícího požadavku. Ve výchozím nastavení má identifikace požadavku formát T&lt;číslo&gt;ALVAO. Způsob označování můžete změnit v nastavení Service Desk na <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">kartě Obecné.</a> Toto nastavení je nutné provést před spuštěním služby Service Desk, protože změna nastavení neovlivní identifikaci existujících požadavků    </p>

</asp:Content>
