# **Pewlett-Hackard-Analysis - Overview**
**Pewlett Hackard (PH)** is a large company with several thousand of employees. Its' baby boomers has begin to retire in a rapid rate and the company is offering retirement package for those who will meet certain criteria. also the company is looking aahead t which position will need to be filled in the near future. Bobby, PH's HR analyst were tasked to perform employee research to find who will be retiring in the next few years and how many positions the company would need to fill. 

The task is to help Bobby using SQL to build an employee database by applying data queries. modelling and analytical skills. After working on the module and creating database tables and csv files, his manager has given us 2 more assignments to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. Also, we need to submit a summary report that summarizes analysis  for  the “silver tsunami” as many current employees reach retirement age.

##**Deliverables:**
 - **Deliverable 1:** The Number of Retiring Employees by Title
 - **Deliverable 2:** The Employees Eligible for the Mentorship Program
 - **Deliverable 3:** A written report on the employee database analysis

**#Resources:**
PostgreSQL/PgAdmin
6 company provided  CSV  employee files:
 - departments.csv
 - dept_emp.csv
 - managers.csv
 - employees.csv
 - salaries.csv
 - titles.csv

#**Results**: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.


Fig.1 Using the ERD you created in this module as a reference,  Retirement Titles table has been created that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955. On this query, some employee shows multiple titles in the database due to promotions for example and need to be removed as duplicates. 

![retirement_titles](https://user-images.githubusercontent.com/92903447/145686748-38b44efc-62ad-422b-8273-f08dbff0eac8.png)
Fig.1

To remove the duplicate info , we use the DISTINCT ON statement  on our query to create a table that contains the most recent title of each employee. Then, we  use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title and created a table for unique_titles that holds this info. See Fig.2 below.  This query has generated a significant number of vacant position count of **90,938** rows.

![unique_titles](https://user-images.githubusercontent.com/92903447/145686768-6565d811-6d3c-42d9-82e6-c8e7ec6811f7.png)
Fig.2


To  retrieve the number of employees by their most recent job title who are about to retire, we queried and created a retiring title table  by retrieving the number of titles from unique title tables and group the table by tile and sort the count column to descending. Please see fig. 3 below.  The table returns 7 positions  that would  be impacted by the "silver tsunami"
![retiring_titles](https://user-images.githubusercontent.com/92903447/145686762-4ea8c0db-b79e-4559-8b58-1f76a160804f.png)
Fig.3 


<img width="446" alt="menthorship_eligibility" src="https://user-images.githubusercontent.com/92903447/145688174-67ea026a-c8b1-4af0-86bd-b1e2428533ba.png">

#**Summary**: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
After generating the  query count report, the "silver tsunami"  has resulted a future significant vacant rows  of **90,938** employee positions 

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
