-- Deliverable 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees AS e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE ( e.birth_date BETWEEN '1952-1-1' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON(emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no,
	title DESC;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(emp_no),
	title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Deliverable 2
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees AS e
LEFT JOIN dept_emp AS de
ON e.emp_no = de.emp_no
LEFT JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

-- Additional Queries
SELECT ut.title,
	ut.count AS retirement_count,
	ct.count AS current_count,
	CAST(((ut.count *100)/ ct.count)AS DECIMAL) AS percentage $
FROM unique_titles as ut
JOIN current_titles as ct
ON ut.title = ct.title
GROUP BY ut.title, ct.count
ORDER BY current_count DESC

select count(emp_no), title
from mentorship_eligibility
group by title
order by count(emp_no) desc