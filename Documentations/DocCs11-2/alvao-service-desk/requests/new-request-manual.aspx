<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Ruční zápis požadavku</h1>
    <p>Nový požadavek můžete vytvořit pomocí aplikace <strong>ALVAO WebApp</strong> - <a href="../../list-of-windows/alvao-webapp/requests">Requests</a> - <strong>New Request</strong>.</p>

    <h2>Typy nových požadavků a událostí</h2>
    <table>
        <thead>
            <tr>
                <th>Typ události</th>
                <th>Popis</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>e-mail</td>
                <td>Zpráva odeslaná e-mailem        <br />
                    Tento záznam nelze vytvořit ručně. Záznamy se vytvářejí pouze načtením e-mailu ze služební schránky.</td>
            </tr>
            <tr>
                <td>phone</td>
                <td>Mluvený rozhovor mezi dvěma nebo více osobami na dálku (telefon, konferenční hovor, videokonference atd.)</td>
            </tr>
            <tr>
                <td>osobní schůzka</td>
                <td>Rozhovor mezi dvěma nebo více osobami. Účastníci jsou osobně přítomni na místě schůzky.</td>
            </tr>
            <tr>
                <td>dopis</td>
                <td>Dokument doručovaný poštou.</td>
            </tr>
            <tr>
                <td>hlasová zpráva</td>
                <td>Hlasová zpráva nahraná po telefonu.</td>
            </tr>
            <tr>
                <td>písemná zpráva</td>
                <td>Dokument doručený vnitřní poštou.</td>
            </tr>
            <tr>
                <td>formulář</td>
                <td>Zpráva odeslaná samoobslužně prostřednictvím uživatelského rozhraní aplikace ALVAO.</td>
            </tr>
            <tr>
                <td>poznámka</td>
                <td>Obecná poznámka zaznamenaná během řešení požadavku řešitelem, vedoucím služby nebo schvalovatelem              <br />
                    Tento záznam nelze použít při vytváření požadavku.</td>
            </tr>
            <tr>
                <td>proces</td>
                <td>Záznam o provedení operace požadavku          <br />
                    Tyto záznamy se vytvářejí automaticky a nelze je vytvářet ručně.</td>
            </tr>
            <tr>
                <td>další</td>
                <td>Obecná komunikace. Žádný komunikační kanál (telefon, e-mail atd.)</td>
            </tr>
            <tr>
                <td>upozornění</td>
                <td>Záznam automatického upozornění vytvořeného pro nečinnost nebo blížící se řešení         <br />
                    Tato upozornění se vytvářejí automaticky a nelze je vytvořit ručně.</td>
            </tr>
        </tbody>
    </table>

</asp:Content>
