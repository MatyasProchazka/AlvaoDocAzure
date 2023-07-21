<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Strom objektů</h1>
    <p>
        Každá položka stromu představuje jeden <a href="../../alvao-asset-management/objects-and-properties">objekt</a> ve Správě aktiv.<br />
        Více informací o logice vytváření stromu objektů naleznete v části <a href="../../alvao-asset-management/implementation/tree-design">Návrh stromové struktury</a>   </p>

    <p>Možnosti místní nabídky ve <strong>stromu objektů</strong>:</p>
    <ul>
        <li><a href="edit/new-object">Nový objekt</a>- vytvoření nového objektu jako potomka objektu vybraného ve stromu.</li>
        <li><a href="edit/new-computer">Nový počítač</a>- vytvoření nového objektu typu počítač jako podřazeného objektu vybraného ve stromu.</li>
        <li><a href="../alvao-webapp/requests/new-request">Nový požadavek</a> - vytvoření nového požadavku v systému <a href="../../alvao-service-desk">ALVAO Service Desk</a> souvisejícího s vybranými objekty.</li>
        <li><a href="add-objects-to-ticket">Přidat do požadavku</a>- přidání vybraných objektů do <a href="../alvao-webapp/requests/table-of-requests">položky Objekty</a> existujícího požadavku v aplikaci <a href="../../alvao-service-desk">ALVAO Service Desk</a>.</li>
        <li><b>Související požadavky</b> - zobrazení požadavků v aplikaci <a href="../../alvao-service-desk">ALVAO Service Desk</a>, které souvisejí s vybraným objektem.</li>
        <li><strong>Odebrat</strong> - odebrání vybraného objektu (který lze poté vložit jinam).</li>
        <li><strong>Kopírovat</strong> - zkopíruje vybraný objekt.</li>
        <li><strong>Vložit</strong> - vložení objektu ze schránky jako podřazeného objektu vybraného objektu.</li>
        <li><strong>Odstranit</strong> - odstranění vybraného objektu.</li>
        <li><a href="object/choose-object">Přesunout</a> - přesun vybraného objektu.</li>
        <li><a href="change-quantity">Změnit množství</a>- umožňuje změnit vlastnost <em>Množství</em> u objektů, které tuto vlastnost mají.</li>
        <li><strong>Tisk</strong> - zobrazí informace o vybraném objektu v náhledu tisku. Z nabízených <a href="../alvao-webapp/administration/asset-management/print-report-templates">šablon</a> vyberte tu, která vám nejvíce vyhovuje. U některých budete muset <a href="file/query-parameters">Zadat parametry dotazu</a>.<br />
            Pokud vyberete sestavu pro Předávací <strong>protokol</strong>, otevře se příslušné okno pro vyplnění potřebných informací o předání          <ul>
                <li><a href="../alvao-webapp/objects/object/print">Interní předávací protokol</a></li>
                <li><a href="../alvao-webapp/objects/object/print">Externí předávací protokol</a></li>
            </ul>
        </li>
        <li><a href="edit/object">Upravit</a>- editace údajů vybraného objektu.</li>
        <li><a href="admin-tools">Nástroje správce</a>- příkazy pro správu objektu dostupné pouze správci.</li>
    </ul>
    <p>Možnosti místní nabídky ve <strong>stromu objektů</strong>, pokud je vybraným objektem <strong>počítač</strong>:</p>
    <ul>
        <li><a href="edit/detection">Detekce</a>- detekce vybraného počítače (lze detekovat pomocí uloženého nastavení počítače nebo nastavení jednorázově upravit).</li>
        <li><a href="edit/detection/detection-setup">Nastavení detekce</a> - úprava nastavení detekce vybraného počítače.</li>
        <li><strong>Ping</strong> - zjištění, zda počítač na dané IP adrese odpovídá.</li>
        <li><a href="computer-name">Přejmenovat počítač</a>- přejmenování názvu sítě na vybraný počítač ve stromu.</li>
        <li><a href="tab-view/detection/detail/hardware">Hardware</a> - zobrazení podrobností o detekci hardware vybraného počítače.</li>
        <li><strong>Software</strong><ul>
            <li><a href="assign-licenses">Přiřadit licence</a>- hromadné přiřazení licence danému počítači.</li>
            <li>
               <a href="software/installation-registry">Instalační registr</a> - zobrazení instalačního registru daného počítače.</li>
            <li><a href="software/license-registry">Evidence licencí</a> - zobrazení registru licencí pro daný počítač.</li>
            <li><a href="tab-view/detection/detail/software">Podrobnosti</a> - zobrazení podrobností o detekci softwaru pro vybraný počítač.</li>
        </ul>
        </li>

    </ul>
    <p>Možnosti místní nabídky ve <strong>stromu objektů</strong>, pokud je vybraným objektem <strong>uživatel</strong>:</p>
    <ul>
        <li><strong>Software</strong>       <ul>
                <li><a href="assign-licenses">Přiřadit licence</a>- hromadné přiřazení licence danému uživateli.</li>
                <li><a href="software/license-registry">Evidence licencí</a> - zobrazení registru licencí pro daný počítač.</li>

            </ul>
        </li>
    </ul>

</asp:Content>
