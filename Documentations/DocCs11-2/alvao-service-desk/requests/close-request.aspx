<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Uzavřený požadavek</h1>
    <p>
        Po vyřešení požadavku označí řešitel požadavek jako uzavřený změnou stavu na <em>Uzavřený</em>. Tento krok není nutný, pokud je stav <em>Vyřešeno</em>. nastaven na automatické uzavření požadavku, kdy vyřešení požadavku rovněž změní stav na <em>Uzavřeno</em>.<br />
    </p>
    <p>požadavek nelze uzavřít v následujících případech:</p>
    <ul>

        <li>Požadavek nemá vyplněna povinná pole pro <em>em&gt;stav</em>Uzavřeno</em>.</li>
        <li>Průběh řešení neumožňuje přechod z aktuálního stavu požadavku do stavu <em>Uzavřeno</em>. Další informace o nastavení pracovního postupu naleznete v části <a href="../implementation/services/processes">Procesy</a>.</li>
        <li>Požadavek má svůj vlastní pracovní postup.</li>
    </ul>

</asp:Content>
