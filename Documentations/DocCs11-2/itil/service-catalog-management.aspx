<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">Service Catalog Management</h1>

    <p class="MsoNormal">
        Katalog služeb je jednotným místem pro správu všech služeb poskytovaných servisními odděleními napříč organizací (IT oddělení, HR oddělení, správa budov, správa vozového parku, ...). Cílem správy katalogu služeb je zajistit, aby katalog služeb odrážel skutečný stav v organizaci a aby služby byly dostupné těm uživatelům (žadatelům), kteří mají <a href="../alvao-asset-management/implementation/users/permissions">právo služby využívat</a>, a to na dohodnuté úrovni<a href="../alvao-service-desk/implementation/services/sla">(SLA)</a>   </p>
    <p class="MsoNormal">
        Tvorba katalogu služeb by měla probíhat formou workshopu za účasti nejen členů řešitelských týmů (pohled zevnitř), ale zejména klíčových uživatelů služeb a zástupců obchodu (pohled zvenčí). Dobře navržený katalog služeb je intuitivní jak pro žadatele, tak pro výzkumné pracovníky a snižuje potřebu <a href="../alvao-service-desk/requests/move-to-another-service">přecházet mezi službami</a>   </p>
    <p class="MsoNormal">Správcem katalogu služeb je obvykle CIO společnosti (který je obvykle také správcem úrovně služeb).</p>

    <h2>Struktura</h2>

    Katalog služeb by měl mít logickou strukturu a služby mohou být seskupeny podle témat (např. podle agend jednotlivých oddělení). Vznikne tak hierarchický katalog služeb nebo, chcete-li, strom služeb. Na základě zkušeností z implementací u našich zákazníků doporučujeme katalog služeb strukturovat takto: <ul> <li>věcné seskupení</li> </ul>např. <ul>aplikace - kancelářské aplikace - MS Office, počítače a koncová zařízení - notebooky a tablety </ul> <ul> <li>na poslední úrovni definovaného workflow procesu ITIL (typicky Incident Management, Request Fulfilment, Change Management, Problem Management</li> </ul>) např. <ul>požadavek (Request), incident (Incident), změna (Change </ul>)    <h2>Jak vypadá Service Desk ALVAO</h2>
    <h3>Ukázka struktury služby</h3>
    <ul>
        <li>Změny podnikových standardů</li>
        <li>Správa</li>
        <li>Informační technologie</li>
        <ul>
            <li>Potřebuji pomoc</li>
            <li>Telefonování</li>
            <li>Počítače, notebooky a tablety</li>
            <li>Tiskové služby</li>
            <ul>
                <li>Obtíže s používáním</li>
                <li>Požadavek na tiskárnu</li>
            </ul>
            <li>Programy a aplikace</li>
            <li>Podnikový informační systém</li>
            <ul>
                <li>Pomoc s používáním</li>
                <li>Nahlášení chyby nebo poruchy</li>
                <ul>
                    <li>Řešení problémů</li>
                </ul>
                <li>Nastavení a změna přístupu</li>
                <li>Návrhy na zlepšení</li>
            </ul>
            <li>E-mail</li>
            <li>Sdílené soubory a složky</li>
            <li>Vzdálený přístup k síti</li>
            <li>Služby podpory</li>
            <ul>
                <li>Správa přístupu</li>
                <li>Aplikace</li>
                <ul>
                    <li>Aplikace pro stolní počítače</li>
                    <li>Systém ERP</li>
                    <li>Exchange</li>
                    <ul>
                        <li>Incidenty</li>
                        <li>Problémy</li>
                    </ul>
                </ul>
                <li>Řízení změn</li>
                <li>Infrastruktura</li>
                <li>Projekty IT</li>
                <li>Řízení problémů</li>
                <li>Správa softwarových prostředků</li>
            </ul>
            <li>Pochvaly, stížnosti a nápady</li>
        </ul>
        <li>Správa budov</li>
        <li>Správa vozového parku</li>
        <li>Nákup na zakázku</li>
        <li>Údržba strojů</li>
        <li>Vývoj</li>
        <li>Personální oddělení</li>
        <li>Právní služby</li>
        <li>Finance</li>
        <li>Marketing</li>
        <li>Bezpečnost</li>
        <li>Kvalita</li>
        <li>Management</li>
    </ul>
    <h3>Uživatelská webová aplikace</h3>
   <img src="service-catalog-management/SDWA - Catalog EN.PNG" alt="Service Catalog in ALVAO WebApp" />



    <p class="MsoNormal">
        S dobře navrženým katalogem služeb dochází jen k malým výkyvům v požadavcích, protože intuitivní katalog, podpořený vhodnými ikonami a popisy, správně navede žadatele na poslední úroveň s konkrétním pracovním postupem. Pokud si žadatel požadavku z nějakého důvodu není jistý, kam má požadavek umístit, může jej vytvořit na libovolné úrovni - operátoři a řešitelé jej v rámci komunikace a diagnostiky žadatele přesunou na správnou službu    </p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Služby, které mají, <a href="../list-of-windows/alvao-webapp/administration/service-desk/service/create-service">se v katalogu služeb nezobrazují. nastavení služby</a>je možnost "Zobrazit v katalogu služeb" vypnuta    </div>

    <h2>Příklad interní směrnice</h2>
    <p class="MsoNormal">
        Interní směrnice k této problematice by měla obsahovat následující informace    </p>
    <h3>Katalog služeb IT</h3>
    <ol>
        <li>Seznam služeb poskytovaných interními pracovníky IT společnosti.</li>
        <li>Každý seznam by měl být samostatným dokumentem (uloženým např. na SharePointu)</li>
        <li>Na tyto katalogové listy se pak můžete odkazovat z formulářů Service Desk (pole popis)</li>
    </ol>
    <p>
        <table>
            <tr>
                <td>
                    <p>ID služby</p>
                </td>
                <td>
                    <p>S001</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Název služby</p>
                </td>
                <td>
                    <p><strong>Počítače a příslušenství</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Popis služby</p>
                </td>
                <td>
                    <p>
                       <b>Dodávka a servis počítačů a příslušenství</b>                <ul>
                            <li>počítač</li>
                            <li>stolní počítače</li>
                            <li>nebo notebook + dokovací stanice + brašna</li>
                        </ul>
                       </li>
 <li>monitor</li> <li>myš</li> <li>klávesnice</li> <li>náhlavní souprava s mikrofonem</li> <li>potřebné propojovací kabely</li> </ul><p>
    <b>Připojení k vnitřní podnikové síti</b>    <br />
     Připojení počítače k vnitřní podnikové síti Počítače jsou připojeny k vnitřní síti:<br />
     a) kabelem     <br />
     b) bezdrátově (wifi)      </p>


                        <p>
                           <b>Přístup k webu</b>   <br />
                            Zajištění přístupu na web z vnitřní podnikové stěny Počítače jsou připojeny k internetu prostřednictvím vnitřní podnikové sítě. Připojení je nastaveno automaticky. Není třeba jej nastavovat ručně. Přístup z vnitřní sítě na webové servery na internetu není omezen      </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Varianty<o:p></o:p></p>
                </td>
                <td>
                    <p>Business - Notebook</p>
                    <p>Design - stolní stanice</p>
                    <p>Administrativní - stolní počítač</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Klíčový uživatel<o:p></o:p></p>
                </td>
                <td>
                    <p>
                        Petr Novák (obchod)<br />
                        František Doskočil (konstrukce)<br />
                        Marie Okurková (administrativa)                </p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Výchozí úrovně služeb<o:p></o:p></p>
                </td>
                <td>
                    <p>Dodávka: V případě, že se jedná o dodávku, je nutné zajistit, aby se v případě, že se nejedná o dodávku, mohla být v případě, že se nejedná o dodávku, zajištěna dodávka: RF001 - Standardní řešení požadavků<o:p></o:p></p>
                    <p>Oprava: Oprava v případě, že se jedná o opravu, je nutné provést opravu: IM001 - Standardní řešení problémů<o:p></o:p></p>
                </td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td>
                    <p>ID služby</p>
                </td>
                <td>
                    <p>S002</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Název služby</p>
                </td>
                <td>
                    <p><strong>Standardní SW</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Popis služby</p>
                </td>
                <td>
                    <p>
                    Instalace a podpora standardního softwaru dodávaného s počítačem. </td>
            </tr>
            <tr>
                <td>
                    <p>Možnosti</p>
                </td>
                <td>
                    <table>



                        <thead>
                            <th>Aplikace</th>
                            <th>Klíčový uživatel</th>
                            <th>Základní software</th>
                        </thead>
                        <tr>
                            <th>Doporučeno pro nové počítače</th>
                            <td></td>
                </td>
            </tr>
            <tr>
                <td>Windows 7 Enterprise (anglicky, x64)</td>
                <td>Petr Novák</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Microsoft Office 2010 Professional Plus (česky, x64)</td>
                <td>Petr Novák</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Microsoft Lync</td>
                <td>Petr Novák</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Adobe Acrobat Reader</td>
                <td>Petr Novák</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>7Zip</td>
                <td>Petr Novák</td>
                <td>Ano</td>
            </tr>
            <tr>
                <td>Microsoft Office Project 2010 Professional (čeština, x64)</td>
                <td>František Doskočil</td>
                <td>Ne</td>
            </tr>
            <tr>
                <td>Microsoft Office Visio 2010 Professional (česky, x64)</td>
                <td>František Doskočil</td>
                <td>Ne</td>
            </tr>
            <tr>
                <th>Starší podporované aplikace:</th>
                <td></td>
                </td></td></tr>

            <tr>
                <td>Microsoft Vista Enterprise (čeština, x64/x32)</td>
                <td>Petr Novák</td>
                <td></td>
            </tr>
            <tr>
                <td>Microsoft Office 2007 Enterprise (česky. x64/x32)</td>
                <td>Petr Novák</td>
                <td></td>
            </tr>
            <tr>
                <td>Microsoft Office Project 2007 Professional (česky, x32)</td>
                <td>František Doskočil</td>
                <td></td>
            </tr>


        </table>
        </td>
 </tr>
 <tr>
     <td>
         <p>Klíčový uživatel<o:p></o:p></p>
     </td>
     <td>
         <p>
             Petr Novák (obchod)<br />
             František Doskočil (konstrukce)<br />
             Marie Okurková (administrativa)         </p>
     </td>
 </tr>
        <tr>
            <td>
                <p>Výchozí úrovně služeb<o:p></o:p></p>
            </td>
            <td>
                <p>Dodávka: V případě, že se jedná o dodávku, je nutné zajistit, aby se v případě, že se nejedná o dodávku, mohla být v případě, že se nejedná o dodávku, zajištěna dodávka: RF001 - Standardní řešení požadavků<o:p></o:p></p>
                <p>Oprava: Oprava v případě, že se jedná o opravu, je nutné provést opravu: IM001 - Standardní řešení problémů<o:p></o:p></p>
            </td>
        </tr>
        </table>
	<br />
        <table>
            <tr>
                <td>
                    <p>ID služby</p>
                </td>
                <td>
                    <p>S003</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Název služby</p>
                </td>
                <td>
                    <p><strong>Elektronická pošta</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Popis služby</p>
                </td>
                <td>
                    <p>
                        Správa elektronických poštovních schránek         </p>
                    <p>Každý zaměstnanec má vlastní elektronickou schránku. Standardní formát adresy je <name.prijmeni>@firma.cz.</p>
                    <p>Velikost schránky je omezena na 500 MB, viz doporučené nastavení automatické archivace. Obsah schránky je duplikován na dvou pevných discích pro případ poruchy disku. Pro případ zničení nebo odcizení serveru jsou data zálohována 2x/rok.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Možnosti</p>
                </td>
                <td>Nejsou nabízeny žádné varianty této služby. V případě jakýchkoli nestandardních potřeb zadejte požadavek v části Řešení standardních požadavků a oddělení se jimi bude zabývat</td>
            </tr>
            <tr>
                <td>
                    <p>Klíčový uživatel<o:p></o:p></p>
                </td>
                <td>
                    <p>Petr Novák</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Výchozí úrovně služeb<o:p></o:p></p>
                </td>
                <td>
                    <p>Dodání: V případě, že je služba poskytována na základě smlouvy o poskytování služeb, je nutné, aby byla služba poskytována v souladu se zákonem o veřejných zakázkách: RF001 - Standardní řešení požadavků<o:p></o:p></p>
                    <p>Oprava: IM001 - Standardní řešení problémů<o:p></o:p></p>
                </td>
            </tr>
        </table>



        <br />
        <table>
            <tr>
                <td>
                    <p>ID služby</p>
                </td>
                <td>
                    <p>S004</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Název služby</p>
                </td>
                <td>
                    <p><strong>Sdílené soubory a složky</strong></p>
                </td>
            </tr>


            <tr>
                <td>
                    <p>Popis služby</p>
                </td>
                <td>Správa sdílených jednotek, jejich zálohování a archivace.<br />
                    Řešení problémů se sdílenými disky a daty na nich, přidělování a změna přístupových práv <br />
                    <br />
                    Sdílené disky jsou<table>
                        <thead>
                            <th>Disk</th>
                            <th>Popis</th>
                        </thead>
                        <tr>
                            <td>S:</td>
                            <td>Záložní disk v ZR  <br />
                                Velikost disku je 20 GB.<br />
                                <br />
                                Obsah se zálohuje každou noc po skončení pracovního dne. Záloha odolává zničení nebo odcizení serveru. Posledních 5 záloh je archivováno.</td>
                        </tr>
                        <tr>
                            <td>T:</td>
                            <td>Pracovní disk v ZR  <br />
                                Velikost disku je 200 GB.<br />
                                <br />
                                Obsah je uložen duplicitně na dvou pevných discích pro případ poruchy disku. Data jsou zálohována 2x/rok pro případ zničení nebo odcizení serveru.</td>
                        </tr>

                        <tr>
                            <td>V:</td>
                            <td>Pracovní disk v Brně     <br />
                                Velikost disku je 200 GB.<br />
                                <br />
                                Obsah je uložen duplicitně na dvou pevných discích pro případ poruchy disku. V případě zničení nebo odcizení serveru jsou data zálohována 2x/rok. Složka V:\Backup je zálohována každou noc po skončení pracovního dne. Záloha odolá zničení nebo odcizení serveru.  Posledních 5 záloh je archivováno. Velikost této složky je omezena na 1 GB.</td>
                        </tr>
                    </table>


                </td>
            </tr>
            <tr>
                <td>
                    <p>Varianty</p>
                </td>
                <td>Přístup řízený na základě pracovního zařazení (vedení, finanční oddělení, administrativní pracovníci, ...)    </td>
            </tr>
            <tr>
                <td>
                    <p>Klíčový uživatel<o:p></o:p></p>
                </td>
                <td>
                    <p>Petr Novák</p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Výchozí úrovně služeb<o:p></o:p></p>
                </td>
                <td>
                    <p>Dodání: V případě, že se jedná o službu, která je poskytována na základě smlouvy o poskytování služeb, je nutné, aby byla poskytována na základě smlouvy o poskytování služeb: RF001 - Standardní řešení požadavků<o:p></o:p></p>
                    <p>Oprava: IM001 - Standardní řešení problémů<o:p></o:p></p>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

