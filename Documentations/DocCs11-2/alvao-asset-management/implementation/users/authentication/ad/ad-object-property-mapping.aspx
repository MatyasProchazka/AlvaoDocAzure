<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Mapování atributů služby Active Directory na vlastnosti objektu</h1>
    <p>Systém ALVAO Asset Management umožňuje načítat data ze služby Active Directory. Ve výchozím nastavení se načítají organizační objekty, uživatelé a počítače. Pro konfiguraci načítání dat z Active Directory se používá databázová tabulka tblADMap, která popisuje mapování struktury objektů Active Directory na objekty ALVAO Asset Management.</p>
   <img class="wide" src="tblADMap.png" alt="tblADMap" />
    <p><strong>Popis tabulky tblADMap:</strong></p>
    <ul>
        <li><strong>lintClassId</strong> - druh objektu, např. <strong>5</strong>, <strong>47</strong>, <strong>48</strong>, <strong>49</strong>, <strong>50</strong> - počítač (viz níže); <strong>7</strong> - uživatel; <strong>30</strong> - složka       <p>
                Typy počítačů: <strong>5</strong> - počítač/desktop, <strong>47</strong> - počítač/laptop, <strong>47</strong> - počítač/notebook, <strong>48</strong> - počítač/virtuální, <strong>49</strong> - počítač/terminál, <strong>50</strong> - počítač/server            </p>
        </li>

        <li><strong>lintKindld</strong> - identifikátor vlastnosti objektu odpovídající hodnotě atributu intKindId v tabulce tblKind. Pokud toto pole nevyplníte, načte se do názvu objektu hodnota ze služby Active Directory.</li>
        <li><strong>txtADClass</strong> - název třídy objektu služby Active Directory.</li>
        <li><strong>txtADAttr</strong> - název atributu objektu Active Directory. Povoleny jsou speciální hodnoty: <strong>sAMAccountNameWithDomain</strong> - uživatelské jméno (sAMAccountName) s celou doménou, <strong>lastFound</strong> - datum posledního nalezení objektu v AD, <strong>Alvao.computerName</strong> - název počítače (hodnota se řídí <a href="../../../../../list-of-windows/alvao-asset-management-console/tools/settings/general">seznamem oken/alvao-asset-management-console/tools/settings/general"&gt;V názvech počítačů zadejte název domény (FQDN)).</a></li>
        <li><strong>bolKey</strong> - hodnota True znamená, že atribut je jedinečný.  
            <div class="caution">
               <div class="icon"></div>
                <div class="title">Upozornění:</div>
                Každá třída v tabulce tblADMap musí mít pouze jeden atribut, který je jedinečný. 
            </div>
        </li>
    </ul>

    <p>V tabulce tblADMap můžete nakonfigurovat načítání dalších vlastností ze služby Active Directory do systému ALVAO Asset Management.</p>
    <p>Chcete-li například načíst vlastnost telefonního čísla uživatele ze služby Active Directory do vlastnosti telefon objektu uživatele v nástroji ALVAO Asset Management, proveďte následující kroky:</p>
    <ol>
        <li>Otevřete tabulku tblADMap pro úpravy.</li>
        <li>Do <em>sloupce lintClassId </em> zadejte hodnoty: &quot; <em>7 </em>&quot; - uživatel.</li>
        <li>Zadejte <em>hodnoty do sloupce lintKindld </em>. &quot; <em>45 </em> &quot; - vlastnost Phone (v tabulce tblKind je nutné zjistit, jaký intKindId má vlastnost Phone).</li>
        <li>Do sloupce txtADClass zadejte <em>&quot;user&quot;</em>.</li>
        <li>Do sloupce txtADAttr zadejte <em>&quot;phoneNumber&quot; . </em></li>
        <li>Do sloupce bolKey zadejte hodnoty <em>&quot;False</em>&quot;.</li>
    </ol>
    </asp:Content>
