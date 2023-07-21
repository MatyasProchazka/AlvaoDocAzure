<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Seznam hodnot</h1>

    <p>Tento formulář lze použít k vytvoření seznamu hodnot vlastností. Tato funkce je k dispozici pouze pro <strong>datový typ Text</strong>.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Použít seznam jiné vlastnosti</strong> - zapněte, pokud chcete, aby uživatel mohl vybrat hodnoty této vlastnosti ze seznamu hodnot. Můžete vybrat hodnoty jiné vlastnosti nebo sami definovat možné hodnoty. Z nabídky vyberte vlastnost, u které chcete použít seznam hodnot. Ve výchozím nastavení je vybrána hodnota <strong>této vlastnosti</strong>, což znamená, že bude použit vlastní seznam hodnot pro tuto vlastnost. Pokud vyberete jinou vlastnost, bude upravovaná vlastnost sdílet seznam hodnot s vlastností vybranou z nabídky. Použití seznamu je užitečné například pro vlastnost User, Seznam pak obsahuje jména jednotlivých uživatelů.</li>
        <li><strong>Seznam hodnot</strong> - zapněte, pokud chcete vybrat hodnotu vlastnosti.</li>
        <li><strong>Pouze výběr</strong> - zapněte, pokud chcete uživateli zabránit v zadání vlastní hodnoty, která není v automaticky generovaném seznamu hodnot (musí vybrat ze seznamu). Například pokud chcete jako hodnoty vlastnosti vybrat pouze uživatele existující v databázi.<br />
            <div class="note">
               <div class="icon"></div>
                <div class="title">Poznámka:</div>
                Pokud není zaškrtnuta volba <em>Použít seznam jiné vlastnosti</em> nebo <em>seznam hodnot</em>, je tato volba zakázána          </div>
        </li>
    </ul>
  

</asp:Content>
