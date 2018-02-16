COPY userparagon
	FROM '/tmp/paragon-csv/User.csv' DELIMITER ',' CSV;


COPY message
	FROM '/tmp/paragon-csv/Message.csv' DELIMITER ',' CSV;


COPY jobseeker
	FROM '/tmp/paragon-csv/JobSeeker.csv' DELIMITER ',' CSV;


COPY institute
	FROM '/tmp/paragon-csv/Institute.csv' DELIMITER ',' CSV;


COPY jobseekereducation
	FROM '/tmp/paragon-csv/JobSeekerEducation.csv' DELIMITER ',' CSV;


COPY skill
	FROM '/tmp/paragon-csv/Skill.csv' DELIMITER ',' CSV;


COPY jobseekerskill
	FROM '/tmp/paragon-csv/JobSeekerSkill.csv' DELIMITER ',' CSV;


COPY jobcategory
	FROM '/tmp/paragon-csv/JobCategory.csv' DELIMITER ',' CSV;


COPY jobseekercategory
	FROM '/tmp/paragon-csv/JobSeekerCategory.csv' DELIMITER ',' CSV;


COPY jobseekerhonor
	FROM '/tmp/paragon-csv/JobSeekerHonor.csv' DELIMITER ',' CSV;


COPY jobseekercertificate
	FROM '/tmp/paragon-csv/JobSeekerCertificate.csv' DELIMITER ',' CSV;


COPY employer
	FROM '/tmp/paragon-csv/Employer.csv' DELIMITER ',' CSV;


COPY joblist
	from '/tmp/paragon-csv/JobList.csv' DELIMITER ','CSV;


COPY joblistcategory
	FROM '/tmp/paragon-csv/JobListCategory.csv' DELIMITER ',' CSV;


COPY chatbot
	FROM '/tmp/paragon-csv/Chatbot.csv' DELIMITER ',' CSV;


COPY company
	FROM '/tmp/paragon-csv/Company.csv' DELIMITER ',' CSV;


COPY jobapplication
	FROM '/tmp/paragon-csv/JobApplication.csv' DELIMITER ',' CSV;


COPY chatbotanswer
	FROM '/tmp/paragon-csv/ChatbotAnswer.csv' DELIMITER ',' CSV;


COPY employment
	FROM '/tmp/paragon-csv/Employment.csv' DELIMITER ',' CSV;

