<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">


  <h1>Připojení čtečky k počítači</h1>
  <p>Abyste mohli kopírovat soubory do čtečky, musíte ji nejprve připojit k počítači.</p>
  <ol>
  <li>Ujistěte se, že máte v systému Windows nainstalovanou aplikaci "Windows Mobile Device Center" (Centrum mobilních zařízení Microsoft Windows).</li>
  <li>Pokud není nainstalován, <a href="https://www.google.com/search?q=%22Microsoft+Windows+Mobile+Device+Center%22+download">stáhněte si jej</a> a nainstalujte.</li>
  <li>Připojte čtečku k počítači pomocí kabelu USB.</li>
  <li>Zobrazí se okno "Windows Mobile Device Center" a vyberte možnost "Connect without setting up a device" (Připojit bez nastavení zařízení)<br />
  Poznámka: Pokud máte v počítači operační systém Windows 10 a po připojení čtečky kabelem se "Centrum mobilních zařízení Windows" nezobrazí <ol>
  <li type="a">Odpojte kabel se čtečkou od počítače.</li>
  <li type="a">Spusťte příkazový řádek jako správce a v něm následující příkazy:<br />
 <pre translate="no" style="margin-top: 5px; margin-bottom: 5px;">
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\RapiMgr /v SvcHostSplitDisable /t REG_DWORD /d 1 /f
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\WcesComm /v SvcHostSplitDisable /t REG_DWORD /d 1 /f</pre>
  <p style="margin-top: 5px; margin-bottom: 5px;">
  Poznámka: po spuštění příkazů se musí zobrazit následující informace: <i>Operace byla úspěšně dokončena</i></p>
  </li>
  <li type="a">Restartujte počítač.</li>
  <li type="a">Po spuštění systému Windows znovu připojte čtečku k počítači pomocí kabelu USB.</li>
  </ol>
  </li>
  </ol>
</asp:Content>
