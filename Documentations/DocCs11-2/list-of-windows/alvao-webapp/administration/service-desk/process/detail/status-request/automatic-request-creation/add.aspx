<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Nové pravidlo</h1>
    <p>Tento formulář slouží k vytvoření nového pravidla, které automaticky vytvoří nový propojený požadavek, když zdrojový požadavek přejde do určitého stavu.</p>
    <p>Možnosti:</p>
    <ul>
        <li><b>Automaticky vytvořit požadavek, když zdrojový požadavek přejde do jiného stavu</b> - nebo změnit stav, pokud chcete pravidlo přidat do jiného stavu procesu.</li>
        <li><b>Šablona požadavku</b> - vyberte šablonu požadavku pro vytvoření nového požadavku        <ul>
            <li><a href="../../../../../../ticket-templates/edit-template">Upravit šablonu</a> - upravte vybranou šablonu požadavku.</li>
            <li><a href="../../../../../../ticket-templates/new-template">Nová šablona</a> - vytvoření nové šablony požadavku.</li>
        </ul>
        </li>
        <li><b>Typ propojení</b> - vyberte typ propojení, které chcete vytvořit mezi novým a zdrojovým požadavkem. Chcete-li například vytvořit podřízený požadavek, vyberte typ <em>Is a child of</em>.</li>
        <li><b>Šablona názvu požadavku</b> - v případě potřeby zadejte šablonu pro vytvoření názvu nového požadavku. V šabloně můžete použít statický text a také proměnné představující hodnoty položek požadavku. V šabloně můžete použít stejné proměnné jako v <a href="../../../../service/message-template">šablonách zpráv</a>     <ul>
            <li><b>Vložit proměnnou</b> - v šabloně názvu požadavku umístěte kurzor na místo, kam chcete vložit proměnnou, a poté vyberte proměnnou z této nabídky.</li>
        </ul>
        </li>
        <li><strong>Požadavek</strong>       <ul>
            <li><b>Pole zdrojového požadavku</b> - vyberte, zda se <em>zadavatelem</em> nového požadavku stane zadavatel nebo <em>řešitel</em> zdrojového požadavku. V rozevírací nabídce jsou k dispozici také <a href="../../../../../custom-items">vlastní pole</a> požadavku typu <em>Uživatel </em>.<br />
                Pokud zvolíte možnost <em>Solver</em> a zdrojový požadavek nemá řešitele, použije se možnost <em>Requester</em>.</li>
            <li><b>Změnit zadavatele na</b> - vyberte konkrétní osobu, která bude zadavatelem požadavku.</li>
        </ul></li>
        <li><b>Kopírovat hodnoty položek ze zdrojového požadavku</b> - seznam položek zdrojového požadavku, jejichž hodnoty budou zkopírovány do nového požadavku        <ul>
            <li><a href="edit/items-copying">Upravit</a> - upraví seznam zkopírovaných položek.</li>
        </ul>
        </li>
        <li><b>Podmínka</b> - zadejte <a href="https://docs.microsoft.com/en-us/sql/t-sql/queries/search-condition-transact-sql?view=sql-server-ver15">podmínku SQL, kterou</a> musí zdrojový požadavek splňovat, aby byl vytvořen propojený požadavek. V podmínce můžete použít hodnoty všech položek požadavku        <ul>
            <li><b>Vložit proměnnou</b> - v podmínce umístěte kurzor na místo, kam chcete vložit proměnnou, a poté vyberte proměnnou z této nabídky.</li>
            <li>Příklady: V seznamu proměnných můžete uvést např     <ul>
                <li>tHdTicketCust.BusinessCards = 1 AND tHdTicketCust.WorkPosition != N'Programmer' (programátor)</li>
                <li>tHdTicketCust.ComputerType = N "Desktop" NEBO tHdTicketCust.ComputerType = N "Notebook</li>
                <li>tHdTicketCust.WorkHoursPerWeek &gt;= 20</li>
                <li>tHdTicketCust.Mentor = (SELECT iPersonId FROM tPerson WHERE sPerson=N'James Smith')</li>
            </ul>
            </li>
        </ul>
        </li>
    </ul>
</asp:Content>
