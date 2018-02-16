-- Query 3: Show Employer 90196’s job applicants for job listing with jobId = 4401
SELECT js.summary AS summary, js.experience AS experience,
	string_agg(i.name, ', ') as education_institute_names, string_agg(s.skill_name, ', ') AS skill,
	string_agg(jsh.honor_name, ', ') as honors, string_agg(jsc.certificate_name, ', ') as certificates,
	string_agg(c.question, ', ') AS questions, string_agg(ca.answer, ', ') AS answers
	FROM employer e, joblist jl, jobapplication ja, jobseeker js, chatbotanswer ca, chatbot c,
		jobseekereducation jse, institute i, jobseekerskill jss, skill s,
		jobseekerhonor jsh, jobseekercertificate jsc
	WHERE e.userid = cast(90196 AS BIGINT) AND jl.userid = e.userid AND
		  jl.jobid = cast(4401 AS BIGINT) AND jl.jobid = ja.jobid AND
		  ja.applicationid = ca.applicationid and ca.questionid = c.questionid AND
		  ja.job_seekerid = js.userid AND js.userid = jsc.userid AND
		  js.userid = jse.userid AND jse.instituteid = i.instituteid AND
		  js.userid = jss.userid AND jss.skillid = s.skillid AND js.userid = jsh.userid
	GROUP BY js.userid