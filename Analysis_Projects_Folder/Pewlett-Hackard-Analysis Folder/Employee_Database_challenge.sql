-----------------CHALLENGE 7 QUERIES

--Deliverable#1  Instruction 1-7
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
--INTO retirement_titles - 133,376 rows
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Deliverable#1 Instruction 8-14
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
-- SELECT DISTINCT ON (_____) _____,
-- ______,
-- ______,
-- ______

-- INTO nameyourtable
-- FROM _______
-- ORDER BY _____, _____ DESC;

SELECT DISTINCT ON (rt.emp_no) rt.emp_no, rt.first_name, rt.last_name , rt.title
--INTO unique_titles 
FROM retirement_titles AS rt
ORDER BY rt.emp_no ASC, rt.to_date DESC;

-- Deliverable#1 Instruction 15-20
SELECT * FROM unique_titles;  --total 90,938 rows

SELECT COUNT(ut.title), ut.title
--INTO retiring_titles - 7 rows/titles
FROM unique_titles AS ut
GROUP BY ut.title 
ORDER BY COUNT(ut.title) DESC;


-- Deliverable#2 -(Mentroship Eligibility Instruction 1 to 11
SELECT DISTINCT on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date,t.title
--INTO mentorship_eligibility 
FROM employees AS e
INNER JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
	ON (e.emp_no = t.emp_no)
WHERE (birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
AND (de.to_date = '9999-01-01') AND (t.to_date = '9999-01-01')
ORDER BY e.emp_no;







































