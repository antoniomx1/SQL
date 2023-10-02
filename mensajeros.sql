SELECT 
    mmcm.conversationid,
    from_unixtime(mm.timecreated, '%Y-%m-%d %k:%i') as `Fecha.envio`,
    COUNT(DISTINCT mmcm.userid) as numero_de_usuarios,
    mc.shortname as clave,
    mm.useridfrom,
    mg.name as grupo
FROM 
    mdl_message_conversation_members mmcm
    INNER JOIN mdl_messages mm ON mm.conversationid = mmcm.conversationid
    INNER JOIN mdl_user mu ON mu.id = mmcm.userid
    INNER JOIN mdl_groups_members mgm ON mgm.userid = mu.id
    INNER JOIN mdl_groups mg ON mg.id = mgm.groupid
    INNER JOIN mdl_course mc ON mc.id = mg.courseid 
WHERE 
    mm.timecreated >= UNIX_TIMESTAMP('2023-08-28 00:00:00') 
    AND mm.timecreated <= UNIX_TIMESTAMP('2023-12-31 23:59:59')
    AND mg.name like '%Equipo%'
    AND mm.useridfrom = 1055 
	AND (mmcm.userid NOT LIKE 572 )
    AND mc.category in (13)
GROUP BY 
    mmcm.conversationid, mm.useridfrom,from_unixtime(mm.timecreated, '%Y-%m-%d %k:%i'),mg.name
HAVING 
    numero_de_usuarios > 2
ORDER BY 
    from_unixtime(mm.timecreated, '%Y-%m-%d %k:%i'), mg.name;    