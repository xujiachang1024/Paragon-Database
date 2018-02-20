--
-- PostgreSQL database dump
--

-- Dumped from database version 10.2
-- Dumped by pg_dump version 10.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: chatbot; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE chatbot (
    questionid bigint NOT NULL,
    userid bigint NOT NULL,
    question character varying NOT NULL
);


ALTER TABLE chatbot OWNER TO postgres;

--
-- Name: chatbotanswer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE chatbotanswer (
    applicationid bigint NOT NULL,
    questionid bigint NOT NULL,
    answer character varying NOT NULL
);


ALTER TABLE chatbotanswer OWNER TO postgres;

--
-- Name: company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE company (
    companyid bigint NOT NULL,
    company_name character varying,
    social_media_handle character varying,
    company_summary character varying,
    company_logo character varying,
    company_size character varying,
    company_website character varying
);


ALTER TABLE company OWNER TO postgres;

--
-- Name: employer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE employer (
    userid bigint NOT NULL,
    employer_position character varying NOT NULL
);


ALTER TABLE employer OWNER TO postgres;

--
-- Name: employment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE employment (
    companyid bigint NOT NULL,
    userid bigint NOT NULL
);


ALTER TABLE employment OWNER TO postgres;

--
-- Name: institute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE institute (
    instituteid bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE institute OWNER TO postgres;

--
-- Name: jobapplication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobapplication (
    applicationid bigint NOT NULL,
    job_seekerid bigint NOT NULL,
    jobid bigint NOT NULL,
    apply_date date NOT NULL
);


ALTER TABLE jobapplication OWNER TO postgres;

--
-- Name: jobcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobcategory (
    categoryid bigint NOT NULL,
    category_name character varying NOT NULL
);


ALTER TABLE jobcategory OWNER TO postgres;

--
-- Name: joblist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE joblist (
    jobid bigint NOT NULL,
    userid bigint NOT NULL,
    title character varying NOT NULL,
    salary character varying NOT NULL,
    post_date date NOT NULL,
    responsibility character varying NOT NULL,
    time_demand character varying NOT NULL
);


ALTER TABLE joblist OWNER TO postgres;

--
-- Name: joblistcategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE joblistcategory (
    jobid bigint NOT NULL,
    categoryid bigint NOT NULL
);


ALTER TABLE joblistcategory OWNER TO postgres;

--
-- Name: jobseeker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseeker (
    userid bigint NOT NULL,
    summary character varying NOT NULL,
    is_relation_ok boolean NOT NULL,
    experience character varying NOT NULL,
    premium_level integer NOT NULL
);


ALTER TABLE jobseeker OWNER TO postgres;

--
-- Name: jobseekercategory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseekercategory (
    userid bigint NOT NULL,
    categoryid bigint NOT NULL
);


ALTER TABLE jobseekercategory OWNER TO postgres;

--
-- Name: jobseekercertificate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseekercertificate (
    userid bigint NOT NULL,
    certificate_name character varying NOT NULL
);


ALTER TABLE jobseekercertificate OWNER TO postgres;

--
-- Name: jobseekereducation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseekereducation (
    userid bigint NOT NULL,
    instituteid bigint NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    degree_name character varying NOT NULL
);


ALTER TABLE jobseekereducation OWNER TO postgres;

--
-- Name: jobseekerhonor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseekerhonor (
    userid bigint NOT NULL,
    honor_name character varying NOT NULL
);


ALTER TABLE jobseekerhonor OWNER TO postgres;

--
-- Name: jobseekerskill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE jobseekerskill (
    userid bigint NOT NULL,
    skillid bigint NOT NULL
);


ALTER TABLE jobseekerskill OWNER TO postgres;

--
-- Name: message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE message (
    messageid bigint NOT NULL,
    from_userid bigint NOT NULL,
    to_userid bigint NOT NULL,
    reply_messageid bigint NOT NULL,
    message character varying NOT NULL,
    create_date date NOT NULL
);


ALTER TABLE message OWNER TO postgres;

--
-- Name: skill; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE skill (
    skillid bigint NOT NULL,
    skill_name character varying NOT NULL
);


ALTER TABLE skill OWNER TO postgres;

--
-- Name: userparagon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE userparagon (
    userid bigint NOT NULL,
    phone character varying NOT NULL,
    email character varying NOT NULL,
    profile_picture_url character varying,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    street_adress character varying,
    city character varying,
    state_pronvince character varying,
    country character varying,
    zipcode character varying
);


ALTER TABLE userparagon OWNER TO postgres;

--
-- Data for Name: chatbot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY chatbot (questionid, userid, question) FROM stdin;
\.


--
-- Data for Name: chatbotanswer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY chatbotanswer (applicationid, questionid, answer) FROM stdin;
\.


--
-- Data for Name: company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY company (companyid, company_name, social_media_handle, company_summary, company_logo, company_size, company_website) FROM stdin;
\.


--
-- Data for Name: employer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY employer (userid, employer_position) FROM stdin;
\.


--
-- Data for Name: employment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY employment (companyid, userid) FROM stdin;
\.


--
-- Data for Name: institute; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY institute (instituteid, name) FROM stdin;
\.


--
-- Data for Name: jobapplication; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobapplication (applicationid, job_seekerid, jobid, apply_date) FROM stdin;
\.


--
-- Data for Name: jobcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobcategory (categoryid, category_name) FROM stdin;
\.


--
-- Data for Name: joblist; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY joblist (jobid, userid, title, salary, post_date, responsibility, time_demand) FROM stdin;
\.


--
-- Data for Name: joblistcategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY joblistcategory (jobid, categoryid) FROM stdin;
\.


--
-- Data for Name: jobseeker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseeker (userid, summary, is_relation_ok, experience, premium_level) FROM stdin;
\.


--
-- Data for Name: jobseekercategory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseekercategory (userid, categoryid) FROM stdin;
\.


--
-- Data for Name: jobseekercertificate; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseekercertificate (userid, certificate_name) FROM stdin;
\.


--
-- Data for Name: jobseekereducation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseekereducation (userid, instituteid, start_date, end_date, degree_name) FROM stdin;
\.


--
-- Data for Name: jobseekerhonor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseekerhonor (userid, honor_name) FROM stdin;
\.


--
-- Data for Name: jobseekerskill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY jobseekerskill (userid, skillid) FROM stdin;
\.


--
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY message (messageid, from_userid, to_userid, reply_messageid, message, create_date) FROM stdin;
\.


--
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY skill (skillid, skill_name) FROM stdin;
\.


--
-- Data for Name: userparagon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userparagon (userid, phone, email, profile_picture_url, first_name, last_name, street_adress, city, state_pronvince, country, zipcode) FROM stdin;
\.


--
-- Name: chatbot chatbot_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chatbot
    ADD CONSTRAINT chatbot_pkey PRIMARY KEY (questionid);


--
-- Name: chatbotanswer chatbotanswer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chatbotanswer
    ADD CONSTRAINT chatbotanswer_pkey PRIMARY KEY (applicationid, questionid);


--
-- Name: company company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY company
    ADD CONSTRAINT company_pkey PRIMARY KEY (companyid);


--
-- Name: employer employer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employer
    ADD CONSTRAINT employer_pkey PRIMARY KEY (userid);


--
-- Name: employment employment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employment
    ADD CONSTRAINT employment_pkey PRIMARY KEY (companyid, userid);


--
-- Name: institute institute_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY institute
    ADD CONSTRAINT institute_pkey PRIMARY KEY (instituteid);


--
-- Name: jobapplication jobapplication_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobapplication
    ADD CONSTRAINT jobapplication_pkey PRIMARY KEY (applicationid);


--
-- Name: jobcategory jobcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobcategory
    ADD CONSTRAINT jobcategory_pkey PRIMARY KEY (categoryid);


--
-- Name: joblist joblist_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY joblist
    ADD CONSTRAINT joblist_pkey PRIMARY KEY (jobid);


--
-- Name: joblistcategory joblistcategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY joblistcategory
    ADD CONSTRAINT joblistcategory_pkey PRIMARY KEY (jobid, categoryid);


--
-- Name: jobseeker jobseeker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseeker
    ADD CONSTRAINT jobseeker_pkey PRIMARY KEY (userid);


--
-- Name: jobseekercategory jobseekercategory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekercategory
    ADD CONSTRAINT jobseekercategory_pkey PRIMARY KEY (userid, categoryid);


--
-- Name: jobseekercertificate jobseekercertificate_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekercertificate
    ADD CONSTRAINT jobseekercertificate_pkey PRIMARY KEY (userid, certificate_name);


--
-- Name: jobseekereducation jobseekereducation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekereducation
    ADD CONSTRAINT jobseekereducation_pkey PRIMARY KEY (userid, instituteid);


--
-- Name: jobseekerhonor jobseekerhonor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekerhonor
    ADD CONSTRAINT jobseekerhonor_pkey PRIMARY KEY (userid, honor_name);


--
-- Name: jobseekerskill jobseekerskill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekerskill
    ADD CONSTRAINT jobseekerskill_pkey PRIMARY KEY (userid, skillid);


--
-- Name: message message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY message
    ADD CONSTRAINT message_pkey PRIMARY KEY (messageid);


--
-- Name: skill skill_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skillid);


--
-- Name: userparagon userparagon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userparagon
    ADD CONSTRAINT userparagon_pkey PRIMARY KEY (userid);


--
-- Name: chatbot chatbot_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chatbot
    ADD CONSTRAINT chatbot_userid_fkey FOREIGN KEY (userid) REFERENCES userparagon(userid);


--
-- Name: chatbotanswer chatbotanswer_applicationid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chatbotanswer
    ADD CONSTRAINT chatbotanswer_applicationid_fkey FOREIGN KEY (applicationid) REFERENCES jobapplication(applicationid);


--
-- Name: chatbotanswer chatbotanswer_questionid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY chatbotanswer
    ADD CONSTRAINT chatbotanswer_questionid_fkey FOREIGN KEY (questionid) REFERENCES chatbot(questionid);


--
-- Name: employer employer_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employer
    ADD CONSTRAINT employer_userid_fkey FOREIGN KEY (userid) REFERENCES userparagon(userid);


--
-- Name: employment employment_companyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employment
    ADD CONSTRAINT employment_companyid_fkey FOREIGN KEY (companyid) REFERENCES company(companyid);


--
-- Name: employment employment_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employment
    ADD CONSTRAINT employment_userid_fkey FOREIGN KEY (userid) REFERENCES userparagon(userid);


--
-- Name: jobapplication jobapplication_job_seekerid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobapplication
    ADD CONSTRAINT jobapplication_job_seekerid_fkey FOREIGN KEY (job_seekerid) REFERENCES jobseeker(userid);


--
-- Name: jobapplication jobapplication_jobid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobapplication
    ADD CONSTRAINT jobapplication_jobid_fkey FOREIGN KEY (jobid) REFERENCES joblist(jobid);


--
-- Name: joblist joblist_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY joblist
    ADD CONSTRAINT joblist_userid_fkey FOREIGN KEY (userid) REFERENCES employer(userid);


--
-- Name: joblistcategory joblistcategory_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY joblistcategory
    ADD CONSTRAINT joblistcategory_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES jobcategory(categoryid);


--
-- Name: joblistcategory joblistcategory_jobid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY joblistcategory
    ADD CONSTRAINT joblistcategory_jobid_fkey FOREIGN KEY (jobid) REFERENCES joblist(jobid);


--
-- Name: jobseeker jobseeker_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseeker
    ADD CONSTRAINT jobseeker_userid_fkey FOREIGN KEY (userid) REFERENCES userparagon(userid);


--
-- Name: jobseekercategory jobseekercategory_categoryid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekercategory
    ADD CONSTRAINT jobseekercategory_categoryid_fkey FOREIGN KEY (categoryid) REFERENCES jobcategory(categoryid);


--
-- Name: jobseekercategory jobseekercategory_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekercategory
    ADD CONSTRAINT jobseekercategory_userid_fkey FOREIGN KEY (userid) REFERENCES jobseeker(userid);


--
-- Name: jobseekercertificate jobseekercertificate_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekercertificate
    ADD CONSTRAINT jobseekercertificate_userid_fkey FOREIGN KEY (userid) REFERENCES jobseeker(userid);


--
-- Name: jobseekereducation jobseekereducation_instituteid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekereducation
    ADD CONSTRAINT jobseekereducation_instituteid_fkey FOREIGN KEY (instituteid) REFERENCES institute(instituteid);


--
-- Name: jobseekereducation jobseekereducation_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekereducation
    ADD CONSTRAINT jobseekereducation_userid_fkey FOREIGN KEY (userid) REFERENCES userparagon(userid);


--
-- Name: jobseekerhonor jobseekerhonor_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekerhonor
    ADD CONSTRAINT jobseekerhonor_userid_fkey FOREIGN KEY (userid) REFERENCES jobseeker(userid);


--
-- Name: jobseekerskill jobseekerskill_skillid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekerskill
    ADD CONSTRAINT jobseekerskill_skillid_fkey FOREIGN KEY (skillid) REFERENCES skill(skillid);


--
-- Name: jobseekerskill jobseekerskill_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY jobseekerskill
    ADD CONSTRAINT jobseekerskill_userid_fkey FOREIGN KEY (userid) REFERENCES jobseeker(userid);


--
-- Name: message message_from_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY message
    ADD CONSTRAINT message_from_userid_fkey FOREIGN KEY (from_userid) REFERENCES userparagon(userid);


--
-- Name: message message_to_userid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY message
    ADD CONSTRAINT message_to_userid_fkey FOREIGN KEY (to_userid) REFERENCES userparagon(userid);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--