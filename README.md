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
