<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Provozní doba</h1>
 <p>Tato stránka, resp. panel, zobrazuje informace o vybraných <a href="../../../../../alvao-service-desk/implementation/services/operating-hours">provozních hodinách</a>. Údaje zobrazené v jednotlivých blocích můžete upravovat pomocí příkazu <em>Upravit</em> v daném bloku.</p>
  
  <p>Volby: 1. Vyberte možnost Provozní doba. 2. Vyberte možnost Provozní doba:</p>
  <ul>
  <li><strong>Příkazový panel</strong><ul>
  <li><strong>Odstranit</strong> - odstranění provozních hodin.</li>
  </ul>
  </li>
  <li>Blok<ul>
  <li><strong>Název</strong> - <a href="detail/edit">obecné</a> informace o provozní době</li>
  <li><a href="detail/working-hours">Provozní doba</a> - pravidelné intervaly provozní doby</li>
  <li><a href="detail/exceptions-operating-hours">Výjimky z provozní doby</a> - výjimky z pravidelných intervalů provozní doby</li>
   </ul>
  </li>
	</ul>

</asp:Content>
