<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

  <h1>Kontrola hodnot</h1>

    <p>Na této stránce vyberte typy objektů, u kterých má být hodnota této vlastnosti povinná.</p>
    <p>Možnosti:</p>
    <ul>
        <li><strong>Hodnota této vlastnosti je</strong><ul>
                <li><strong>Nepovinná</strong> - vlastnost bude nepovinná ve všech objektech.</li>
                <li><strong>Povinná ve všech typech objektů</strong> - vlastnost bude povinná ve všech objektech, ve kterých je použita, bez ohledu na typ objektu.</li>
                <li><strong>Povinná v objektech těchto typů</strong> - pokud chcete, aby byla vlastnost povinná pouze v objektech určitých typů, povolte tuto možnost a v tabulce povolte typy objektů        <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Pokud je zaškrtnuto <em>nepovinné</em> nebo <em>všechny druhy</em>, pole pro výběr druhů je skryté       </div>
                    <div class="note">
                       <div class="icon"></div>
                        <div class="title">Poznámka:</div>
                        Pokud jsou některé druhy vybrány, výběr jiné možnosti odstraní všechny vybrané druhy     </div>
                </li>
            </ul>
        </li>
    </ul>
  

</asp:Content>
