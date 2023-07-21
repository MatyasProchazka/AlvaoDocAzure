<%@ Page MasterPageFile="~/doc.master" Language="C#" Title="(will be set by sitemap)" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">

    <h1>Testovací prostředí</h1>

    <p>Testovací prostředí slouží k:</p>
    <ul>
        <li>testování nové verze Alvao před aktualizací produkčního prostředí;</li>
        <li>testování softwarových rozšíření před jejich nasazením do produkčního prostředí.</li>
    </ul>
    <h2>Vytvoření testovacího prostředí</h2>
    <p>Testovací prostředí se doporučuje vytvořit zkopírováním produkčního prostředí.</p>


    <ol>
        <li>Na produkčním serveru Alvao ("živém" aplikačním serveru) zastavte služby Alvao Service a Collector a nastavte jejich režim spouštění na <em>Handheld</em>       </li>
        <li>Vytvořte klon serveru Alvao s jiným názvem       <ul>
                <li>Vytvořte klon serveru.</li>
                <li>Odpojte server od sítě.</li>
                <li>Přihlaste se bez připojení k síti jako místní správce.</li>
                <li>Pomocí nástroje sysprep odstraňte stávající identifikátor SID a vygenerujte nový identifikátor SID.</li>
                <li>Změňte název serveru.</li>
                <li>Připojte server k síti.</li>
                <li>Připojte server k doméně.</li>
            </ul>
        </li>
        <li>Na produkčním serveru restartujte služby a nastavte jejich režim spouštění na <em>Automaticky.</em></li>
        <li>Vytvořte kopii živé databáze (včetně oprávnění) nebo novou testovací databázi.</li>
        <li>Vytvořte testovací načtený e-mail, např. servicedesk-test@firma. <em>cz </em>(volitelné).</li>
        <li>Upravte nastavení testovacího stroje      <ul>
                <li>V souborech <em>Web.config</em> v části <em>connectionStrings</em> nastavte správné připojení k databázi         <ul>
                          <li>WebApp </li>
                          <li>AM WS</li>
                      </ul>
                </li>
                <li>Nastavte správné připojení k databázi také pro <a href="../alvao-service-desk/implementation/installation/alvao-service-settings">službu ALVAO (AS</a>) - (typicky C:\Program Files(x86)\ALVAO\AlvaoService\appsettings.json).</li>
                <li>Otevřete ALVAO Collector jako aplikaci (nejprve musíte zastavit službu ALVAO Collector) a nastavte připojení na D k novému SQL serveru. <b>Akce - Nastavení - Obecné - Nastavit připojení - Přidat další - .</b>.  <ul>
                        <li>Pokud pak Collector začne kontrolovat SW knihovnu a zpracovávat frontu požadavků na detekci, můžete jej ukončit. </li>
                    </ul>
                </li>
                <li>Pokud chcete zjišťování počítačů používat i v testovacím prostředí, spusťte službu Collector.<br />
                    Pokud chcete používat načítání testovací schránky a odesílání e-mailů z testovacího SD, spusťte službu Alvao Service. V opačném případě službu zakažte        <ul>
                        <li>Zkontrolujte protokol událostí (události aplikace), zda AS generuje nějaké chyby a zda načítá e-maily (nejlépe otestujte odesláním e-mailu do načtené schránky).</li>
                    </ul>
                </li>
                <li>Nastavení ve Správě webových aplikací         <ul>
                        <li>Cesta k testování AM WS</li>
                        <li>Cesta k testovací webové aplikaci</li>
                        <li>Servery (Test Collector)</li>
                        <li>Server SMTP (někdy zůstává stejný)        <div class="note">
                                <div class="icon"></div>
                                <div class="title">Poznámka: V nastavení SMTP serveru<em>(WebApp - Správa - Nastavení - Zprávy</em>) doporučujeme přejmenovat adresu odesílatele zprávy tak, aby obsahovala slovo <em>test</em>. </div>
                            </div>
                        </li>
                        <li>Čtení zpráv ze servisních schránek - smazat/přenastavit na testovací schránku.  
                            <div class="caution">
                               <div class="icon"></div>
                                <div class="title">Upozornění: </div>
                                Vynecháním tohoto bodu hrozí, že testovací prostředí bude načítat zprávy z produkční schránky.  
                            </div>
                        </li>
                        <li>E-mailové služby <em>TEST ServiceDesk servicedesk-test@firma.cz</em></li>
                        <li>(hromadně změňte předponu služby na "TEST")</li>
                    </ul>
                </li>
                <li>DB SQL   <ul>
                      <li>Odstranění e-mailových adres všech uživatelů (kromě testovacích uživatelů)            <br />
                         <b>UPDATE tPerson SET sPersonEmail = NULL</b>   </li>
                      <li>Smažte obsah tabulky MailMessage (jinak by se některé e-maily/oznámení odeslaly (podruhé):<br />
                         <b>DELETE FROM MailMessage</b>          </li>
                    </ul>
                </li>
                <li>Na testovacím počítači spusťte <i>službu Alvao</i> a případně služby <i>Collector</i>.</li>
            </ul>
        </li>
        <li>Otestujte funkčnost všech komponent.</li>
    </ol>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="HeadContentPlaceHolder">
</asp:Content>

