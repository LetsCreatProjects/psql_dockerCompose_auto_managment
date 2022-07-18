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
-- Name: chinavsindia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chinavsindia (
    "Index" integer NOT NULL,
    "China" integer NOT NULL,
    "India" integer NOT NULL,
    "Year" integer NOT NULL
);


ALTER TABLE public.chinavsindia OWNER TO postgres;

--
-- Data for Name: chinavsindia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chinavsindia ("Index", "China", "India", "Year") FROM stdin;
1	2021	1444216102	1393409033
2	2020	1439323774	1380004385
3	2019	1433783692	1366417756
4	2018	1427647789	1352642283
5	2017	1421021794	1338676779
6	2016	1414049353	1324517250
7	2015	1406847868	1310152392
8	2010	1368810604	1234281163
9	2005	1330776380	1147609924
10	2000	1290550767	1056575548
11	1995	1240920539	963922586
12	1990	1176883681	873277799
13	1985	1075589363	784360012
14	1980	1000089228	698952837
15	1975	926240889	623102900
16	1970	827601385	555189797
17	1965	724218970	499123328
18	1960	660408054	450547675
19	1955	612241552	409880606
\.


--
-- Name: chinavsindia chinavsindia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chinavsindia
    ADD CONSTRAINT chinavsindia_pkey PRIMARY KEY ("Index");


--
-- PostgreSQL database dump complete
--
