<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

<h1>Identifikovatelné součásti</h1>
<p>V tabulce jsou uvedeny <a href="../../../../../alvao-asset-management/implementation/detection">detekované</a> identifikační komponenty počítače a jim odpovídající objekty nalezené v protokolu.<br/>Pokud je objekt odpovídající detekované komponentě nalezen ve stromu objektů jiného počítače, zobrazí se před záznamem varovná ikona. Tento stav znamená, že komponenta byla přesunuta do jiného počítače a tato operace nebyla zaznamenána v protokolu.</p>
	<div class="caution">
 <div class="icon"></div>
 <div class="title">Upozornění:</div>
 Pokud vyměňujete komponenty počítače, které slouží jako identifikace, zaznamenejte do záznamů také příslušné operace. Vyhnete se tak pozdějším komplikacím při detekci.</div>
	<ul>
 <li>
<a href="compare-tree-vs-hw-detection">Podrobnosti</a> - zobrazí podrobnosti o rozdílech mezi detekcí a počítačem vybraným v seznamu.</li>
 <li><strong>Přesunout detekci na počítač</strong> - přesune detekci na počítač vybraný v tabulce. <div class="note">
 <div class="icon"></div>
 <div class="title">Poznámka:</div><br/>
 Tuto funkci využijete zejména v případě, že přejmenujete počítač v síti a zapomenete tuto akci zaznamenat. Vzhledem k tomu, že počítače jsou detekovány na základě názvu počítače v síti, nastane situace, kdy provedená detekce neodpovídá počítači v záznamech. Přesuňte zjištění na správný počítač a přejmenujte počítače v evidenci tak, aby jejich názvy odpovídaly skutečnému stavu sítě. Použijte příkaz <strong>Přejmenovat počítač</strong> z kontextové nabídky na objektu počítače ve <a href="../../object-tree">stromu objektů</a></div></li>
 <li><a href="settings">Nastavení</a> - upravte nastavení identifikovatelných komponent pro detekci.</li>
 <li><strong>Detekce je přiřazena počítači</strong> - zobrazí počítač, kterému je detekce přiřazena.</li>
 <li>
<a href="compare-tree-vs-hw-detection">Podrobnosti</a> - zobrazení podrobností o rozdílech mezi detekcí a přiřazeným počítačem v protokolu.</li>
	</ul>

</asp:Content>
