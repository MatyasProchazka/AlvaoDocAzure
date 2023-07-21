<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Popis exportu objektu XML</h1>

    <p>Stromovou strukturu ve správě aktiv lze exportovat do formátu XML. Níže naleznete popis jednotlivých značek (entit), které jsou ve struktuře použity.</p>
    <ul>
        <li>ICONLIST - seznam ikon včetně binární podoby      <ul>
                <li>ICON - ikona     <ul>
                        <li>UID - jedinečný identifikátor systémových ikon</li>
                        <li>DATE - binární data ikony (24bitový BMP bez FILEHEADER)</li>
                    </ul>
                </li>
            </ul>
        </li>
        <li>KINDLIST - seznam definic vlastností</li>
        <ul>
            <li>KIND - definice vlastnosti</li>
            <ul>
                <li>NAME - název</li>
                <li>ICON - název ikony</li>
                <li>ORDER - pořadí</li>
                <li>FLAGS - bitová mapa nastavení atributů vlastnosti, (0x0002=používá seznam hodnot, 0x0020=dědí se, 0x1000=jedinečné,0x2000=pouze výběr)</li>
                <li>VALUELIST - seznam statických hodnot</li>
                <li>VALUEKINDID - název vlastnosti, ze které je seznam hodnot sdílený</li>
                <ul>
                    <li>VALUE - hodnota v seznamu hodnot</li>
                </ul>
                <li>UNIQUE - jedinečný</li>
                <li>GLOBALSCOPE - globální pro všechny objekty</li>
                <li>SELECTONLY - pouze výběr</li>
                <li>ACCOUNTING - role účetního může upravovat hodnoty</li>
                <li>CLEANVALUEBYCOPYING - odstranění hodnoty při kopírování objektu</li>
            </ul>
        </ul>
        <li>NODE - objekt ve stromu</li>
        <ul>
            <li>NAME - název ve stromu</li>
            <li>ICON - název ikony</li>
            <li>CLASSID - ID druhu objektu</li>
            <li>CLASS - druh objektu</li>
            <li>HIDDEN - systémový objekt</li>
            <li>STATE - bitová mapa nastavení atributů objektu (0x16=skrytý objekt)</li>
            <li>AUTOUPDATE - automatická aktualizace podle detekce</li>
            <li>IGNOREDIFFERENCES - ignoruje rozdíly proti registraci</li>
            <li>PROPLIST - seznam vlastností objektu</li>
            <ul>
                <li>PROP - vlastnost</li>
                <ul>
                    <li>VALUE - hodnota</li>
                    <li>KIND - typ vlastnosti</li>
                    <li>STATE - bitová mapa atributů vlastnosti (0x10=určit název ve stromu, 0x40=zdědit vlastnost)</li>
                    <li>NAMEORDER - pořadí v názvu objektu</li>
                    <li>INHERITABLE - dědit vlastnost</li>
                </ul>
            </ul>
            <li>HISTORYLIST - historie objektu</li>
            <ul>
                <li>HISTORY - jeden záznam historie</li>
                <ul>
                    <li>DATE - datum</li>
                    <li>DESC - popis</li>
                    <li>USER - uživatel</li>
                    <li>FLAGS - bitová mapa příznaků (viz kapitola o <a href="database">databázi Alvao</a>).</li>
                </ul>
            </ul>
            <li>NODELIST - seznam podřízených objektů NODE</li>
            <li>SWLIST - seznam softwaru nainstalovaného v počítači</li>
            <ul>
                <li>SW - název nainstalovaného produktu, atributy:</li>
                <ul>
                    <li>CAT - kategorie (1=operační systém)</li>
                    <li>TYPE - 1=komerční, 2=zdarma, 3=shareware, 4=nespecifikováno</li>
                    <li>LICNAME - název licence, která se vztahuje na instalaci</li>
                    <li>SERIALNUM - aktivační klíč licence</li>
                    <li>FROMPACK - produkt je součástí balení</li>
                    <li>INSTUSER - nainstalovaný</li>
                    <li>INVNUM - inventární číslo licence</li>
                    <li>INVOICE - číslo faktury zakoupené licence</li>
                    <li>PARAM1 - pole uživatele produktu</li>
                    <li>PARAM2 - pole uživatele produktu</li>
                    <li>INSTDATE - nainstalováno</li>
                    <li>DETINSTDATE - zjištěná instalace</li>
                    <li>AUTHORIZED - schválená instalace</li>
                </ul>
            </ul>
        </ul>
    </ul>


</asp:Content>
