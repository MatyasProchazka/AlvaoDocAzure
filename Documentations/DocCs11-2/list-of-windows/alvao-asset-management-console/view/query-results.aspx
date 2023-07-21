<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Výsledky dotazů</h1>
	<ul>
 <li><strong>Strom</strong> - zobrazí objekty nalezené dotazem.</li>
 <li><strong>Nalezené položky</strong> - zobrazí počet nalezených položek.</li>
 <li><strong>Vybrat ve stromu</strong> - výběr nalezené položky ve stromu. V místní nabídce použijte příkaz <strong>Vybrat ve stromu</strong> nebo dvakrát klikněte na konkrétní položku. <br />Ve stromu objektů se vybere objekt, k němuž se nalezená položka vztahuje, a na aktuálně vybrané kartě se aktualizují zobrazené informace o objektu.</li>
 <li><strong>Vybrat ve stromu</strong> - Vyberte nalezenou položku ve stromu. V místní nabídce použijte příkaz <strong>Označit ve stromu</strong>. <br />Ve stromu objektů se označí objekt, k němuž se nalezená položka vztahuje.</li>
 <li><strong>Tisková sestava</strong> - otevře náhled s tiskovou sestavou výsledku hledání.</li>
 <li><strong>MS Excel</strong> - umožní exportovat výsledek hledání do aplikace MS Excel.</li>
 <li><strong>Exportovat do souboru</strong> - uloží výsledek hledání do souboru CSV nebo XML.</li>
 <li><strong>Nový dotaz</strong> - použijte, pokud chcete zadat nové vyhledávací výrazy nebo nový dotaz.</li>
 <li><strong>Vložit do inventáře</strong> - vloží objekty nalezené vyhledáváním do aktivního inventáře majetku.</li>
	</ul>
</asp:Content>
