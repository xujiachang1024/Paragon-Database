-- Query 2: Show Employer 90196’s top 5 job listings that receive the highest number of job applications
SELECT jl.title AS title, jl.salary AS salary, jl.post_date AS post_date,
	jl.responsibility AS responsibility, jl.time_demand AS time_demand
	FROM employer e, joblist jl, jobapplication ja
	WHERE e.userid = cast(90196 AS BIGINT) AND e.userid = jl.userid AND jl.jobid = ja.jobid
	GROUP BY jl.jobid
	ORDER BY count(ja.applicationid) DESC
	LIMIT 5;