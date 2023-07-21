<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Překročení licence ALVAO Asset Management</h1>

    <p>Pokud je ve stromu objektů více počítačů, než na kolik je systém licencován, dojde k omezení funkčnosti systému. Odstraňte nadbytečné počítače z inventáře nebo zadejte aktivační klíč s větší licencí, kterou získáte od dodavatele systému Alvao.</p>

    <div class="tip">
       <div class="icon"></div>
        <div class="title">Tip: V případě, že je systém Alvao vybaven systémem Alvao, můžete jej použít k nastavení systému Alvao:</div>
        Po odstranění počítačů spusťte znovu konzolu AM nebo použijte příkaz Nápověda - Informace o programu, abyste překontrolovali licenci a v případě potřeby obnovili zablokovanou funkčnost    </div>

    <p>Omezení funkčnosti se vztahuje pouze na naposledy přidané počítače, které přesahují licenci. U počítačů, které byly do registru přidány před vyčerpáním licence, bude funkčnost plně zachována.</p>

    <p>U počítačů, které překročily licenci, se neprovádí detekce hardware a software, ani nelze do systému načíst ruční detekce. Tyto počítače se nezobrazují ani nezapočítávají v okně Přehled licencí a instalací ani na kartě Software pro organizační složku.</p>

    <div class="note">
       <div class="icon"></div>
        <div class="title">Poznámka:</div>
        Počítače ve složkách Vyřazené prostředky, Koš, Šablony objektů a Vzory objektů nejsou do licence zahrnuty    </div>

</asp:Content>
