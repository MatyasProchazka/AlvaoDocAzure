<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Název nového počítače</h1>
	<p>V tomto okně můžete změnit název počítače v síti. Počítač, jehož název měníte, je označen ve <a href="object-tree">stromu objektů</a>.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud změníte název počítače v síti, změňte také název počítače v evidenci majetku.</div>
	<p>Volby: Vyberte počítač, který chcete používat:</p>
	<ul>
	<li><strong>Nový název počítače</strong> - zadejte nový (nebo upravte) název počítače.</li>
	</ul>
	<div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka: V případě, že se jedná o počítač, který se nachází v počítači, zadejte název počítače:</div>
 Tato položka slouží k dálkovému zjištění hardware a softwaru počítače v síti.</div>
	
</asp:Content>
