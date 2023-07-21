<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">

    <h1 translate="no">ALVAO Microsoft Intune Connector</h1>
    <p>
        Tento modul importuje informace o zařízeních ze <a href="https://www.microsoft.com/en-us/security/business/microsoft-Intune">služby Microsoft Intune</a> do systému Alvao. Může také importovat informace o zařízeních ze <a href="https://learn.microsoft.com/en-us/system-center/">Správce konfigurace</a> (dříve Microsoft System Center Configuration Manager - MS SCCM).</p>
    <h2>
        Instalace</h2>
    <p>
        Chcete-li nastavit konektor pro předplatné <strong>služby ALVAO SaaS</strong>, obraťte se na <a href="https://www.alvao.com/en/contact#technical-support">tým technické podpory společnosti ALVAO</a>.</p>
    <p>
        Chcete-li nastavit konektor pro instalaci <strong>on-premise</strong>, přečtěte si část <a href="alvao-microsoft-intune-connector/installation">Instalace</a>.</p>
    <h2>
        Importování informací ze služby Intune</h2>
    <p>
        Konektor pravidelně načítá informace ze služby Intune a aktualizuje odpovídající objekty představující zařízení v systému Alvao.</p>
    <p>
        Při prvním spuštění importu se objekty Alvao spárují se zařízeními Intune podle vlastnosti objektu <em>Hostname</em> v případě počítačů nebo podle vlastnosti <em>IMEI</em> v případě mobilních telefonů (druh objektu = Mobilní telefon). Pokud pro daný název hostitele, respektive IMEI, není nalezen žádný objekt Alvao, vytvoří se nový objekt Alvao ve složce <strong>Importované objekty</strong> ve stromu objektů. Tuto složku pravidelně kontrolujte, v případě potřeby změňte druh nově vytvořených objektů a přesuňte objekty na příslušná místa ve stromu objektů.</p>
    <p>
        Pro všechny objekty spárované se zařízením v Inture konektor nastaví vlastnost objektu <strong>Intune device id</strong> a použije ji místo vlastnosti Hostname.</p>
    <p>
        Ve vlastnosti <strong>Intune last check-in</strong> najdete datum a čas, kdy Intune naposledy aktualizoval informace o zařízení.</p>
    <p>
        Konektor může aktualizovat následující vlastnosti objektu:</p>
    <ul>
        <li>Sériové číslo systému BIOS</li>
        <li>Název hostitele</li>
        <li>Adresy MAC</li>
        <li>Výrobce</li>
        <li>Model</li>
        <li>Operační systém</li>
        <li>Velikost paměti RAM (GB)</li>
        <li>Sériové číslo</li>
        <li>Celková kapacita úložiště (GB)</li>
        <li>Uživatel (UPN)</li>
    </ul>
    <h2>
        Import informací ze Správce konfigurace</h2>
    <p>
        Konektor nevytváří nové objekty Alvao pro nová zařízení ve Správci konfigurace. Provádí <a href="../alvao-asset-management/implementation/detection">detekci HW a SW</a>. Chcete-li jej používat, naplánujte detekce pomocí <a href="../alvao-asset-management/implementation/detection/detection-way">metody detekce MS SCCM</a>.</p>

</asp:Content>
