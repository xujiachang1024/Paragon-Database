-- Query 6: Retrieve the top 5 market vacancy of job categories in 2017 sorted by market vacancy in descending order
SELECT jc.category_name AS job_category,
	cast(count(DISTINCT jlc.jobid) AS FLOAT) / cast(count(ja.applicationid) AS FLOAT) as market_vacancy
	FROM jobcategory jc, joblistcategory jlc, jobapplication ja
	WHERE jc.categoryid = jlc.categoryid AND jlc.jobid = ja.jobid
	GROUP BY jc.categoryid
	ORDER BY cast(count(DISTINCT jlc.jobid) AS FLOAT) / cast(count(ja.applicationid) AS FLOAT) DESC
	LIMIT 5;