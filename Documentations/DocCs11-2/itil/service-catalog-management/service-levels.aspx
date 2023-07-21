<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

   <h1 translate="no">Service levels</h1>

    Definujte jednoduché úrovně řešení požadavků a v jejich rámci klíčové ukazatele výkonnosti (KPI)     <ul>
            <li>Doba reakce (TTR)</li>
            <li>Doba do uzavření (TTC)</li>
        </ul>
    Tyto klíčové ukazatele výkonnosti se měří a vykazují.<br />
    <p class="MsoNormal">Žádost může být samozřejmě po počáteční analýze a kdykoli později, jakmile se zjistí nové okolnosti, přeřazena mezi úrovněmi, na které má konkrétní žadatel nárok. V případě poskytování služeb externím žadatelům (outsourcing) můžeme různé úrovně nacenit.</p>
    <h2>Vzorové úrovně služeb</h2>

    <h3>Vyřizování žádostí</h3>
    <ul>
        <li>RF001 - Rychlé řešení žádostí</li>
        <ul>
            <li>Doba odezvy = 1 den</li>
            <li>Doba do vyřešení = 1 týden</li>
        </ul>

        <li>RF002 - Standardní řešení požadavku</li>
        <ul>
            <li>Doba odezvy = 2 dny</li>
            <li>Doba do vyřešení = 2 týdny</li>
        </ul>

        <li>RF003 - Řešení žádostí v dohodnuté lhůtě</li>
        <ul>
            <li>Doba odezvy = 2 dny</li>
            <li>Doba do vyřešení = dohodnutá lhůta</li>
        </ul>
    </ul>

    <h3>Řízení incidentů</h3>
    
       <ul> <li>
       </ul> <ul>IM001 - Kritický </ul> <li>Doba odezvy = 4 hodiny</li> <li>Doba do vyřešení = 1 den</li> </ul>
 </li><li>IM002 - Vysoká<ul> <li>Doba odezvy = 1 den</li> <li>Doba do vyřešení = 2 dny</li> </ul> </li> <li>IM003 - Základní <ul> <li>Doba odezvy = 2 dny</li> <li>Doba do vyřešení = 1 týden</li> </ul> </li> <li>IM004 - Nízká <ul> <li>Doba odezvy = 2 dny</li> <li>Doba do vyřešení = 2 týdny</li> </ul> </li> <li>IM005 - Plánovaná<ul> <li>Doba odezvy = 2 dny</li> <li>Doba do vyřešení = dohodnutý termín</li></ul></li> </ul><h3>Řízení problémů</h3>
    <ul>
        <li>PM001 - naléhavý problém</li>
        <ul>
            <li>Doba odezvy = 1 den</li>
            <li>Doba do vyřešení = 1 týden</li>
        </ul>
        <li>PM002 - Standardní problém</li>
        <ul>
            <li>Doba odezvy = 2 dny</li>
            <li>Doba do vyřešení = dohodnuté datum</li>
        </ul>
    </ul>

    <h3>Řízení změn</h3>
    <ul>
        <li>CHG001 - naléhavá změna</li>
        <ul>
            <li>Doba odezvy = 1 den</li>
            <li>Doba do vyřešení = 1 týden</li>
        </ul>

        <li>CHG002 - Standardní změna</li>
        <ul>
            <li>Doba odezvy = 1 týden</li>
            <li>Doba do vyřešení = 4 týdny</li>
        </ul>

        <li>CHG003 - Vyřešení změny v dohodnuté lhůtě</li>
        <ul>
            <li>Doba odezvy = 1 týden</li>
            <li>Doba do vyřešení = dohodnutá lhůta</li>
        </ul>

        <li>CHG004 - Změna projektu</li>
        <ul>
            <li>Doba odezvy = 1 týden</li>
            <li>Doba do vyřešení = dohodnutá lhůta</li>
        </ul>
    </ul>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

