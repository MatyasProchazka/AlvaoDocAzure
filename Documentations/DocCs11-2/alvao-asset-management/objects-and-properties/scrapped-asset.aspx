<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Registr vyřazeného majetku</h1>
    <p>Ve stromu objektů je speciální složka s názvem <em>Vyřazený majetek</em>, která slouží k evidenci vyřazeného majetku. Tato složka slouží k evidenci vyřazeného majetku, tj. majetku, který byl dříve ve firmě používán, ale nyní byl fyzicky zlikvidován. Nejedná se o sklad majetku určeného k vyřazení.</p>
    <p><em>Vlastnosti &quot;vyřazeného majetku&quot;</em></p>
    <ul>
        <li>Vyřazené počítače &quot;nepřebírají&quot; licenci</li>
        <li>zděděné počítače nelze zjistit</li>
        <li>všechny přidělené licence na počítačích budou uvolněny; výjimkou jsou OEM licence - ty budou zneplatněny - toto chování lze ovlivnit dotazem do systému.</li>
        <li>veškerý nainstalovaný software na počítačích bude označen jako odinstalovaný - toto chování lze ovlivnit dotazem na systém.</li>
        <li>nelze zobrazit nainstalovaný software</li>
    </ul>
    <p>Objekt pro vyřazené prostředky můžete přejmenovat a přesunout na libovolný objekt v inventáři. Počet takových objektů není omezen.</p>

</asp:Content>
