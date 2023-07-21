<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Vlastní skript</h1>
    <p>Složka <em>Config</em> může obsahovat soubor <em>EpCustomScript.js</em> s vlastním skriptem v jazyce JavaScript. Složku <em>Config</em> najdete ve složce, kde je nainstalována&nbsp; ALVAO Asset Management Console (standardně <em>C:\Program Files\ALVAO\Asset Management Console\Config</em>), pokud tam není, vytvořte ji a vložte do ní skript. Po restartování AM Console se skript aktivuje sám.</p>
    <p>Ve skriptu lze definovat obslužné programy, které jsou automaticky volány z konzoly AM při provádění různých operací.</p>
    <p><strong>Příklad 1. Příklad souboru EpCustomScript.js</strong></p>
    <div class="wide">
        <pre class="console" translate="no">function OnNodeMoving(nNodeId,nDestNodeId,nUserId) {
  return true;
}

function OnNodeRemoving(nNodeId,nUserId) {
  MessageBox(&quot;Object cannot be removed&quot;,0x30);
  return false;
}</pre>
    </div>
    <p>
        Skript v příkladu obsahuje funkci <span class="console">OnNodeMoving</span> a <span class="console">OnNodeRemoving</span>. Funkce <span class="console">OnNodeMoving</span> slouží k povolení přesunu objektu ve stromu. Funkce je volána před provedením přesunu a návratová hodnota <span class="console">true</span> znamená, že přesun je povolen. Funkce <span class="console">OnNodeRemoving</span> se volá před odstraněním objektu ze stromu a její návratová hodnota umožňuje odstranění. Ve výše uvedeném příkladu je tedy přesun objektu vždy povolen a jeho odstranění je vždy zakázáno. Kromě toho se při pokusu o odstranění objektu zobrazí okno se zprávou &quot;Objekt nelze odstranit&quot;    </p>

    <h2>Funkce služby</h2>
    <table class="wide">
        <thead>
            <tr>
                <th>Funkce</th>
                <th>Událost</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><a href="#onnodecopying">OnNodeCopying</a></td>
                <td>Vytvoří se kopie objektu. Tato funkce je rovněž volána při vytvoření nového objektu pomocí šablony.</td>
            </tr>
            <tr>
                <td><a href="#onnodecopied">OnNodeCopied</a></td>
                <td>Objekt byl zkopírován nebo byl vytvořen nový objekt podle šablony.</td>
            </tr>
            <tr>
                <td><a href="#onnodemoving">OnNodeMoving</a></td>
                <td>Objekt bude ve stromu přesunut.</td>
            </tr>
            <tr>
                <td><a href="#onnodemoved">OnNodeMoved</a></td>
                <td>Objekt byl přesunut.</td>
            </tr>
            <tr>
                <td><a href="#onnoderemoving">OnNodeRemoving</a></td>
                <td>Objekt bude přesunut do koše.</td>
            </tr>
            <tr>
                <td><a href="#onnoderemoved">OnNodeRemoved</a></td>
                <td>Objekt byl přesunut do koše.</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodificationenabled">OnPropertyModificationEnabled</a></td>
                <td>Zapnutí/vypnutí příkazu - Modify (vlastnost).</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodifying">OnPropertyModifying</a></td>
                <td>Bude změněna hodnota vlastnosti.</td>
            </tr>
            <tr>
                <td><a href="#onpropertymodified">OnPropertyModified</a></td>
                <td>Hodnota vlastnosti byla změněna.</td>
            </tr>
        </tbody>
    </table>

    <div id="onnodecopying"></div>

    <h2>OnNodeCopying</h2>
    <p>Tato funkce se volá před kopírováním objektu ve stromu, tedy i v případě vytvoření nového objektu podle šablony.</p>
    <ul>
        <li><strong>Syntaxe</strong> - bool OnNodeCopying(nNodeId, nDestNodeId, nUserId)</li>
        <li><strong>Parametry</strong>        <ul>
                <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId kopírovaného objektu, tj. vzorového objektu.</li>
                <li><strong>nDestNodeId</strong> - hodnota atributu tblNode.intNodeId objektu, do kterého bude kopie vložena jako podřazený objekt. Hodnota 0 znamená, že kopie bude vytvořena v kořeni stromu.</li>
                <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId, který určuje aktuálně přihlášeného uživatele.</li>
            </ul>
        </li>
        <li><strong>return value</strong> - pokud funkce vrátí <tt>true</tt>, objekt bude zkopírován. Pokud funkce vrátí <span class="console">hodnotu false</span>, kopírování se neprovede. V tomto případě je vhodné zobrazit chybové hlášení pomocí metody <a href="#scripting-messagebox">MessageBox</a>.</li>
        <li><strong>Příklady</strong>         <p><strong>Příklad 2. Příklad - Zakázat kopírování objektů pro vybraného uživatele</strong></p>
            <p>Následující příklad funkce OnNodeCopying zakáže uživateli s ID 15 kopírování objektů. ID uživatele závisí na konkrétní databázi a musí být nejprve zjištěno v tabulce tblUser - atribut intUserId.</p>
            <div class="wide">
                <pre class="console" translate="no">function OnNodeCopying(nNodeId,nDestNodeId,nUserId) {
    if ( nUserId == 15 ) {
        MessageBox(&quot;The object is forbidden to copy.&quot;,0x30);
        return false; 
    }
    return true;
}</pre>
            </div>

            <p><strong>Příklad 3. Příklad - volání uložené procedury na SQL serveru</strong></p>
            <p>V následujícím příkladu je k vyhodnocení události použita uložená procedura <tt>spOnNodeCopying</tt> na SQL serveru. Kopírování objektů je povoleno, pokud uložená procedura vrátí nenulovou hodnotu.</p>
            <div class="wide">
                <pre class="console" translate="no">function OnNodeCopying(nNodeId,nDestNodeId,nUserId) {
    var Con=new ActiveXObject(&quot;ADODB.Connection&quot;);
    Con.Open(ConnectionString);
    var Cmd=new ActiveXObject(&quot;ADODB.Command&quot;);
    Cmd.ActiveConnection=Con; 
    Cmd.CommandText=&quot;spOnNodeCopying&quot;;
    Cmd.CommandType=4; 
    Cmd.Parameters.Refresh();
    Cmd.Parameters.Item(&quot;@nNodeId&quot;).Value=nNodeId; 
    Cmd.Parameters.Item(&quot;@nDestNodeId&quot;).Value=nDestNodeId; 
    Cmd.Parameters.Item(&quot;@nUserId&quot;).Value=nUserId; 
    var Rs=Cmd.Execute();
    if ( Rs.Fields.Item(0)==1 )
        return true; 
    MessageBox(&quot;Object cannot be copied.&quot;,0x30);
    return false;
}</pre>
            </div>
            <p>Uložená procedura je definována takto:</p>
            <div class="wide">
                <pre class="console" translate="no">CREATE PROCEDURE [dbo].[OnNodeCopying]
    @nNodeId int, @nDestNodeId int, @nUserId int
AS
BEGIN 
    SET NOCOUNT ON; 
    SELECT 1
END</pre>
            </div>

        </li>
    </ul>
    <div id="onnodecopied"></div>
    <h2>OnNodeCopied</h2>
    <p>Tato funkce je volána po zkopírování objektu nebo po vytvoření nového objektu podle šablony.</p>
    <ul>
        <li><strong>Syntaxe</strong> - void OnNodeCopied(nNodeId, nNewNodeId, nUserId)</li>
        <li><strong>Parametry</strong>        <ul>
                <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId kopírovaného objektu, tj. vzorového objektu.</li>
                <li><strong>nNewNodeId</strong> - hodnota atributu tblNode.intNodeId nového objektu, který byl vytvořen kopírováním.</li>
                <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId určující aktuálně přihlášeného uživatele.</li>
            </ul>
        </li>
        <li><strong>návratová hodnota</strong> - žádná</li>
        <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
    </ul>

    <div id="onnodemoving">

        <h2>OnNodeMoving</h2>
        <p>Tato funkce je volána před přesunem objektu ve stromu na jiné místo.</p>
        <ul>
            <li><strong>Syntaxe</strong> - bool OnNodeMoving(nNodeId, nDestNodeId, nUserId)</li>
            <li><strong>Parametry</strong>        <ul>
                    <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId přesouvaného objektu.</li>
                    <li><strong>nDestNodeId</strong> - hodnota atributu tblNode.intNodeId objektu, do kterého má být objekt přesunut.  Hodnota 0 znamená, že objekt bude přesunut do kořene stromu.</li>
                    <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId, která určuje aktuálně přihlášeného uživatele.</li>
                </ul>
            </li>
            <li><strong>návratová hodnota</strong> - pokud funkce vrátí <span class="console">true</span>, objekt bude přesunut. Pokud funkce vrátí <span class="console">hodnotu false</span>, přesun se neprovede. V tomto případě je vhodné zobrazit chybové hlášení pomocí metody <a href="#scripting-messagebox">MessageBox</a>.</li>
            <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
        </ul>

        <div id="onnodemoved">
            <h2>OnNodeMoved</h2>
            <p>Tato funkce je volána po přesunu objektu ve stromu.</p>
            <ul>
                <li><strong>Syntaxe</strong> - void OnNodeMoved(nNodeId, nSrcParentNodeId, nUserId)</li>
                <li><strong>Parametry</strong>        <ul>
                        <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId objektu, který byl přesunut.</li>
                        <li><strong>nSrcParentNodeId</strong> - hodnota atributu tblNode.intNodeId objektu, který byl otcem (rodičovským objektem) objektu nNodeId před jeho přesunem.</li>
                        <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId, který identifikuje aktuálně přihlášeného uživatele.</li>
                    </ul>
                </li>
                <li><strong>návratová hodnota</strong> - žádná</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onnoderemoving">
            <h2>OnNodeRemoving</h2>
            <p>Tato funkce se volá před odstraněním objektu, tj. před jeho přesunutím do koše.</p>
            <ul>
                <li><strong>Syntaxe</strong> - bool OnNodeRemoving(nNodeId, bMoveToBin, nUserId)</li>
                <li><strong>Parametry</strong> <ul> <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId objektu, který má být odstraněn nebo přesunut do koše.</li> <li> </ul>bMoveToBin <ul>- pokud má být objekt přesunut do koše, má tento parametr hodnotu <span class="console">true</span>. <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId určující aktuálně přihlášeného uživatele</li> </ul>         </li>
                <li><strong>return value</strong> - pokud funkce vrátí <span class="console">true</span>, objekt bude odstraněn nebo přesunut do koše. Pokud funkce vrátí <span class="console">hodnotu false</span>, operace se neprovede. V tomto případě je vhodné zobrazit chybové hlášení pomocí metody <a href="#scripting-messagebox">MessageBox</a>.</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onnoderemoved">
            <h2>OnNodeRemoved</h2>
            <p>Tato funkce je volána po odstranění objektu, tj. po jeho přesunu do koše.</p>
            <ul>
                <li><strong>Syntaxe</strong> - void OnNodeRemoved(nNodeId, bMoveToBin, nUserId)</li>
                <li><strong>Parametry</strong> <ul> <li><strong>nNodeId</strong> - hodnota atributu (v databázi) tblNode.intNodeId objektu, který byl odstraněn nebo přesunut do koše.</li> <li> </ul>bMoveToBin <ul>- pokud je objekt přesunut do koše, má tento parametr hodnotu <span class="console">true</span>. <li><strong>nUserId</strong> - hodnota atributu tblUser.intUserId určující aktuálně přihlášeného uživatele</li> </ul>         </li>
                <li><strong>návratová hodnota</strong> - žádná</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodificationenabled">
            <h2>OnPropertyModificationEnabled</h2>
            <p>Povolí nebo zakáže příkaz -Modify pro úpravu vlastnosti.</p>
            <ul>
                <li><strong>Syntaxe</strong> - bool OnPropertyModificationEnabled(nPropertyId)</li>
                <li><strong>Parametry</strong>        <ul>
                        <li><strong>nPropertyId</strong> - Hodnota atributu (v databázi) vlastnosti tblProperty.intPropertyId, která má být upravena.</li>
                    </ul>
                </li>
                <li><strong>Vrácená hodnota</strong> - Pokud funkce vrátí <span class="console">true</span>, bude aktivní příkaz nabídky -Edit. V opačném případě bude neaktivní (zašedlý).</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodifying">
            <h2>OnPropertyModifying</h2>
            <p>Tato funkce je volána v rámci příkazu -Modify před uložením změněné vlastnosti do databáze.</p>
            <ul>
                <li><strong>Syntaxe</strong> - bool OnPropertyModifying(nPropertyId, strNewValue)</li>
                <li><strong>Parametry</strong>        <ul>
                        <li><strong>nPropertyId</strong> - hodnota atributu (v databázi) upravované vlastnosti tblProperty.intPropertyId.</li>
                        <li><strong>strNewValue</strong> - nová hodnota vlastnosti.</li>
                    </ul>
                </li>
                <li><strong>NewValue</strong> - pokud funkce vrátí <span class="console">true</span>, zapíše se nová hodnota do databáze. Pokud funkce vrátí <span class="console">false</span>, operace se neprovede. V tomto případě je vhodné zobrazit chybové hlášení pomocí metody <a href="#scripting-messagebox">MessageBox</a>.</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <div id="onpropertymodified">
            <h2>OnPropertyModified</h2>
            <p>Tato funkce je volána po zápisu nové hodnoty vlastnosti do databáze v rámci příkazu -Modify.</p>
            <ul>
                <li><strong>Syntaxe</strong> - void OnPropertyModified(nPropertyId)</li>
                <li><strong>Parametry</strong>        <ul>
                        <li><strong>nPropertyId</strong> - hodnota atributu (v databázi) vlastnosti tblProperty.intPropertyId, která byla změněna.</li>
                    </ul>
                </li>
                <li><strong>Vrácená hodnota</strong> - žádná</li>
                <li><strong>Příklady</strong> - viz <a href="#onnodecopying">OnNodeCopying</a></li>
            </ul>
        </div>
        <h2>MessageBox</h2>
        <p>Funkce zobrazí textové pole zprávy.</p>
        <ul>
            <li><strong>Syntaxe</strong> - int MessageBox(Text,Type)</li>
            <li><strong>Parametry</strong>        <ul>
                    <li><strong>Text</strong> - text zprávy.</li>
                    <li><strong>Type</strong> - parametr může obsahovat kombinaci následujících bitových hodnot.<ul>
                        <li><strong>Tlačítka</strong>         <table class="wide">
                                <thead>
                                    <tr>
                                        <th class="auto-style1">Hodnota</th>
                                        <th class="auto-style1">Symbol</th>
                                        <th class="auto-style1">Popis</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0</td>
                                        <td>MB_OK</td>
                                        <td>OK</td>
                                    </tr>
                                    <tr>
                                        <td>1</td>
                                        <td>MB_OKCANCEL</td>
                                        <td>OK, Storno</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MB_ABORTRETRYIGNORE</td>
                                        <td>Zrušit, Resetovat, Ignorovat</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>MB_YESNOCANCEL</td>
                                        <td>Ano, Ne, Zrušit</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>MB_YESNO</td>
                                        <td>Ano, Ne</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>MB_RETRYCANCEL</td>
                                        <td>Vrátit, Zrušit</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                        <li><strong>Ikony</strong>    <table class="wide">
                                <thead>
                                    <tr>
                                        <th>Hodnota</th>
                                        <th>Symbol</th>
                                        <th>Popis</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0x10</td>
                                        <td>MB_ICONERROR</td>
                                        <td>chyba (červená)</td>
                                    </tr>
                                    <tr>
                                        <td>0x20</td>
                                        <td>MB_ICONQUESTION</td>
                                        <td>dotazník</td>
                                    </tr>
                                    <tr>
                                        <td>0x30</td>
                                        <td>MB_ICONEXCLAMATION</td>
                                        <td>vykřičník (žlutý)</td>
                                    </tr>
                                    <tr>
                                        <td>0x40</td>
                                        <td>MB_ICONINFORMATION</td>
                                        <td>informace</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                        <li><strong>Výchozí tlačítko</strong> - hodnota z následující tabulky určuje, které tlačítko v pořadí zleva bude nastaveno jako výchozí         <table class="wide">
                                <thead>
                                    <tr>
                                        <th>Hodnota</th>
                                        <th>Symbol</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>0</td>
                                        <td>MB_DEFBUTTON1</td>
                                    </tr>
                                    <tr>
                                        <td>0x100</td>
                                        <td>MB_DEFBUTTON2</td>
                                    </tr>
                                    <tr>
                                        <td>0x200</td>
                                        <td>MB_DEFBUTTON3</td>
                                    </tr>
                                    <tr>
                                        <td>0x300</td>
                                        <td>MB_DEFBUTTON4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                    </ul>
                    </li>
                </ul>
            </li>
            <li><strong>Návratová hodnota</strong>      <table class="wide">
                    <thead>
                        <tr>
                            <th>Hodnota</th>
                            <th>Symbol</th>
                            <th>Popis</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>IDOK</td>
                            <td>OK</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>IDCANCEL</td>
                            <td>Storno</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>IDABORT</td>
                            <td>Zrušit</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>IDRETRY</td>
                            <td>Resetovat</td>
                        </tr>
                        <tr>
                            <td>5</td>
                            <td>IDIGNORE</td>
                            <td>Ignorovat</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>IDYES</td>
                            <td>Ano</td>
                        </tr>
                        <tr>
                            <td>7</td>
                            <td>IDNO</td>
                            <td>Ne</td>
                        </tr>
                    </tbody>
                </table>
            </li>
            <li><strong>Příklady</strong>         <p><strong>Příklad 4. Použití MessageBoxu</strong></p>
                <p>Následující příklad zobrazí okno s otázkou &quot;Chcete pokračovat?&quot; a tlačítky Ano a Ne, přičemž tlačítko Ne je aktivní.</p>
                <div class="wide">
                    <pre class="console" translate="no">if ( MessageBox(&quot;Do you want to continue?&quot;,4+0x20+0x100) == 6 )
  // continue ...  </pre>
                </div>
            </li>
        </ul>

        <h2>ConnectionString</h2>
        <p>Proměnná ConnectionString obsahuje připojovací řetězec pro aktuálně otevřenou databázi. Proměnná je určena pouze pro čtení.</p>
        <div class="note">
           <div class="icon"></div>
            <div class="title">Poznámka:</div>
            Připojovací řetězec odpovídá pravidlům technologie ADO   </div>

        <p><strong>Příklad 5. Použití proměnné ConnectionString</strong></p>
        <p>V následujícím příkladu je vytvořeno připojení pomocí proměnné Con k databázi, která je právě otevřena v AM Console.</p>
        <div class="wide">
            <pre class="console" translate="no">var Con=new ActiveXObject(&quot;ADODB.Connection&quot;);
Con.Open(ConnectionString); </pre>
        </div>

        <h2>UserId</h2>
        <p>Proměnná UserId obsahuje identifikátor uživatele, který je právě přihlášen do konzoly AM. Proměnná je určena pouze pro čtení.</p>
        <p>Identifikátor odpovídá hodnotě atributu intUserId v tabulce tblUser v databázi.</p>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
    <style type="text/css">
        .auto-style1 { height: 25px; } </style>
</asp:Content>

