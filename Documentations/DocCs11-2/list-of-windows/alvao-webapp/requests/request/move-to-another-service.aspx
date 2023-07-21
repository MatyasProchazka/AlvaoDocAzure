<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Přesun k jiné službě</h1>
<p>Pomocí tohoto formuláře můžete <a href="../../../../alvao-service-desk/requests/move-to-another-service">přesunout</a> vybraný požadavek nebo i několik požadavků najednou do jiné služby.</p>
<p>Možnosti:</p>

	<ul>
 <li><strong>Vyberte službu, do které chcete požadavek přesunout</strong>- zadejte alespoň část názvu služby a poté vyberte službu z rozbalovací nabídky. <ul><li><strong>...</strong> -
 nebo vyhledejte službu a vyberte ji ve stromu služeb.</li></ul></li>
 <li><strong>Přiřadit k řešiteli</strong><ul>
 <li><strong>Pokud možno neměnit řešitele (název řešitele</strong> ) - tuto možnost vyberte, pokud chcete požadavek ponechat jeho současnému řešiteli nebo skupině řešitelů. Pokud aktuální řešitel není řešitelem nebo speciálním řešitelem pro cílovou službu, bude požadavek automaticky vrácen hlavnímu řešiteli.</li>
 <li><strong>Přiřadit</strong> - zvolte, chcete-li požadavek přiřadit jinému řešiteli nebo skupině řešitelů <ul>
 <li><strong>Skupina řešitelů</strong> - zadejte alespoň část názvu skupiny řešitelů a poté vyberte skupinu řešitelů z rozbalovací nabídky. Pole se zobrazí pouze v případě, že služba obsahuje alespoň jednu skupinu řešitelů.</li>
 <li><strong>Požadavek zařazen do fronty bez řešitele</strong> - tuto možnost vyberte, pokud chcete požadavek vrátit <a href="../../../alvao-service-desk/implementation/services/service-roles">hlavním řešitelům</a> služby (pokud je požadavek přiřazen skupině řešitelů <em>Hlavní</em> ) nebo všem řešitelům jiné skupiny řešitelů (pokud je požadavek přiřazen jiné skupině řešitelů než <em>Hlavní</em>).</li>
 <li><strong>Přiřadit řešiteli</strong> - tuto možnost vyberte, pokud chcete požadavek přiřadit konkrétnímu řešiteli. Pak zadejte alespoň část názvu řešitele a vyberte tohoto řešitele z rozevírací nabídky. </li>
 </ul>
 </li>
 <li><strong>Komentář</strong> - v případě potřeby napište zprávu pro nového řešitele požadavku nebo pro hlavní řešitele nové služby. Váš komentář jim bude zaslán v e-mailovém oznámení.</li>
  </ul>
 </li>
 <li><strong>Zpráva o nákladech</strong> - pokud je to relevantní, <a href="../../../../alvao-service-desk/requests/work-time">nahlaste čas práce</a> strávený řešením požadavku.</li>
 </ul>

	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
  Pokud má cílová služba stejný proces jako původní služba, stav požadavku se po přesunu nemění a proces řešení požadavku pokračuje. Pokud cílová služba používá jiný proces, požadavek se přesune do původního stavu procesu řešení a případné nevyřízené schválení se zruší. Při přechodu do počátečního stavu může být automaticky spuštěno nové schválení.  Povinná pole pro počáteční stav v cílové službě jsou při přesunu požadavku ignorována. Hlavní řešitel cílové služby MUSÍ po přesunu požadavek klasifikovat a přidat povinné položky<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 Požadavek můžete přesunout do jiné služby, pokud jste aktuálním řešitelem nebo členem řešitelského týmu této služby.<br />
 Pokud nejste hlavním řešitelem nebo řešitelem v cílové službě, je nutné mít oprávnění Reportér požadavku.<br />
 Chcete-li změnit řešitele požadavku, musíte být také členem řešitelského týmu cílové služby.<br />
 Požadavek můžete přesunout pouze do služeb, ve kterých má žadatel požadavku nějaké SLA.</div>
	</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="HeadContentPlaceHolder">
  </asp:Content>

