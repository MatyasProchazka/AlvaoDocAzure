<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Evidence licencí</h1>

  <p>
  Evidence licencí slouží k evidenci všech nákupů, aktualizací a případně prodejů licencí  <p>
  Evidence licencí můžete spravovat pomocí příkazu <b>AM Console - Software - Evidence licencí</b>, který na obrazovce otevře okno <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">Evidence licencí</a> </p>




  <h2 id="media">Média</h2>

  <p>
  Evidence médií umožňuje sledovat instalační média softwaru, hardwarové klíče, uživatelské příručky atd.</p>
  <p>
  Inventář médií můžete spravovat pomocí příkazu <b>AM Console - Nástroje - Seznamy - Média</b>, který otevře okno <a href="../../list-of-windows/alvao-asset-management-console/tools/lists/media">Média</a> </p>
  <p>
  Média můžete k zakoupeným licencím přiřadit v protokolu licencí buď přímo při vytváření záznamu v průvodci na kartě <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/new-license/documents-media">Nová licence - dokumenty a média</a>, nebo při úpravě existujícího záznamu na kartě <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/media">Média</a> </p>
  <p>
  Média lze označovat podobně jako dokumenty. K označování médií můžete použít také <a href="../documents/sequences">číselné řady</a> </p>
  <p>
  V okně médií je také implementována jednoduchá funkce pronájmu. Uživatelé definovaní ve stromu objektů (ale i externí) mohou být zaregistrováni k půjčování a vracení libovolných médií. Správce systému tak má dokonalý přehled o tom, kdo si co vypůjčil, jaké je datum výpůjčky atd. Záznamy o výpůjčkách a vracení se zaznamenávají do uživatelského protokolu.  </p>

  <h2>Přehled o licencích pro více organizací</h2>
  <p>
  Pokud potřebujete samostatně evidovat licence pro více organizací (například holdingovou společnost), které jsou ve stromu objektů reprezentovány objekty typu <em>Organizace</em>, v <strong>aplikaci ALVAO WebApp - Správa - Asset Management - </strong> <a href="../../list-of-windows/alvao-webapp/administration/asset-management/software-licenses-security">Zabezpečení softwarových licencí</a>nastavte správcům licencí z jednotlivých organizací přístupová práva k <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry">Zabezpečení licencí</a></p>
  <p>
  Ve <a href="../../list-of-windows/alvao-asset-management-console/software/license-registry/edit/edit-license/general">formulářích pro vytváření a úpravy licencí</a> se tak zobrazí položka <em>Organizace</em>, kde můžete vybrat organizaci, která licenci vlastní. Pokud necháte položku prázdnou, může licenci používat jakákoli organizace (držitel licence)  </p>
  <p>
  Přidejte vlastní skupiny pro čtenáře a správce licencí jako členy skupiny <a href="../implementation/users/groups">Čtenáři vlastností objektu</a> </p>
</asp:Content>
