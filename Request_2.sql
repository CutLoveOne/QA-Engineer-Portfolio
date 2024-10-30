SELECT 
    p.project_name AS "Название проекта", 
    COUNT(pos.employee_id) AS "Количество сотрудников на проекте"
FROM 
    positions pos
JOIN 
    projects p ON pos.project_id = p.project_id
GROUP BY 
    p.project_name
HAVING 
    COUNT(pos.employee_id) > 10;