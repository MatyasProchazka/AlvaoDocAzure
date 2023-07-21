<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Osoba</h1>

  <p>Na této stránce naleznete podrobnosti o osobě ve městě Alvao.</p>

  <p>Možnosti:</p>
  <ul>
	<li><strong>Spustit chat</strong> - spustí chat v MS Teams s danou osobou.</li>
	<li>Záložky<ul>
	<li><b>Obecné</b><br />
	Tato záložka zobrazuje hodnoty položek osoby.  <br /><br />
	</li>
	<li><b>Organizace</b><br />
	Tato záložka zobrazuje informace o organizaci, ke které osoba patří.<br />
	Pokud osoba není přiřazena k žádné organizaci, tato záložka se nezobrazuje.  <br /><br />
	</li>
	<li><b>Podřízení</b><br />
	Na této záložce můžete zobrazit seznam podřízených osoby.<br />
	Pokud osoba nemá žádné podřízené, tato záložka se nezobrazuje.  <br /><br />
	</li>
	<li><b>Majetek</b><br />
	Na této záložce se zobrazuje majetek, který má osoba svěřen do užívání, a případně další majetek, <a href="../../../../alvao-asset-management/implementation/tree-design">za</a> který je osoba ve firmě <a href="../../../../alvao-asset-management/implementation/tree-design">odpovědná</a> <p>Možnosti: V nabídce jsou uvedeny možnosti, které se týkají majetku, a to např:</p>
  <ul>
  <li><b>Dlaždice</b> - zobrazení majetku v režimu dlaždic. Kliknutím na položku zobrazíte podrobné informace o dané položce.</li>
  <li><b>Tabulka</b> - zobrazení majetku v režimu tabulky. Přizpůsobte si tabulku <a href="../../../../alvao-asset-management/working-with-tables">podle potřeby</a>.</li>
  </ul>
  <div class="tip">
	 <div class="icon"></div>
	  <div class="title">Tip:</div>
	  Pomocí hodnoty ve sloupci <em>Svěřeno</em> rozlišujte, zda je majetek svěřen uživateli do užívání (hodnota <em>Ano)</em>, nebo zda se jedná o jiný majetek, <a href="../../../../alvao-asset-management/implementation/tree-design">za který je uživatel odpovědný</a> (hodnota <em>Ne)</em>.<br />
  </div>
  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Na záložce se zobrazují pouze objekty, ke kterým máte oprávnění a která mají alespoň jednu z vlastností <i>Inventární číslo</i> nebo <i>Evidenční číslo</i>. Pokud nemáte v <a href="../../../../alvao-asset-management/implementation/users/groups">aplikaci ALVAO Asset Management</a> žádnou <a href="../../../../alvao-asset-management/implementation/users/groups">roli</a>, zobrazí se tato záložka v aplikaci pouze v případě, že si prohlížíte svůj majetek nebo majetek svých podřízených.  </div>
  </li>
  <li><b>Dokumenty</b><br />
  Na kartě vidíte archiv všech svých <a href="../../../../alvao-asset-management/documents/transfer-protocols">předávacích protokolů</a>. Nově vystavené protokoly zde můžete podepsat a potvrdit tak převzetí majetku. Tato záložka se zobrazuje pouze na stránce vaší osoby.   Dokumenty jiných uživatelů vidět nemůžete. Stejně tak ostatní uživatelé nemohou vidět vaše dokumenty. Záložka je součástí modulu <a href="../../../../modules/alvao-electronic-handover-forms">ALVAO Electronic Handover Forms</a> <p>Funkce: V aplikaci je možné zadat, zda se jedná o dokument, který je v souladu se zákonem o DPH:</p>
  <ul>
  <li><b>Tabulka dokumentů</b> - krokování po nepodepsaných dokumentech, tj. dokumentech, které mají ve sloupci <em>Podepsáno</em> zobrazen příkaz <em>Podepsáno</em>. Ve sloupci <em>Dokument</em> klikněte na odkaz, přečtěte si dokument a poté ve sloupci <em>Podepsáno</em> příkazem <strong>Podepsat</strong> potvrďte svůj souhlas s jeho obsahem.</li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

</asp:Content>
