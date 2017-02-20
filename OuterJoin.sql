Select dept.Dept_name, COUNT(std.student_id) 
FROM Departments dept 
LEFT OUTER JOIN Students std 
on dept.dept_id = std.dept_id 
GROUP BY dept.dept_name 
ORDER BY COUNT(std.student_id) DESC, dept.Dept_name;
