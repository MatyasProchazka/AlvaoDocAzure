<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Oznámení</h1>
  <p>Na této stránce můžete nastavit automatická oznámení o výskytu a průběhu požadavků. Jedná se o <a href="../../../../../alvao-service-desk/implementation/services/notifications">společné nastavení pro všechny služby</a>,<span class="style1"> které se používá pouze v případě, že služba nemá </span><a href="../service/notification"> vlastní nastavení oznámení</a>.</p>
	
	<p>Možnosti: V nabídce je možné nastavit, zda se má oznámení odesílat, nebo ne:</p>
  <ul>
 <li><strong>Oznámení pro řešitele</strong></li>
 <li><strong>Oznámení žadateli</strong></li>
  
  <p>Další informace o typech oznámení naleznete v části <a href="../../../../../alvao-service-desk/implementation/services/notifications">Oznámení</a>.</p>
 </ul>

<ul>
 <li>
 
 <a href="notification-style">Styly oznámení</a>- nastavení stylu oznámení</li>
 </ul>
	
	
	</asp:Content>
<asp:Content id="Content1" runat="server" contentplaceholderid="HeadContentPlaceHolder">

  <style type="text/css">
.style1 { color: #525252;}</style>

</asp:Content>

