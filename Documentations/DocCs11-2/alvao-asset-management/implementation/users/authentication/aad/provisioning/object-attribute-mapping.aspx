<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

  <h1>Mapování atributů SCIM na vlastnosti objektu</h1>
  <p>V systému Alvao jsou prostřednictvím protokolu SCIM synchronizovány následující <a href="../../../../../../alvao-asset-management/objects-and-properties">vlastnosti</a> objektů:</p>
  <table>
  <thead>
  <tr>
  <th><em>Vlastnost objektu</em></th>
  <th><em>Atribut v SCIM</em></th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>Uživatel</td>
  <td>displayName</td>
  </tr>
  <tr>
  <td>UserName</td>
  <td>userName</td>
  </tr>
  <tr>
  <td>E-mail</td>
  <td>emails[type eq "work"].value</td>
  </tr>
  <tr>
  <td>Telefon</td>
  <td>phoneNumbers[type eq "work"].value</td>
  </tr>
  <tr>
  <td>Mobilní telefon</td>
  <td>phoneNumbers[type eq "mobile"].value</td>
  </tr>
  <tr>
  <td>Divize</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:department</td>
  </tr>
  <tr>
  <td>Funkce</td>
  <td>title</td>
  </tr>
  <tr>
  <td>Město</td>
  <td>addresses[type eq "work"].locality</td>
  </tr>
  <tr>
  <td>Pozemek</td>
  <td>addresses[type eq "work"].region</td>
  </tr>
  <tr>
  <td>Společnost</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:organization</td>
  </tr>
  <tr>
  <td>Ulice</td>
  <td>addresses[type eq "work"].streetAddress</td>
  </tr>
  <tr>
  <td>Okres</td>
  <td>addresses[type eq "work"].country</td>
  </tr>
  <tr>
  <td>CT</td>
  <td>addresses[type eq "work"].postalCode</td>
  </tr>
  <tr>
  <td>Telefon domů</td>
  <td>phoneNumbers[type eq "home"].value</td>
  </tr>
  <tr>
  <td>Pager</td>
  <td>phoneNumbers[type eq "pager"].value</td>
  </tr>
  <tr>
  <td>Fax</td>
  <td>phoneNumbers[type eq "fax"].value</td>
  </tr>
  <tr>
  <td>Účet je zablokován</td>
  <td>Aktivní (negovaná hodnota)</td>
  </tr>
  <tr>
  <td>Osobní číslo</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber</td>
  </tr>
  <tr>
  <td>(tblNode.txtLDAPGUID)</td>
  <td>externalId</td>
  </tr>
  </tbody>
  </table>

  <h2>Mapování atributů v AAD na vlastnosti objektu</h2>
  <p>Pokud chcete importovat atributy z AAD do vlastních vlastností uživatelů ve stromu objektů, postupujte stejně jako při <a href="../../../../../../alvao-asset-management/implementation/users/authentication/aad/provisioning/person-attribute-mapping">mapování do vlastních polí uživatelů</a> s tím rozdílem, že pro každou vlastnost vytvořte nový atribut s názvem ve tvaru <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tblProperty:2.0:User:kindId_{propertyID}</span>.</p>
  <div class="note">
	 <div class="icon"></div>
	  <div class="title">Poznámka:</div>
	  ID vlastnosti odpovídá hodnotě atributu intKindId v tabulce tblKind.</div>
  <p>Příklad: Chcete-li importovat hodnoty do vlastnosti s kindId = 9, vytvořte atribut s názvem <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tblProperty:2.0:User:kindId_9</span></p>

  


</asp:Content>
