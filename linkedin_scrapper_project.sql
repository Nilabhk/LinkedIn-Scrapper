create database linkedin_scrapper_project
use linkedin_scrapper_project

---1st
select a.Location_city, b.level, count(a.Job_ID) as city_wise_job_count from Final_Job_Table as a inner join Final_Details_Table as b on
a.Details_ID=b.Details_id group by a.Location_city, b.level order by COUNT(a.Job_ID) desc

---2nd
select a.Industry,count(b.Job_ID) AS Industry_wise_job_count from Final_Company_Table as a
inner join Final_Job_Table as b on a.Company_id=b.Company_ID group by a.Industry order by Industry_wise_job_count desc;


---3rd
select a.Company_Name,
count(case when a.Employee_count <=100 then b.Job_ID end) as less_than_100,
count(case when a.Employee_count >=1000 then b.Job_ID end) as greater_than_1000
from Final_Company_Table as a inner join Final_Job_Table as b on a.Company_id=b.Company_ID 
group by a.Company_Name


---4th
select Location_City,Designation,count(Job_ID) as location_and_designation_wise_job_count
from Final_Job_Table group by Location_City,Designation order by Location_City,Designation


---extra 1
select a.Company_Name,
count(case when a.Employee_count <=100 then b.Job_ID end) as less_than_100,
count(case when a.Employee_count >100 and a.Employee_count<=500 then b.Job_ID end) as between_101_to_500,
count(case when a.Employee_count >500 and a.Employee_count<=1000 then b.Job_ID end)as between_501_to_1000,
count(case when a.Employee_count >1000 then b.Job_ID end) as greater_than_1000
from Final_Company_Table as a inner join Final_Job_Table as b on a.Company_id=b.Company_ID 
group by a.Company_Name


---extra 2
select a.Company_Name,b.Designation,c.Level,c.Involvement,sum(c.Total_Applicants) as total_company_applicants from Final_Company_Table as a 
inner join Final_Job_Table as b on a.Company_id=b.Company_ID 
inner join Final_Details_Table as c on c.Details_id=b.Details_ID
group by a.Company_Name,b.Designation,c.Level,c.Involvement order by total_company_applicants desc


---extra 3
select a.Involvement,count(b.Job_ID) as involvement_wise_job_count from Final_Details_Table as a 
inner join Final_Job_Table as b
on a.Details_id=b.Details_ID group by a.Involvement order by involvement_wise_job_count desc

---extra 4
select a.Level,count(b.Job_ID) as Level_wise_job_count from Final_Details_Table as a 
inner join Final_Job_Table as b
on a.Details_id=b.Details_ID group by a.Level order by Level_wise_job_count desc

select * from Final_Company_Table as a 
inner join Final_Job_Table as b on a.Company_id=b.Company_ID 
inner join Final_Details_Table as c on c.Details_id=b.Details_ID



