<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Dokument</h1>

    <p>Na této stránce se zobrazí vybraný dokument.</p>

    <p>
        Možnosti    </p>

    <ul>
        <li>
           <b>Příkazový panel</b> - viz příkazový panel na stránce <a href="../documents">Dokumenty</a>       </li>

        <li>
            Záložky     <ul>
                <li><strong>Obecné</strong> - vlastnosti dokumentu</li>
                <li><strong>Přílohy</strong> - seznam příloh dokumentu. Chcete-li přílohu odstranit, klikněte na ikonu &quot;křížku&quot; u každé přílohy.<br />
                    Další příkazy na panelu příkazů          <ul>
                        <li><strong>Přidat soubor</strong> - výběr souboru, který chcete k dokumentu připojit.</li>
                        <li><a href="document/add-link">Přidat odkaz</a> - připojení odkazu na webovou stránku nebo jiný externí zdroj pomocí jeho adresy URL k dokumentu. </li>
                    </ul>
                </li>

                <li><strong>Objekty</strong> - tabulka <a href="../objects">objektů</a> připojených k dokumentu;<br />
                    Další příkazy na panelu příkazů          <ul>
                        <li><a href="document/add-object">Přidat objekt</a> - připojení objektu k dokumentu.</li>
                        <li><strong>Odebrat objekt</strong> - odpojení vybraných objektů od dokumentu.</li>
                        <li>Rozbalovací nabídka dokumentu - při výběru objektu v tabulce se do této nabídky sbalí příkazy týkající se dokumentu (nikoli vybraných objektů). </li>
                    </ul>
                </li>

                <li><strong>Licence</strong> - tabulka <a href="../../../alvao-asset-management/software-management/licenses">softwarových licencí</a> spojených s dokumentem.<br />
                    Další příkazy na panelu příkazů          <ul>
                        <li><a href="document/add-license">Přidat licenci</a> - připojení licence k tomuto dokumentu.  </li>
                        <li><strong>Odebrat licenci</strong> - odpojí vybranou softwarovou licenci od dokumentu.</li>
                        <li>Rozbalovací nabídka dokumentu - po výběru softwarové licence v tabulce se do této nabídky sbalí příkazy týkající se dokumentu (nikoli vybrané licence). </li>
                    </ul>
                </li>
            </ul>
        </li>
    </ul>
</asp:Content>
