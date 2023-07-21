<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">





    <h1>Dopad a naléhavost</h1>


    <p>Pokud jsou ve <a href="../../../list-of-windows/alvao-webapp/administration/service-desk/service/detail/new-ticket-items">formuláři nového tiketu</a> nebo v jeho <a href="processes">průběhu</a> povoleny položky <em>Datum</em> nebo <em>Naléhavost</em>, <em>priorita</em> požadavku se automaticky nastaví podle hodnot těchto položek, viz tabulka priorit:</p>

    <table>
        <thead>
            <tr>
                <th>Pád</th>
                <th rowspan="2">Vysoká</th>
                <th rowspan="2">Střední</th>
                <th rowspan="2">Nízká</th>
            </tr>
            <tr>
                <th>Nouzové</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Vysoká</td>
                <td>kritická</td>
                <td>vysoká</td>
                <td>střední</td>
            </tr>
            <tr>
                <td>Střední</td>
                <td>vysoká</td>
                <td>střední</td>
                <td>nízká</td>
            </tr>
            <tr>
                <td>Nízká</td>
                <td>střední</td>
                <td>nízká</td>
                <td>plánování</td>
            </tr>
        </tbody>
    </table>

    <p>Prioritu lze ještě ručně <a href="../../../list-of-windows/alvao-webapp/requests/request/edit">změnit</a> na libovolnou hodnotu.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Hodnoty položky priority  <table>
      <thead>
          <tr>
              <th>Ikona</th>
              <th>Česky</th>
              <th>Angličtina</th>
          </tr>
      </thead>
      <tbody>
          <tr>
              <td><span class="ms-Icon ms-Icon--Error fabric-icon-red icon-size-medium icon-table-row-align-style"></span></td>
              <td>kritické</td>
              <td>kritický</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Up fabric-icon-red icon-size-medium icon-table-row-align-style"></span></td>
              <td>high</td>
              <td>high</td>
          </tr>
          <tr>
              <td></td>
              <td>střední</td>
              <td>střední</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Down fabric-icon-blue icon-size-medium icon-table-row-align-style"></span></td>
              <td>nízká</td>
              <td>nízká</td>
          </tr>
          <tr>
              <td><span class="ms-Icon ms-Icon--Clock icon-size-medium icon-table-row-align-style"></span></td>
              <td>plánování</td>
              <td>plánování</td>
          </tr>
      </tbody>
  </table>
    </div>


    <p>Pokud jsou navíc ve službě k dispozici SLA s indexem kvality 1 až 5, změna Impact a Urgency změní SLA také na SLA s indexem kvality podle následující tabulky:</p>

    <table>
        <thead>
            <tr>
                <th>Pád</th>
                <th rowspan="2">Vysoký</th>
                <th rowspan="2">Střední</th>
                <th rowspan="2">Nízká</th>
            </tr>
            <tr>
                <th>Naléhavé</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Vysoká</td>
                <td>5</td>
                <td>4</td>
                <td>3</td>
            </tr>
            <tr>
                <td>Střední</td>
                <td>4</td>
                <td>3</td>
                <td>2</td>
            </tr>
            <tr>
                <td>Nízká</td>
                <td>3</td>
                <td>2</td>
                <td>1</td>
            </tr>
        </tbody>
    </table>

    <p>I když je SLA nastavena podle hodnot Impact a Urgency, lze ji změnit na jinou hodnotu.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        <br />
        Pokud pro vybraného žadatele neexistuje SLA s vypočteným indexem kvality, vybere se nejbližší vyšší. Pokud neexistuje ani jedna, bude vybrána SLA s nejvyšším indexem kvality pro daného žadatele.<br />
        Pokud existuje více SLA se stejným indexem kvality, není definováno, které z nich bude vybráno    </div>

</asp:Content>