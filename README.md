# LinkedIn-Scrapper
 Scrapper for collecting job postings available on LinkedIn

The project was performed as per MASAI School project activity. The details of task to be performed can be accessed from the <a href="https://aman-vats-masai-school.notion.site/Job-Analytics-7233631164504f1ab1a09ea87dd2aabf">link here</a>

The project was accomplished by group of four members. Each member performed different set of tasks. 
- <strong> Nilabh Kumar </strong>, my role was to extract Job Posting Data from the <a href = "https://www.linkedin.com"> linkedIn website.</a>

<strong> Strategy for scrapping the Job Posting using Python Language</strong>
- Extract the job posting links using Python BeautifulSoup library.
- Extract the required data using Python Selenium library.
- Save the extracted data in python list/dictionary.
- Convert the list/dictionary to pandas DataFrame.
- Perform data cleaning.
- Create Job ID, Company ID and Details ID.
- Save the final datasets in csv format.


<strong> Initial approach to follow the strategy above to get the final dataset</strong>
- Started with getting job postings from linked website without "Log IN". It was not feasible approach and dropped this inital approach.
- Later Logged in to linkedIn. There are two ways of getting the job posting. One by clicking the "My Job" tab and another was by "Job Search" block. "My Job" tab will return recommended jobs for a particular account, hence dropped this method. "job Search" bloack will return jobs according to the keywords supplied. Hence this approach was finalized because we required data from India only.
- Manually extracted links. Each link contained 25 job postings.
- The above step will be automated in later stage of this project.

<strong>1. Final Extraction Approach</strong>
- Links are provided to the scraper manually in form of list
- From each link, links of 25 job posting is extracted using BeautifulSoup library.
- From each job link required details are extracted using selenium library. Appropriate class name or tag name is passed to get the data.
- Final raw data is obtained in the last.

<strong>2. Data Cleaning</strong>
- Raw data is converted to DataFrame and then cleaned using python pandas library.
- According to the table requirement, columns are grouped accordingly and 3 new DataFrame is created.
- Again data cleaning(null removal, duplicate removal) is performed for each of the 3 DataFrame.
- Finally cleaned data is saved in the CSV format. 
- Further cleaning performed on CSV data using Excel.
- Primary key for each table is created accordingly.

<strong>3. Insights using MS SQL</strong>
- The CSVs are imported in MS SQL server.
- Insights are drawn according to the problem statement.
- MS MSQL file is attached.

<strong>4. Dashboard Creation</strong>
- Each of the three CSVs are joined in MS SQL.
- Using Excel the dashboard is created. 
- Later dashboard using Tableau will also be added here.

![Screenshot 2022-10-02 at 3 09 23 PM](https://user-images.githubusercontent.com/66992000/193452880-aa561c96-771d-4603-ae98-75ddb53d0273.png)

