<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nasazení</h1>

    <h2>Technické požadavky</h2>
    <ul>
        <li>Správa majetku ALVAO</li>
    </ul>

    <h2>Změna textu na stránce Moje dokumenty</h2>
    Pomocí příkazu <a href="../../list-of-windows/alvao-webapp/search/persons/person">Moje dokumenty</a> z uživatelské nabídky si každý uživatel může zobrazit seznam svých předávacích protokolů. Nad seznamem je uveden instrukční text, který můžete volitelně změnit pomocí následujícího skriptu SQL. <span class="style1">UPDATE tProperty SET sPropertyValue='text odkazu procedury' WHERE sProperty='AM.MyDocumentsWorkflowText'; <br />UPDATE tLocalization SET NeedsUpdate=1 WHERE sTable='tProperty' AND iRecordId=(SELECT id FROM tProperty WHERE sProperty='AM.MyDocumentsWorkflowText') </span>   <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip:</div>
        Formátujte text pomocí běžných značek html a případně jej přeložte do více <a href="#multilanguage-environment">jazyků</a>   </div>

    <h2 id="multilanguage-environment">Vícejazyčné prostředí</h2>

    Elektronické předávací formuláře podporují <a href="../../alvao-service-desk/implementation/multi-languages">vícejazyčné prostředí</a>. 
    Do více jazyků můžete přeložit následující položky    <ul>
        <li>Zprávy<ul>
        <li>Předmět</li>
        <li>Text zprávy</li>
    </ul>
        </li>
        <li>Pracovní postup na stránce <i>Moje dokumenty </i></li>
    </ul>

</asp:Content>
