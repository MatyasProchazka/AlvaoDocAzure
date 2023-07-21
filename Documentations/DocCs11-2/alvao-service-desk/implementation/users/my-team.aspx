<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Můj tým</h1>
    <p>Kontaktní osoby externích zákazníků (zadavatelé služeb) mohou pro své kolegy vytvořit uživatelské účty pro přístup do Alvao pomocí příkazu <strong>WebApp</strong> - <strong>uživatelské menu v pravém horním rohu</strong> - samoobsluha <a href="../../../list-of-windows/alvao-webapp/my-team">Můj tým</a>.</p>
    <p>
        Stránka <a href="../../../list-of-windows/alvao-webapp/my-team">Můj tým</a> je dostupná pouze členům skupiny <strong>Team Managers (Manažeři týmů)</strong>. Pokud chcete tuto funkci zpřístupnit svým zákazníkům, přidejte jejich kontaktní osoby do této skupiny    </p>

    <h2>Doporučená struktura uživatelských skupin</h2>

    <p>Pro přiřazování SLA zákazníkům doporučujeme používat následující strukturu skupin.</p>
    <p>Mějme v SD službu, ve které zákazník požaduje například "Technickou podporu". Ve službě Technická podpora jsou SLA například "Neplacená technická podpora", "Placená technická podpora" a "Prémiová technická podpora".</p>
    <p>
        Existují 3 skupiny uživatelů: "Neplacená TP", "Placená TP" a "Prémiová TP". Těmto skupinám jsou přiřazeny odpovídající SLA   </p>
    <p>Zákazník s názvem například "Acme corp." si objednává placenou technickou podporu pro běžné požadavky a prémiovou technickou podporu pro kritické události. Pro tohoto zákazníka tedy vytvoříme další 2 skupiny. Skupina "Acme - placená TP" bude členem skupiny "Placená TP" a skupina "Acme - prémiová TP" bude členem skupiny "Prémiová TP".</p>
    <p>Manažeři zákazníků pak budou zahrnuti jak do skupiny "Acme - Placený TP", tak do skupiny "Acme - Prémiový TP". Při editaci práv svých podřízených pak manažeři uvidí tyto 2 skupiny a mohou seskupit uživatele podle toho, zda mají mít možnost používat SLA.</p>
    <p>Skupiny zákazníků tedy nemají SLA přiřazeny přímo ke službě, ale jsou členy jiných skupin. Vzniknou tak 2 úrovně skupin, přičemž jedna úroveň popisuje SLA poskytované na dané službě a druhá úroveň obsahuje skupiny s žadateli o služby zákazníků.</p>
    <p>Na stránce pro vytváření a editaci uživatelů se v sekci oprávnění zobrazují skupiny, ve kterých je manažer přímo členem, neimplikují členství v žádné systémové skupině a také neimplikují žádné SLA.</p>
    <h2>Vytvoření nového zákazníka v SD</h2>
    <ol>
        <li>Vytvořte skupiny uživatelů pro každou službu a SLA poskytovanou zákazníkovi a zařaďte je do skupin poskytovaných SLA. (Viz Doporučená struktura skupin v SD)</li>
        <li>Vytvořte uživatele pro správce zákazníka. Vyplňte všechna potřebná pole pro tohoto uživatele, zejména jméno, uživatelské jméno, e-mail a organizaci.</li>
        <li>Přiřaďte uživatele do všech skupin vytvořených pro zákazníka.</li>
        <li>Pokud bude manažer zákazníka spravovat žadatele sám, přiřaďte jej do skupiny "Manažeři týmu".</li>
        <li>Pokud zaměstnanec SD zakládá další žadatele zákazníků, vytvořte pro ně uživatele, vyplňte všechna potřebná pole, zejména jméno, e-mail a organizaci, a přiřaďte manažera zákazníka jako vedoucího. Seskupte je podle dohody se zákazníkem. </li>
    </ol>

    <h2>Odstranění zákazníka</h2>
    <ol>
        <li>Odstraňte všechny skupiny zákazníků ze skupin SLA (viz kapitola Doporučená struktura skupin v SD)</li>
        <li>Zablokujte nebo odstraňte uživatele zákazníka. </li>
    </ol>

</asp:Content>
