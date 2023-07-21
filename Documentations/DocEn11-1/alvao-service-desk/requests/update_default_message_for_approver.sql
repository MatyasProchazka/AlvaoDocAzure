declare @DefaultMessageForApprover_cs nvarchar(max) = 
N'Dobrý den,

[$TicketRequesterName$] podal/a tuto žádost:
<b>[$OriginalMessageSubject$]</b>
[$OriginalMessage$]

<b>Komentář pro schvalovatele:</b>
[$CommentForApprover$]

[$ApprovalByForm$]
Rozhodněte nejpozději do termínu: [$ApprovalStepExpirationTime$]
Schvalovatelé: [$ApprovalStepCurrentApprovers$]
Po schválení bude zahájena realizace žádosti.
Více informací najdete v požadavku [$TicketMessageTagLink$], kde žádost můžete také schválit.'

declare @DefaultMessageForApprover_de nvarchar(max) = 
N'Guten Tag,

[$TicketRequesterName$] hat folgenden Antrag gestellt:
<b>[$OriginalMessageSubject$]</b>
[$OriginalMessage$]

<b>Kommentar für den Genehmiger:</b>
[$CommentForApprover$]

[$ApprovalByForm$]
Entscheiden Sie spätestens bis zu: [$ApprovalStepExpirationTime$]
Genehmiger: [$ApprovalStepCurrentApprovers$]
Nach der Genehmigung wird mit der Umsetzung des Antrags begonnen.
Weitere Informationen finden Sie in der Anfrage [$TicketMessageTagLink$], wo Sie den Antrag ebenfalls genehmigen können.'

declare @DefaultMessageForApprover_en nvarchar(max) = 
N'Hello,

[$TicketRequesterName$] submitted this matter:
<b>[$OriginalMessageSubject$]</b>
[$OriginalMessage$]

<b>Comment for the approver:</b>
[$CommentForApprover$]

[$ApprovalByForm$]
Decide at the latest by: [$ApprovalStepExpirationTime$]
Approvers: [$ApprovalStepCurrentApprovers$]
Once approved, the matter realization will be initiated.
For more information, see the request [$TicketMessageTagLink$], where you can also approve the matter.'

declare @DefaultMessageForApprover_pl nvarchar(max) = 
N'Dobrý den,

[$TicketRequesterName$] podal/a tuto žádost:
<b>[$OriginalMessageSubject$]</b>
[$OriginalMessage$]

<b>Komentář pro schvalovatele:</b>
[$CommentForApprover$]

[$ApprovalByForm$]
Rozhodněte nejpozději do termínu: [$ApprovalStepExpirationTime$]
Schvalovatelé: [$ApprovalStepCurrentApprovers$]
Po schválení bude zahájena realizace žádosti.
Více informací najdete v požadavku [$TicketMessageTagLink$], kde žádost můžete také schválit.'

declare @DefaultMessageForApprover_sk nvarchar(max) = 
N'Dobrý deň,

[$TicketRequesterName$] podal/a túto žiadosť:
<b>[$OriginalMessageSubject$]</b>
[$OriginalMessage$]

<b>Komentár pre schvaľovateľa:</b>
[$CommentForApprover$]

[$ApprovalByForm$]
Rozhodnite najneskôr do termínu: [$ApprovalStepExpirationTime$]
Schvalovatelia: [$ApprovalStepCurrentApprovers$]
Po schválení bude zahájená realizácia žiadosti.
Viac informácií nájdete v požiadavke [$TicketMessageTagLink$], kde žiadosť môžete taktiež schváliť.'

----------------------------------------------------------

declare @SystemLocaleId  int = (select iDbLocaleId from tDb)
declare @DefaultMessageForApprover_system nvarchar(max)

if (@SystemLocaleId = 1029)
	begin
		set @DefaultMessageForApprover_system = @DefaultMessageForApprover_cs
	end
else if (@SystemLocaleId = 1031)
	begin
		set @DefaultMessageForApprover_system = @DefaultMessageForApprover_de
	end
else if (@SystemLocaleId = 1033)
	begin
		set @DefaultMessageForApprover_system = @DefaultMessageForApprover_en
	end
else if (@SystemLocaleId = 1045)
	begin
		set @DefaultMessageForApprover_system = @DefaultMessageForApprover_pl
	end
else if (@SystemLocaleId = 1051)
	begin
		set @DefaultMessageForApprover_system = @DefaultMessageForApprover_sk
	end

update tString set mString = @DefaultMessageForApprover_system where iStringId = 72

update tLocalization
set mLocalization=@DefaultMessageForApprover_cs
where sTable='tString' and sAttribute=N'mString' and iRecordId=72 and iLocaleId=1029

update tLocalization
set mLocalization=@DefaultMessageForApprover_de
where sTable='tString' and sAttribute=N'mString' and iRecordId=72 and iLocaleId=1031
update tLocalization
set mLocalization=@DefaultMessageForApprover_en
where sTable='tString' and sAttribute=N'mString' and iRecordId=72 and iLocaleId=1033
update tLocalization
set mLocalization=@DefaultMessageForApprover_pl
where sTable='tString' and sAttribute=N'mString' and iRecordId=72 and iLocaleId=1045
update tLocalization
set mLocalization=@DefaultMessageForApprover_sk
where sTable='tString' and sAttribute=N'mString' and iRecordId=72 and iLocaleId=1051

exec spRebuildLocalizationCache;
