<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <h1>Šablona počítačové sestavy</h1>

    <p>Systém má standardní šablonu počítačové sestavy (Assembly object), která obsahuje počítač, monitor, klávesnici atd. Systém můžete nakonfigurovat tak, aby se objekt Sestava nepoužíval a ve stromu byly registrovány pouze počítače. V takovém případě by však nebyly vytvořeny ani monitory a tiskárny a museli byste je registrovat ručně.</p>
    <p>Pokud chcete registrovat pouze počítače, změňte šablony následujícím způsobem:</p>
    <ol>
        <li>Přetáhněte myší objekt počítače, který je uvnitř sestavy, přímo do složky Šablony objektů.</li>
        <li>Odstraňte objekt sestavy ze šablon.</li>
    </ol>

</asp:Content>
