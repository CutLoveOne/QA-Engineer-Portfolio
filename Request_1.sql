SELECT 
    p.project_name AS "Название проекта", 
    t.titel_name AS "Название должности", 
    ROUND(AVG(pos.salary), 0) AS "Средняя заработная плата"
FROM 
    positions pos
JOIN 
    titles t ON pos.title_id = t.Id
JOIN 
    projects p ON pos.project_id = p.project_id
WHERE 
    t.titel_name = 'qa engineer'
    AND p.project_name IN ('ПУМЧД', 'ГИС КАП')
GROUP BY 
    p.project_name, t.titel_name;