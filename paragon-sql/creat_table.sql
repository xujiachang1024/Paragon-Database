DROP TABLE IF EXISTS Message;
DROP TABLE IF EXISTS ChatbotAnswer;
DROP TABLE IF EXISTS Chatbot;
DROP TABLE IF EXISTS JobApplication;
DROP TABLE IF EXISTS JobSeekerCertificate;
DROP TABLE IF EXISTS JobSeekerHonor;
DROP TABLE IF EXISTS JobSeekerCategory;
DROP TABLE IF EXISTS JobSeekerSkill;
DROP TABLE IF EXISTS JobSeekerEducation;
DROP TABLE IF EXISTS Institute;
DROP TABLE IF EXISTS Skill;
DROP TABLE IF EXISTS JobListCategory;
DROP TABLE IF EXISTS JobList;
DROP TABLE IF EXISTS Employment;
DROP TABLE IF EXISTS JobSeeker;
DROP TABLE IF EXISTS Employer;
DROP TABLE IF EXISTS UserParagon;
DROP TABLE IF EXISTS Company;
DROP TABLE IF EXISTS JobCategory;



CREATE TABLE UserParagon (
	userID BIGINT NOT NULL,
	phone VARCHAR NOT NULL,
	email VARCHAR NOT NULL,
	profile_picture_url VARCHAR,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	street_adress VARCHAR,
	city VARCHAR,
	state_pronvince VARCHAR,
	country VARCHAR,
	zipcode VARCHAR,
	PRIMARY KEY (userID)
);



CREATE TABLE Message (
	messageID BIGINT NOT NULL,
	from_userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	to_userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	reply_messageID BIGINT NOT NULL,
	message VARCHAR NOT NULL,
	create_date DATE NOT NULL,
	PRIMARY KEY (messageID)
);



CREATE TABLE JobSeeker (
	userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	summary VARCHAR NOT NULL,
	is_relation_ok BOOL NOT NULL,
	experience VARCHAR NOT NULL,
	premium_level INT NOT NULL,
	PRIMARY KEY (userID)
);



CREATE TABLE Institute (
	instituteID BIGINT NOT NULL,
	name VARCHAR NOT NULL,
	PRIMARY KEY (instituteID)
);



CREATE TABLE JobSeekerEducation (
	userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	instituteID BIGINT NOT NULL REFERENCES Institute (instituteID),
	start_date DATE NOT NULL,
	end_date DATE NOT NULL,
	degree_name VARCHAR NOT NULL,
	PRIMARY KEY (userID, instituteID)
);



CREATE TABLE Skill (
	skillID BIGINT NOT NULL,
	skill_name VARCHAR NOT NULL,
	PRIMARY KEY (skillID)
);



CREATE TABLE JobSeekerSkill (
	userID BIGINT NOT NULL REFERENCES JobSeeker (userID),
	skillID BIGINT NOT NULL REFERENCES Skill (skillID),
	PRIMARY KEY (userID, skillID)
);



CREATE TABLE JobCategory (
	categoryID BIGINT NOT NULL,
	category_name VARCHAR NOT NULL,
	PRIMARY KEY (categoryID)
);



CREATE TABLE JobSeekerCategory (
	userID BIGINT NOT NULL REFERENCES JobSeeker (userID),
	categoryID BIGINT NOT NULL REFERENCES JobCategory (categoryID),
	PRIMARY KEY (userID, categoryID)
);



CREATE TABLE JobSeekerHonor (
	userID BIGINT NOT NULL REFERENCES JobSeeker (userID),
	honor_name VARCHAR NOT NULL,
	PRIMARY KEY (userID, honor_name)
);



CREATE TABLE JobSeekerCertificate (
	userID BIGINT NOT NULL REFERENCES JobSeeker (userID),
	certificate_name VARCHAR NOT NULL,
	PRIMARY KEY (userID, certificate_name)
);



CREATE TABLE Employer (
	userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	employer_position VARCHAR NOT NULL,
	PRIMARY KEY (userID)
);



CREATE TABLE JobList (
	jobID BIGINT NOT NULL,
	userID BIGINT NOT NULL REFERENCES Employer (userID),
	title VARCHAR NOT NULL,
	salary VARCHAR NOT NULL,
	post_date date NOT NULL,
	responsibility VARCHAR NOT NULL,
	time_demand VARCHAR NOT NULL,
	PRIMARY KEY (jobID)
);



CREATE TABLE JobListCategory (
	jobID BIGINT NOT NULL REFERENCES JobList (jobID),
	categoryID BIGINT NOT NULL REFERENCES JobCategory (categoryID),
	PRIMARY KEY (jobID, categoryID)
);



CREATE TABLE Chatbot (
	questionID BIGINT NOT NULL,
	userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	question VARCHAR NOT NULL,
	PRIMARY KEY (questionID)
);



CREATE TABLE Company (
	companyID BIGINT NOT NULL,
	company_name VARCHAR,
	social_media_handle VARCHAR,
	company_summary VARCHAR,
	company_logo VARCHAR,
	company_size VARCHAR,
	company_website VARCHAR,
	PRIMARY KEY (companyID)
);



CREATE TABLE JobApplication (
	applicationID BIGINT NOT NULL,
	job_seekerID BIGINT NOT NULL REFERENCES JobSeeker (userID),
	jobID BIGINT NOT NULL REFERENCES JobList (jobID),
	apply_date date NOT NULL,
	PRIMARY KEY (applicationID)
);



CREATE TABLE ChatbotAnswer (
	applicationID BIGINT NOT NULL REFERENCES JobApplication (applicationID),
	questionID BIGINT NOT NULL REFERENCES Chatbot (questionID),
	answer VARCHAR NOT NULL,
	PRIMARY KEY (applicationID, questionID)
);



CREATE TABLE Employment (
	companyID BIGINT NOT NULL REFERENCES Company (companyID),
	userID BIGINT NOT NULL REFERENCES UserParagon (userID),
	PRIMARY KEY (companyID, userID)
);


