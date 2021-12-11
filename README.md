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


To determine the employees who are eligible to participate in a mentorship program. We queried and created a Mentorship Eligibility table that hold this info. On this query we have to retrieve the emp_no, first_name, last name and birth_date from employees table , aslo  retrieved the from_date and to_date columns from department employees table and the tile from title table. Using the DISTINCT ON  statement we retrieve the first occurence of the employee number for each set of rows and join the 3 tables  on the primary key. We filter the current employee on the to_date colum  as well as birth_date column to get the employees who's birth dates  are between Jan.1, 1965, and Dec. 31, 1965. 
This query has resulted to 1549 eligible for mentorship role. See sample run below for Fig.4

<img width="446" alt="menthorship_eligibility" src="https://user-images.githubusercontent.com/92903447/145688174-67ea026a-c8b1-4af0-86bd-b1e2428533ba.png">
Fig.4

#**Summary**: 

How many roles will need to be filled as the "silver tsunami" begins to make an impact?
After generating the  query count report, the "silver tsunami"  has resulted a future significant vacant rows  of **90,938** employee positions. 

Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
The total mentorship role eligible is 1,549 based on the criteria of employees born on 1965 and the ratio of 90,938 retiree vs mentor is higly significant. 

Recommendation/Insights:

We could compare the count by titles for  mentor_eligible employees and retirees  to see if the recent criteria is scalable. The query resulted below with only 6 affected positions compared  to 7 of those born on 1965 and the number is quite reasonable.   Notice that there is no manager on recent query and this could be something to think if a manager position is needed to fill in.  


![retiring_titles](https://user-images.githubusercontent.com/92903447/145691885-fad3b4e5-9dae-4ba4-89da-a9923f90bc54.png) <img width="127" alt="mentor_eligible_count" src="https://user-images.githubusercontent.com/92903447/145691877-ee1a71ab-efb3-4241-b69c-a8b5d7c71af6.png">

Generating a new list of potential mentor eligbile roles can be studied and generated by adjusting the date criteria of those employees aging 30 to 40 from the date they were b
born. Additionally,  it would be interesting to make queries to the database to find out how many young employeees there are at PH and further make analysis or recommendationso of possible promotions  and to provide corresponding employee trainings to new positions. 

