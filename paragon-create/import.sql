COPY userparagon
	FROM '/tmp/paragon-dataset/User.csv' DELIMITER ',' CSV;


COPY message
	FROM '/tmp/paragon-dataset/Message.csv' DELIMITER ',' CSV;


COPY jobseeker
	FROM '/tmp/paragon-dataset/JobSeeker.csv' DELIMITER ',' CSV;


COPY institute
	FROM '/tmp/paragon-dataset/Institute.csv' DELIMITER ',' CSV;


COPY jobseekereducation
	FROM '/tmp/paragon-dataset/JobSeekerEducation.csv' DELIMITER ',' CSV;


COPY skill
	FROM '/tmp/paragon-dataset/Skill.csv' DELIMITER ',' CSV;


COPY jobseekerskill
	FROM '/tmp/paragon-dataset/JobSeekerSkill.csv' DELIMITER ',' CSV;


COPY jobcategory
	FROM '/tmp/paragon-dataset/JobCategory.csv' DELIMITER ',' CSV;


COPY jobseekercategory
	FROM '/tmp/paragon-dataset/JobSeekerCategory.csv' DELIMITER ',' CSV;


COPY jobseekerhonor
	FROM '/tmp/paragon-dataset/JobSeekerHonor.csv' DELIMITER ',' CSV;


COPY jobseekercertificate
	FROM '/tmp/paragon-dataset/JobSeekerCertificate.csv' DELIMITER ',' CSV;


COPY employer
	FROM '/tmp/paragon-dataset/Employer.csv' DELIMITER ',' CSV;


COPY joblist
	from '/tmp/paragon-dataset/JobList.csv' DELIMITER ','CSV;


COPY joblistcategory
	FROM '/tmp/paragon-dataset/JobListCategory.csv' DELIMITER ',' CSV;


COPY chatbot
	FROM '/tmp/paragon-dataset/Chatbot.csv' DELIMITER ',' CSV;


COPY company
	FROM '/tmp/paragon-dataset/Company.csv' DELIMITER ',' CSV;


COPY jobapplication
	FROM '/tmp/paragon-dataset/JobApplication.csv' DELIMITER ',' CSV;


COPY chatbotanswer
	FROM '/tmp/paragon-dataset/ChatbotAnswer.csv' DELIMITER ',' CSV;


COPY employment
	FROM '/tmp/paragon-dataset/Employment.csv' DELIMITER ',' CSV;

