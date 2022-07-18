--
-- PostgreSQL database dump
--

-- Dumped from database version 14.4 (Debian 14.4-1.pgdg110+1)
-- Dumped by pg_dump version 14.4 (Debian 14.4-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: passengers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.passengers (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(255) NOT NULL,
    age integer NOT NULL,
    travel_to character varying(255) NOT NULL,
    paymentv integer NOT NULL,
    travel_date date NOT NULL
);


ALTER TABLE public.passengers OWNER TO postgres;

--
-- Data for Name: passengers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.passengers (id, name, email, age, travel_to, paymentv, travel_date) FROM stdin;
1	Jack	jack12@gmail.com	20	Paris	79000	2018-01-01
2	Anna	anna@gmail.com	19	NewYork	405000	2019-10-03
3	Wonder	wonder2@yahoo.com	32	Sydney	183000	2012-08-05
4	Stacy	stacy78@hotmail.com	28	Maldives	29000	2017-06-09
5	Stevie	stevie@gmail.com	49	Greece	56700	2021-12-12
6	Harry	harry@gmail.com	22	Hogwarts	670000	2020-01-17
\.


--
-- Name: passengers passengers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passengers
    ADD CONSTRAINT passengers_email_key UNIQUE (email);


--
-- Name: passengers passengers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--