<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Nový uživatel</h1>

  <p>Tento formulář slouží k vytvoření nového uživatele v systému Alvao.</p>
  
  <p>Možnosti:</p>
  <ul>
  <li><strong>Jméno a příjmení</strong> - zadejte jméno a příjmení uživatele.</li>
  <li><strong>Uživatelské jméno</strong> - zadejte uživatelské jméno, pod kterým se bude uživatel přihlašovat do systému Alvao.</li>
  <li><strong>Kontaktní údaje</strong><ul>
  <li><strong>Mobilní telefon</strong> - v případě potřeby zadejte číslo mobilního telefonu uživatele.</li>
  <li><strong>E-mail</strong> - v případě potřeby zadejte e-mailovou adresu uživatele.</li>
  <li><strong>E-mail 2</strong> - v případě potřeby zadejte druhý e-mail uživatele.</li>
  <li><strong>Elektronický telefon</strong> - v případě potřeby zadejte telefonní číslo uživatele.</li>
  <li><strong>Služební telefon 2</strong> - v případě potřeby zadejte druhé telefonní číslo uživatele.</li>
  <li><strong>Další kontakty</strong> - v případě potřeby zadejte další kontakty uživatele.</li>
  </ul>
  </li>
  <li><strong>Organizace</strong><ul>
  <li><strong>Organization (Organizace)</strong> - v případě potřeby zadejte organizaci nebo ji vyberte ze seznamu.</li>
  <li><strong>Oddělení</strong> - v případě potřeby zadejte oddělení uživatele.</li>
  <li><strong>Pozice</strong> - v případě potřeby zadejte funkci uživatele.</li>
  <li><strong>Office (Úřad)</strong> - v případě potřeby zadejte úřad, ve kterém uživatel pracuje.</li>
  <li><strong>Manager (Vedoucí)</strong> - v případě potřeby vyberte osobu, která je přímým nadřízeným uživatele.</li>
  <li><strong>Substitute (Zástupce)</strong> - v případě potřeby vyberte osobu, která bude uživatele zastupovat v jeho nepřítomnosti.</li>
  <li><strong>Osobní číslo</strong> - v případě potřeby zadejte osobní číslo uživatele.</li>
  </ul>
  </li>
  <li><strong>Jiné</strong> - v případě potřeby vyplňte další <a href="../../../../alvao-service-desk/implementation/custom-items">vlastní položky</a>.</li>
  <li><strong>Rozšířené</strong><ul>
  <li><strong>Preferovaný jazyk</strong> - vyberte preferovaný jazyk uživatele.</li>
  <li><strong>Časové pásmo</strong> - vyberte časové pásmo, ve kterém se mají uživateli zobrazovat časové údaje.</li>
  <li><strong>Účet je zakázán</strong> - povolte, chcete-li <a href="../../../../alvao-service-desk/implementation/users/inactive-accounts">účet zakázat</a>. Vybraný uživatel se pak nebude moci přihlašovat do aplikací Alvao.</li>
  <li><strong>Sdílený účet</strong> - povolte, pokud je účet sdílený, tj. společný účet pro skupinu žadatelů, kteří se do systému přihlašují stejným uživatelským jménem a heslem a při práci se systémem vyplňují pouze své kontaktní údaje.</li>
  <li><strong>Skrýt v nabídkách</strong> - zapněte, pokud se jedná o pomocný účet, který chcete v aplikaci skrýt. Tímto způsobem se doporučuje skrýt všechny systémové a pomocné účty, které byly <a href="../../../../alvao-asset-management/implementation/users">do systému Alvao zadány z adresáře Active Directory</a> nebo jiných zdrojů a nepředstavují skutečné uživatele systému.</li>
  <li><strong>Aplikační účet</strong> - povolte, pokud má být účet používán aplikací nebo skriptem pro přístup k <a href="../../../../modules/alvao-am-enterprise-api">rozhraní ALVAO REST API</a>. Pomocí tohoto účtu se nelze přihlásit k interaktivním aplikacím Alvao (WebApp nebo AM Console)  <ul>
  <li><strong>Aplikace AAD</strong> - vyberte, pokud se jedná o účet aplikace, která je registrována v Azure Active Directory (AAD). Aplikace se pak ověřuje k rozhraní ALVAO REST API pomocí svého tokenu AAD.  <ul>
  <li><strong>ID aplikace (klienta)</strong> - zadejte odpovídající hodnotu účtu v AAD.</li>
  <li><strong>ID adresáře (tenanta</strong> ) - zadejte odpovídající hodnotu účtu v AAD.</li>
  </ul>
  </li>
  <li><strong>Jiné aplikace</strong> - vyberte, pokud se nejedná o aplikaci AAD. Aplikace se ověřuje v rozhraní ALVAO REST API pomocí uživatelského jména a hesla.  
  </li>
  </ul>
  </li>
  </ul>
  </li>
  </ul>

</asp:Content>
