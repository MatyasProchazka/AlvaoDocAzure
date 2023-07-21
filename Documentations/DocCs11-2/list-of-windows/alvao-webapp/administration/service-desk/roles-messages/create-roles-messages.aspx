<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Nové pravidlo</h1>
<p>Tento formulář slouží k vytvoření nového pravidla pro příchozí zprávy.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Název pravidla</strong> - zadejte název pravidla.</li>
 <li><strong>Podmínky</strong> - zadejte jednu nebo více z následujících podmínek. Pokud zadáte více než jednu podmínku, pravidlo se provede pouze v případě, že jsou splněny všechny zadané podmínky. <ul>
 <li><strong>Předmět zprávy obsahuje</strong> - zadejte text, který musí být obsažen v předmětu zprávy. Pokud zadáte např: <em>Instalace aplikace</em>, bude podmínka splněna pro zprávy s předmětem: <em>Instalace aplikací Office</em>; <em>Vzdálená instalace aplikací v počítači</em>; <em>Instalace aplikací</em>. <em>Základní instalace aplikace</em> podmínku nesplní.</li>
 <li><strong>Tělo zprávy obsahuje</strong> - zadejte text, který musí být obsažen v těle zprávy.</li>
 <li><strong>Odesílatel obsahuje</strong> - zadejte text, který musí být obsažen v poli <em>Od</em> zprávy.</li>
 <li><strong>Recipient contains</strong> - zadejte text, který musí být obsažen v poli <em>To</em> zprávy.</li>

  </ul>
 </li>
  <li><strong>Odeslání zprávy</strong><ul>
  <li><strong>Odeslat zprávu</strong> - pokud povolíte tuto možnost, pravidlo odešle zprávu, která je definována v následujících polích. </li>
  <li><strong>Komu</strong> - zadejte příjemce zprávy. Do pole můžete zadat více e-mailových adres, které mohou být odděleny středníky nebo čárkami.</li>
  <li><strong>Předmět</strong> - zadejte předmět zprávy.</li>
  <li><strong>Text</strong> - zadejte text zprávy.</li>
  </ul>
  </li>
  <li><strong>Další akce</strong> - vyberte, které akce se mají provést s požadavkem vytvořeným na základě příchozí zprávy.  <ul>
  <li><strong>Vytvořit ve službě</strong> - požadavek se vytvoří přímo ve vybrané službě.</li>
   <li><strong>Vyřešit požadavek</strong> - požadavek je automaticky ihned vyřešen.</li>
   <li><strong>Odstranit požadavek</strong> - požadavek je automaticky okamžitě odstraněn.</li>
  </ul>

  </li>
	</ul>


</asp:Content>
