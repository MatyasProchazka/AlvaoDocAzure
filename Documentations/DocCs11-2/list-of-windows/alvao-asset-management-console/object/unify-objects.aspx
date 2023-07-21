<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Sjednocení objektů</h1>
  <p>
  V tomto okně můžete sjednotit sady vlastností a ikony všech objektů určitého typu ve stromu podle vybrané <a href="../../../alvao-asset-management/implementation/object-templates">šablony objektu</a>. Od verze Alvao 10.4 se změny v šabloně objektu automaticky promítnou do všech existujících objektů tohoto typu ve stromu. V dřívějších verzích se změny šablony automaticky nepromítaly, a proto mohly objekty stejného typu historicky existovat ve stromu s různými sadami vlastností nebo ikon. Tento příkaz můžete použít k explicitnímu sjednocení existujících objektů.  </p>
 <div class="caution">
 <div class="icon"></div>
  <div class="title">Upozornění:</div>
  Operace sjednocení objektů je nevratná.  </div>

	<ul>
  <li><strong>Přidat chybějící</strong> - zapněte, pokud chcete přidat všechny vlastnosti ze šablony, které v objektech chybí.<br />
  Pokud objekt již nějakou vlastnost obsahuje, její hodnota se nezmění.</li>
  <li><strong>Odebrat přebytečné</strong> - zapněte, pokud chcete z objektů odebrat všechny vlastnosti, které v šabloně nejsou.</li>
  <li><strong>Sjednotit stavy vlastností</strong> - zapněte, pokud chcete sjednotit <a href="../tab-view/properties/property-edit">stavy vlastností objektů</a> podle vybrané šablony.</li>
  <li><strong>Sjednotit příznaky objektů</strong> - zapněte, pokud chcete sjednotit <a href="../edit/object/general">příznaky objektů</a>podle vybrané šablony.</li>
  <li><strong>Sjednotit ikony objektů</strong> - zapněte, pokud chcete sjednotit také ikony objektů podle vybrané šablony.</li>
  </ul>

 

  <div class="note">
 <div class="icon"></div>
  <div class="title">Poznámka:</div>
  Tuto operaci mohou provádět pouze uživatelé s rolí <em>Asset Management administors</em> </div>


</asp:Content>
