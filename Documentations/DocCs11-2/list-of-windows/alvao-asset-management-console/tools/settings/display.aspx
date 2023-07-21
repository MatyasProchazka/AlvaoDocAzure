<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Zobrazit</h1>
<p>Na této záložce můžete nastavit zobrazení v <a href="../../../../alvao-asset-management/console">AM Console</a>.</p>
<p>Možnosti:</p>
	<ul>
 <li><strong>Hlavní okno</strong><ul>
 <li><strong>Minimalizovat na ikonu na hlavním panelu systému Windows (vedle hodin</strong> ) - povolte, pokud se má program zobrazit pouze jako ikona na hlavním panelu systému Windows, když je minimalizován.</li>
 <li><strong>Minimalizovat okno po spuštění</strong> - zapněte, pokud se má program spouštět minimalizovaný na hlavním panelu.</li>
  </ul>
 </li>
 <li><strong>Záložka Software</strong><ul>
 <li><strong>Zobrazit nerozpoznané položky registru</strong>- zapněte, pokud chcete, aby se na kartě Software v <a href="../../../alvao-asset-management-console">hlavním okně</a> Konzoly AM zobrazovaly také <a href="../../../../alvao-asset-management/software-management/software-detection">zjištěné položky registru</a>počítačů, které nebyly <a href="../../../../alvao-asset-management/software-management/custom-swlib">knihovnami softwarových produktů</a>přiřazeny k žádnému produktu. Tyto položky slouží jako informace o tom, že je třeba aktualizovat knihovnu softwarových produktů.</li>
  </ul>
 </li>
 <li><strong>Strom objektů</strong><ul>
 <li><strong>Zobrazit skryté objekty</strong> - povolte zobrazení skrytých objektů ve <a href="../../object-tree">stromu objektů</a>. Tuto možnost lze také zapnout/vypnout pomocí příkazu v hlavní nabídce <a href="../../view">Zobrazit</a> - Skryté objekty. Pokud je možnost Použít oprávnění ve stromu objektů (WebApp - Administration - Asset Management - <a href="../../../alvao-webapp/administration/asset-management/settings/general">Settings</a>) vypnutá, zobrazí se možnost Zobrazit skryté objekty pouze členům skupiny <a href="../../../../alvao-asset-management/implementation/users/groups">Asset Management administrátorů</a>.</li>
  </ul>
 </li>

	</ul>
</asp:Content>
