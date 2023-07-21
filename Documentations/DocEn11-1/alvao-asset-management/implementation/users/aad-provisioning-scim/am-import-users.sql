/*
This script creates new users from WebApp (Administrtion) in the AM object tree in the "Objects loaded from Active Directory" folder (if it does not exist, it will be created in the root of the tree).

Synchronized properties:
WA - Administration		AM					AM - intKindCode
---------------------------------------------------------
Name					User				5
User name				User name			54
E-mail					E-mail				46
Work phone				Phone				44
Personal number			Personal number		74
Mobile phone			Mobile phone		107
Department				Department			39
Position				Position			108
Office					Office				75
Organization			Company				112
City					City				109
Country					Country				111
tPerson.AzureAdObjectId	tblNode.txtLDAPGUID	-

Users are paired by the user name.
Only users who are not deleted, hidden, blocked and have a user name filled in are synchronized.
Only those properties that are contained in the User object template are synchronized.
*/

SET ANSI_NULLS, QUOTED_IDENTIFIER ON;

BEGIN TRANSACTION
BEGIN TRY
	set nocount on;

	declare @LoadedObjectsFolderId int = (select top 1 intNodeId from vNodeClass where lintClassId = 34 and bolHidden = 0 and bolScrapped = 0)
	if @LoadedObjectsFolderId is null
	begin
		insert into tblNode(lintParentId, lintIconId, intState, txtName, txtPath, bolHidden, lintClassId, bolAutoUpdate, bolIgnoreDifferences)
		select top 1 null, i.intIconId, 0, d.txtText, N'', 0, 34, 0, 0
		from tblIcon i
		join tblDict d on d.lintClassId=34
		where i.uid = 107

		select @LoadedObjectsFolderId = cast(scope_Identity() as int)

		insert into tblNodeParent select @LoadedObjectsFolderId, @LoadedObjectsFolderId
	end

	declare @propChangeLogText nvarchar(255) = (select txtText from tblDict where lintPropEditMsgId = 1)
	declare @systemPersonId int = (select top 1 iPersonId from tPerson where bPersonSystem = 1)
	declare @userClassId int = 7;

	select P.iPersonId, P.sPerson, P.sPersonLogin, P.sPersonEmail, P.sPersonPhone, P.sPersonPersonalNumber, P.sPersonMobile, P.sPersonDepartment, P.sPersonWorkPosition, P.sPersonOffice, A.sAccount, P.sPersonCity, P.sPersonCountry, P.AzureAdObjectId
	into #Users
	from tPerson P
	left join tAccount A on A.iAccountId = P.liAccountId
	where P.dPersonRemoved is null and P.bHidden = 0 and P.bPersonAccountDisabled = 0 and P.sPersonLogin is not null
		and not exists (
			select 1 
			from vPropertyKind pk 
			inner join vNodeClass n on pk.lintNodeId = n.intNodeId 
			where intKindCode = 54 and txtValue = P.sPersonLogin and n.bolHidden = 0 and n.bolScrapped = 0 and n.lintClassId = @userClassId
		)
	order by iPersonId

	CREATE TABLE #propsToUpdate(id int, val nvarchar(255) collate database_default)
	DECLARE @personId int, @personName nvarchar(255), @userNodeId int, @objsCreated int = 0;

	while exists (select * from #Users)
	begin
		select top 1 
			@personId = iPersonId,
			@personName = sPerson
		from #Users
		order by iPersonId asc

		exec @userNodeId = spCreateNodeFromTemplate @userClassId, @personName, @LoadedObjectsFolderId
		update tblNode set txtLDAPGUID = (select AzureAdObjectId from tPerson where iPersonId = @personId) where intNodeId = @userNodeId
		set @objsCreated += 1
		
		insert into #propsToUpdate (id, val)
		select 
			case b.PersonProperty 
				when 'sPerson' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 5)
				when 'sPersonLogin' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 54)
				when 'sPersonEmail' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 46)
				when 'sPersonPhone' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 44)
				when 'sPersonPersonalNumber' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 74)
				when 'sPersonMobile' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 107)
				when 'sPersonDepartment' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 39)
				when 'sPersonWorkPosition' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 108)
				when 'sPersonOffice' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 75)
				when 'sAccount' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 112)
				when 'sPersonCity' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 109)
				when 'sPersonCountry' then (select intPropertyId from vPropertyKind where lintNodeId = @userNodeId and intKindCode = 111)
			end as PropertyId,
			case b.PersonProperty
				when 'sPerson' then sPerson
				when 'sPersonLogin' then sPersonLogin
				when 'sPersonEmail' then sPersonEmail
				when 'sPersonPhone' then sPersonPhone
				when 'sPersonPersonalNumber' then sPersonPersonalNumber
				when 'sPersonMobile' then sPersonMobile
				when 'sPersonDepartment' then sPersonDepartment
				when 'sPersonWorkPosition' then sPersonWorkPosition
				when 'sPersonOffice' then sPersonOffice
				when 'sAccount' then sAccount
				when 'sPersonCity' then sPersonCity
				when 'sPersonCountry' then sPersonCountry
			end as PropertyValue
		from #Users
		cross join (
			select 'sPerson' union all
			select 'sPersonLogin' union all
			select 'sPersonEmail' union all
			select 'sPersonPhone' union all
			select 'sPersonPersonalNumber' union all
			select 'sPersonMobile' union all
			select 'sPersonDepartment' union all
			select 'sPersonWorkPosition' union all
			select 'sPersonOffice' union all
			select 'sAccount' union all
			select 'sPersonCity' union all
			select 'sPersonCountry'
		) b (PersonProperty)
		where iPersonId = @personId
			
		delete from #Users where iPersonId = @personId
	end
	
	drop table #Users
	
	insert into tblLog (lintNodeId,dteLog,liLogPersonId,lintLogKindId,txtLog,KindId)
	select
		p.lintNodeId,
		getutcdate(),
		@systemPersonId,
		4,
		replace(replace(replace(@propChangeLogText, '$1', k.txtName), '$2', isnull(p.txtValue, '')), '$3', isnull(tmp.val, '')),
		k.intKindId
	from tblProperty p
		join tblKind k on k.intKindId = p.lintKindId and p.ParentNodeId is null
		join tblNode n on n.intNodeId = p.lintNodeId
		join #propsToUpdate tmp on p.intPropertyId = tmp.id and isnull(p.txtValue,'') != isnull(tmp.val,'')

	update tblProperty
	set txtValue = isnull(tmp.val,'')
	FROM tblProperty p 
	JOIN #propsToUpdate tmp ON p.intPropertyId = tmp.id AND isnull(p.txtValue, '') != isnull(tmp.val, '')	

	drop table #propsToUpdate

	EXEC spCalcNodeNameAll

	set nocount off;
	print cast(@objsCreated as nvarchar(8)) + ' objects created.'
END TRY
BEGIN CATCH  
	set nocount off;
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
  
    IF @@TRANCOUNT > 0  
        ROLLBACK TRANSACTION;  
END CATCH;  
  
IF @@TRANCOUNT > 0  
    COMMIT TRANSACTION;  