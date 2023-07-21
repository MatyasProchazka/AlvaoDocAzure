<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContentPlaceHolder">
   <h1 translate="no">Software Asset Management</h1>

    <p>Téma čistoty licencí je popsáno v části dokumentace produktu ALVAO Asset Management nazvané <a href="../alvao-asset-management/software-management">Správa softwaru</a>.</p>
    <h2>Příklad interní směrnice</h2>
    Interní směrnice týkající se této problematiky by měla obsahovat následující informace:<h3>Software a licence</h3>
    <ol>
        <li>Uživatel IT nesmí používat software způsobem, který není v souladu s licenčními podmínkami pro daný typ softwaru (např. instalace nelegálního softwaru, kopírování, šíření nebo úprava softwaru).</li>
        <li>Každý počítač má správce softwaru, který je zodpovědný za legálnost softwaru v počítači. Pokud má uživatel počítače (tj. uživatel, kterému je počítač svěřen do užívání) povolena práva k instalaci softwaru, je správcem softwaru v počítači uživatel počítače. V opačném případě je správcem softwaru určený interní pracovník IT.</li>
        <li>Licence na software jsou registrovány v interním systému správy majetku ALVAO. Registraci licencí zajišťuje interní oddělení IT.</li>
        <li>Software nainstalovaný na firemních počítačích je automaticky inventarizován nejméně jednou ročně.</li>
        <li>Pokud oddělení IT při inventarizaci zjistí závažné porušení licenčních podmínek některého softwaru, neprodleně vyzve správce softwaru daného počítače, aby přijal nápravná opatření. Po odstranění problému může správce počítače zkontrolovat výsledek poslední inventury na adrese https://server/asset.</li>
        <li>Inventura softwaru v daném počítači se provádí automaticky každých 24 hodin po zjištění problému. Po 1 měsíci se provede automatická kontrola stavu. Pokud problém s produktem stále není odstraněn, je správci softwaru počítače opět zaslána výzva. Tato druhá výzva je rovněž zkopírována přímému nadřízenému správce softwaru. Je také zaznamenána v interním Service Desku jako úkol k vyřešení.</li>
    </ol>


</asp:Content>
