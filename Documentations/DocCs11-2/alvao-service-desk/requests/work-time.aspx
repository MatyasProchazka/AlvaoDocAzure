<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1>Vykazování času</h1>

    <p>Uživatelé, kteří jsou členy skupiny <a href="../implementation/users/groups">Osoby vykazující čas</a>, mohou při provádění operací na požadavku zaznamenávat odpracovaný čas do protokolu požadavků. Vykázaný čas mohou vidět také všichni uživatelé, kteří mají právo nahlížet do protokolu požadavků.</p>

    <h2>Pole ve formulářích</h2>
    <p>Odpracovaný čas se vykazuje v následujících polích.</p>
    <ul>
        <li><b>Práce (h:m</b> ) - zadejte čas strávený prací na žádosti ve formátu hodiny:minuty.</li>
        <li><b>Čas strávený na cestě (h:m</b> ) - zadejte čas strávený na cestě (ve formátu hodiny:minuty).</li>
        <li><b>Vzdálenost (km)</b> - zadejte počet ujetých kilometrů.</li>
        <li><b>Fakturovat</b> - povolte, pokud nechcete, aby se vykazované hodnoty zobrazovaly žadateli. <a href="../implementation/services/service-roles">Řešitelé a manažeři</a> uvidí hodnoty přeškrtnutým písmem.</li>
    </ul>

    <h2>Zobrazení vykazovaného času</h2>
    <p>Vykázaný čas se v tabulce požadavků zobrazuje jako součet vykázaných časů ze všech událostí. V tabulce seznamu událostí a v protokolu se čas zobrazuje pro jednotlivé události. Možnost <i>Bez faktury</i> lze také zobrazit jako sloupec v protokolu, který lze zapnout při každém hlášení času.</p>
    <p>Když si žadatel zobrazí protokol, uvidí nahlášený čas na konci všech událostí v protokolu. Pokud je vykázaný čas u události označen jako <i>Bez fakturace</i>, vidí žadatel tento čas jako nulový. Pokud se řešitel nebo manažer podívá do protokolu, vidí nevyúčtovaný čas, ale je přeškrtnutý.</p>
    <p>Protokol lze exportovat do tabulky Microsoft Excel. Tento soubor pak lze použít k fakturaci případného odpracovaného času zákazníkovi.</p>

</asp:Content>
