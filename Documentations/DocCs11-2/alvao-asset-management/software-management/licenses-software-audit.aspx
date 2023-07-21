<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Licenční audit software</h1>
    <p>Softwarový audit je nezávislé porovnání seznamu softwaru, který je nainstalován na počítačích organizace, s licencemi na používání softwaru, které organizace vlastní. Cílem auditu je ověřit, zda je na všech počítačích v organizaci nainstalován pouze software, na který má organizace licenci, tj. zda je nainstalován pouze legálně získaný software.</p>
    <p>Nákupem licence se rozumí nákup softwaru. Termín <em>nákup softwaru</em> je srozumitelný a běžně používaný, ale není zcela přesný, protože zákazník si nekupuje software, ale pouze licenci k jeho používání. Jako doklad o nákupu licence se obvykle používá daňový doklad (faktura) nebo písemná licenční smlouva. Na dokladu o nákupu licence musí být jasně identifikován kupující a prodávající, název softwaru a rozsah a typ licence. Většina prodejců vydává obecné licenční podmínky, které specifikují typy licencí a rozsah práv kupujícího. Tyto licenční podmínky je pak vhodné použít jako doklad o nákupu licence spolu s fakturou za nákup, která musí obsahovat název produktu a typ licence.</p>
    <p>Seznam platných licencí se v průběhu času v každé organizaci mění. Na jedné straně se nakupují nové licence, na druhé straně vyprší platnost starých licencí. Stejně tak se do počítačů instalují nové programy a staré se odinstalovávají. Z tohoto důvodu se k určitému datu provádí softwarový audit, který je třeba pravidelně opakovat, aby plnil svou kontrolní funkci. Obvykle se audity provádějí jednou nebo dvakrát ročně.</p>
    <p>Proces provádění softwarového auditu vypadá následovně:</p>
    <ol>
        <li>Proveďte detekci softwaru ze všech počítačů v síti.</li>
        <li>Nalezení dokladů o zakoupených softwarových licencích a jejich zaznamenání do registru licencí.</li>
        <li>Porovnání seznamů nainstalovaného a zakoupeného softwaru.</li>
    </ol>
    <p>
    Následující části podrobně popisují jednotlivé kroky</asp:Content>
