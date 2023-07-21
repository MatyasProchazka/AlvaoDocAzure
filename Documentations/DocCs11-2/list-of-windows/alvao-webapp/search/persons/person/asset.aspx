<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Majetek</h1>
<p>Tato stránka zobrazuje informace o jednom svěřeném majetku. </p>


 
<p>Možnosti:</p>
<ul>
	
  <li>Příkazový panel<ul>
      <li><strong>Zobrazit ve stromu</strong> - přejít na stránku <a href="../../../objects/object">Objekt</a> představující daný objekt. Tento příkaz je dostupný pouze oprávněným uživatelům.</li>
      </ul>
    </li>
    <li>Ikona objektu, jeho typ a název</li>
  <li><strong>Submit new request (Podat nový požadavek</strong> ) - vyberte službu, které chcete podat nový požadavek související s objektem.</li>
  <li>Záložky<ul>
  <li><b>Vlastnosti</b> - seznam vlastností objektů</li>
  <li><b>Software</b> - přehled softwaru, který je v počítači nainstalován. Karta se zobrazuje pouze u objektů typu počítač. Uživatelé, kteří jsou odpovědní za software v počítači (viz vlastnost <i>Software Responsible</i> ), na kartě vidí také informace o příslušných softwarových licencích.</li>
  </ul>
  </li>
</ul>
  

</asp:Content>
