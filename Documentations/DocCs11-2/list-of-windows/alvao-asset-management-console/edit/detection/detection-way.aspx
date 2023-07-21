<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Způsob detekce</h1>
  <p>
  Na této kartě můžete vybrat <a href="../../../../alvao-asset-management/implementation/detection">metodu detekce</a> a v případě potřeby zadat další nastavení vybrané metody.  </p>
  <p>Možnosti:</p>
  <ul>
  <li><strong>Způsob detekce</strong> - v nabídce vyberte způsob detekce počítače. <a href="../../../../alvao-asset-management/implementation/detection/detection-way">Zde</a> jsou popsány způsoby detekce.</li>
  <li><strong>Číslo portu agenta</strong> - zadejte číslo portu pro datovou komunikaci TCP/IP s agentem, pokud používáte detekci: <strong>Agent přes TCP/IP</strong>.</li>
  

  </ul>
  <div class="tip">
 <div class="icon"></div>
  <div class="title">Tip:</div>
  Ve správě nastavíte globální nastavení detekce, které ve výchozím nastavení detekuje všechny počítače.<br />
  V konzole pro správu prostředků můžete nastavit vlastní nastavení detekce pro konkrétní počítače a změnit tam metodu detekce.  </div>


</asp:Content>
