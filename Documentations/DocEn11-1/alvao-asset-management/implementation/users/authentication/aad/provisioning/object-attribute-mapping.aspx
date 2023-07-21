<%@ Page masterpagefile="~/doc.master" language="C#" title="(will be set by sitemap)" %>
<asp:Content id="Content1" runat="server" contentplaceholderid="MainContentPlaceHolder">

  <h1>Mapping SCIM attributes to object properties</h1>
  <p>In Alvao, the following <a href="../../../../../../alvao-asset-management/objects-and-properties">properties</a> of objects are synchronized via the SCIM protocol:</p>
  <table>
  <thead>
  <tr>
  <th><em>Object property</em></th>
  <th><em>Attribute in SCIM</em></th>
  </tr>
  </thead>
  <tbody>
  <tr>
  <td>User</td>
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
  <td>Phone</td>
  <td>phoneNumbers[type eq "work"].value</td>
  </tr>
  <tr>
  <td>Mobile</td>
  <td>phoneNumbers[type eq "mobile"].value</td>
  </tr>
  <tr>
  <td>Division</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:department</td>
  </tr>
  <tr>
  <td>Functions</td>
  <td>title</td>
  </tr>
  <tr>
  <td>City</td>
  <td>addresses[type eq "work"].locality</td>
  </tr>
  <tr>
  <td>Land</td>
  <td>addresses[type eq "work"].region</td>
  </tr>
  <tr>
  <td>Company</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:organization</td>
  </tr>
  <tr>
  <td>Street</td>
  <td>addresses[type eq "work"].streetAddress</td>
  </tr>
  <tr>
  <td>District</td>
  <td>addresses[type eq "work"].country</td>
  </tr>
  <tr>
  <td>CT</td>
  <td>addresses[type eq "work"].postalCode</td>
  </tr>
  <tr>
  <td>Home phone</td>
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
  <td>Account is blocked</td>
  <td>Active (negated value)</td>
  </tr>
  <tr>
  <td>Personal number</td>
  <td>urn:ietf:params:scim:schemas:extension:enterprise:2.0:User:employeeNumber</td>
  </tr>
  <tr>
  <td>(tblNode.txtLDAPGUID)</td>
  <td>externalId</td>
  </tr>
  </tbody>
  </table>

  <h2>Mapping attributes in AAD to object properties</h2>
  <p>If you want to import attributes from AAD to custom user properties in the object tree, follow the same steps as for <a href="../../../../../../alvao-asset-management/implementation/users/authentication/aad/provisioning/person-attribute-mapping">mapping to custom user entries</a>, except that for each property, create a new attribute with a name of the form <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tblProperty:2.0:User:kindId_{propertyID}</span>.</p>
  <div class="note">
	  <div class="icon"></div>
	  <div class="title">Note:</div>
	  The property ID corresponds to the value of the intKindId attribute in the tblKind table.</div>
  <p>Example: To import values into a property with kindId = 9, create an attribute named <span class="console">urn:ietf:params:scim:schemas:extension:alvao_tblProperty:2.0:User:kindId_9</span></p>

  


</asp:Content>
