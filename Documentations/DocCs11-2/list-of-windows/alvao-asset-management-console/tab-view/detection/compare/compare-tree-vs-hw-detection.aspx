<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Detekce hardware vs. strom</h1>
	<ul>
 <li><strong>Seznam rozdílů</strong> - seznam zobrazuje rozdíly mezi daty pořízenými detekcí a daty ve <a href="../../../object-tree">stromu objektů</a>.</li>
 <li><strong>Zápis změn do stromu</strong> - provede aktualizace počítačových objektů ve stromu podle dat detekce. Aktualizace se provádí pouze u objektů, které mají povolenou automatickou aktualizaci.  <p><strong>Aktualizujte objekty ve stromu podle následujících pravidel:</strong></p>
  <table>
 <thead>
 <tr>
 <td>Podmínka</td>
 <td>Akce</td>
 </tr>
 </thead>
 <tbody>
 <tr>
 <td>Je zjištěno zařízení, které nemá odpovídající objekt ve stromu objektů počítače</td>
 <td>Vytvoření nového objektu ve stromu počítače na základě detekovaného zařízení</td>
 </tr>
 <tr>
 <td>Ve stromu objektů počítače je objekt, který nemá odpovídající zařízení v detekci</td>
 <td>Přesunutí objektu ze stromu počítače do objektu Koš</td>
 </tr>
 <tr>
 <td>Ve stromu objektů počítače se nachází objekt, který má v detekci shodné zařízení, ale liší se v některých vlastnostech</td>
 <td>Aktualizace vlastností objektu ve stromu počítačových objektů podle zařízení v detekci</td>
 </tr>
 </tbody>
  </table>
  
 </li>
 <li><strong>Najít odpovídající počítač</strong> - Pokud je některá z položek v seznamu rozdílů: <ul>
 <li>Evidence nebyla aktualizována podle detekce, protože některé detekované součásti jsou již v jiném počítači v inventáři. Je možné, že počítač byl v síti přejmenován. Použijte příkazy <em>Najít shodný počítač</em> a <em>Porovnat s inventářem</em> na kartě <b>Detekce</b>.</li>
 <li>Důkazy nebyly aktualizovány podle detekce hardware, protože se změnily základní součásti počítače. Je možné, že počítač byl v síti přejmenován. Použijte příkazy <em>Najít odpovídající počítač</em> a <em>Porovnat s evidencí</em> na kartě <b>Detekce</b>.</li>
 </ul>
  <p>Pomocí této funkce vyhledejte počítače, ke kterým tyto zjištěné součásti správně patří.</p>
  <p>Identifikační součásti počítače nastavíte ve <a href="../../../../../alvao-asset-management/software-management">Správě správy aktiv</a>.</p>
  <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div>
 Případy, kdy se identifikační informace mezi počítačem a detekcí neshodují, nastanou, když:<ul>
 <li>vyměníte některou ze základních součástí počítače a tato akce není zaznamenána v protokolu</li>
 <li>přejmenujete počítače v síti a tato akce není zaznamenána v protokolu</li>
 <li>některé identifikační informace počítače nejsou jedinečné. V takovém případě nelze danou součást použít jako identifikátor a je nutné ji odstranit ze seznamu identifikátorů.</li>
 <li>u sériového čísla základní desky ignorujte hodnoty &quot;MB-1234567890&quot; a &quot;00000000&quot;.</li>
 </ul>
  </div>
  </li>
 <li><strong>Automatická aktualizace</strong><ul>
 <li>Povolit - povolí automatickou aktualizaci vybraného objektu v seznamu změn.</li>
 <li>Disable (Zakázat) - zakáže automatickou aktualizaci vybraného objektu v seznamu změn.</li>
  </ul>
 </li>
	</ul>
</asp:Content>
