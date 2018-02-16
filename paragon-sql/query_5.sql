-- Query 5: Retrieve top 5 companies with more than 100 job applications from 2015 to 2018
-- sorted by the number of received job applications in descending order
SELECT c.company_name AS company_name, c.company_website AS company_URL, count(ja.job_seekerid) AS number_applications
	FROM company c, employment et, employer er, joblist jl, jobapplication ja
	WHERE c.companyid = et.companyid AND et.userid = er.userid AND er.userid = jl.userid AND
		  jl.jobid = ja.jobid AND ja.apply_date >= '2015-01-01' AND ja.apply_date < '2019-01-01'
	GROUP BY c.company_name, c.company_website
	ORDER BY count(ja.job_seekerid) DESC
	LIMIT 5;