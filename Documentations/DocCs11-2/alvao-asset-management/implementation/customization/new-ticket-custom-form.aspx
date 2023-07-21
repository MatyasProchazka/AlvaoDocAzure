<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vlastní formulář pro podání požadavku z AM Console</h1>

    <p>Pokud chcete použít příkaz <a href="../../../alvao-service-desk/request-object-links">Nový požadavek</a> nad hromadným výběrem objektu v AM Console a použít vlastní formulář z SD, použijte následující nastavení.</p>
    <ol>
        <li>Vytvořte vlastní formulář podle <a href="../../../modules/alvao-sd-custom-apps/custom-form-template">postupu v knize SD</a><ul>
                <li>Při implementaci vlastního formuláře použijte vlastní model.</li>
                <li>Formulář musí podporovat zobrazení stránky pomocí metody HTTP GET.</li>
                <li>V parametru <em>Objects</em> očekávejte seznam vybraných objektů, který obsahuje čárkami oddělené ID všech vybraných objektů v AM Console.<br />
                    Například: <em>Objects=54,134,1987,658</em>               </li>
            </ul>
        </li>
        <li>Nastavte cestu k vlastnímu formuláři spuštěním dotazu SQL nad databází Alvao:<br />
           <span class="console">dbo.spUpdateInsertProperty 'AM.NewTicketFromObjects.CustomFormUrl', '~/Custom/&lt;název funkce&gt;/&lt;název formuláře bez přípony .cshtml&gt;', NULL, NULL</span><br />
            Nastavení správné cesty k vlastnímu formuláři v dotazu.</li>
    </ol>

    <h2>Zakázat použití vlastního formuláře</h2>
    <p>
        Chcete-li zakázat používání vlastních formulářů, spusťte následující dotaz SQL nad databází Alvao:<br />
       <span class="console">delete tProperty where sProperty = 'AM.NewTicketFromObjects.CustomFormUrl'</span>   </p>

</asp:Content>
