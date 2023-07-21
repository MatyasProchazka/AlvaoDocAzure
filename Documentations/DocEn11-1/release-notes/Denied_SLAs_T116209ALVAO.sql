-- This query returns all denied SLAs

select s.sHdSection as [Service name], 
	sla.sSla as [SLA], 
	r.sRole as [Group name], 
	p.sPerson as [User name], 
	1 as [SLA denied], 
	sr.bSlaRightsDefault as [Default SLA denied],
    p.dPersonRemoved as [Person removed],
    sla.dSlaRemoved as [SLA removed]
from tSlaRights sr
join tSla sla on sla.iSlaId = sr.liSlaRightsSlaId
join tHdSection s on s.iHdSectionId = sr.liHdSectionId
left join tRole r on r.iRoleId = sr.liSlaRightsRoleId
left join tPerson p on p.iPersonId = sr.liSlaRightsPersonId
where sr.bSlaRightsAccess = 0
    -- and p.dPersonRemoved is NULL          -- Uncomment for not returning removed user accounts
    -- and p.bPersonAccountDisabled is NULL  -- Uncomment for not returning disabled user accounts
    -- and p.bHidden is NULL                 -- Uncomment for not returning hidden user accounts
    -- and sla.dSlaRemoved is NULL           -- Uncomment for not returning removed SLAs
