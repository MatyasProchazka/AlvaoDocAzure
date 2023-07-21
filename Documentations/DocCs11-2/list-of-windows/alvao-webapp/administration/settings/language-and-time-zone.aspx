<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Jazyky a časové pásmo</h1>
    <p>Na této stránce můžete určit, z jakých jazyků si uživatelé mohou vybrat <a href="../../../../list-of-windows/alvao-webapp/settings/language">preferovaný jazyk</a> a v jakém časovém pásmu chtějí ve výchozím nastavení zobrazovat časové údaje. Ve <a href="../../../../alvao-service-desk/implementation/multi-languages">vícejazyčném prostředí</a> zde můžete některé položky nastavení přeložit do jiných jazyků.</p>

    <p>Volby: V této položce je možné nastavit časové pásmo:</p>
    <ul>
        <li><strong>Příkazový panel</strong>    <ul>
                <li><strong>Stáhnout překladový sešit</strong> - při použití ve <a href="../../../../alvao-service-desk/implementation/multi-languages">vícejazyčném prostředí</a> stáhněte soubor MS Excel s frázemi pro překlad.</li>
                <li><strong>Nahrát překlady</strong> - nahrajte přeložený soubor do systému Alvao.</li>
            </ul>
        </li>
        <li><strong>Jazyk systému Alvao</strong> - základní <a href="../../../../alvao-asset-management/implementation/supported-languages">jazyk systému Alvao</a>. Tento jazyk musí být zvolen při počáteční instalaci systému Alvao a nelze jej později změnit.</li>
        <li><strong>Další jazyky v nabídce pro výběr preferovaného jazyka</strong> - seznam dalších jazyků, které se uživatelům zobrazují v nabídce pro výběr <a href="../../../../list-of-windows/alvao-webapp/settings/language">preferovaného jazyka</a> a do kterých můžete chtít přeložit některé <a href="../../../../alvao-service-desk/implementation/multi-languages">položky nastavení</a><ul>
      <li><strong>Přidat jazyk</strong> - <a href="add-language">přidání</a> dalšího jazyka do seznamu.</li>
  </ul>
        </li>
        <li>
           <strong>Výchozí časové pásmo</strong> - výchozí časové pásmo, ve kterém se uživatelům v aplikaci zobrazují časové údaje.<ul>
                <li><strong>Upravit</strong> - změna časového pásma.</li>
            </ul>
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Alternativně <a href="../../../../list-of-windows/alvao-webapp/settings/language">si</a> každý uživatel může <a href="../../../../list-of-windows/alvao-webapp/settings/language">zvolit své časové pásmo</a>. Také každá <a href="../../../../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">služba</a> v katalogu služeb může mít nastaveno své časové pásmo. 
            </div>
        </li>
    </ul>

</asp:Content>
