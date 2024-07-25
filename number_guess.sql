--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL DEFAULT nextval('public.games_game_id_seq'),
    number_guesses integer NOT NULL,
    user_id integer,
    PRIMARY KEY (game_id),
    FOREIGN KEY (user_id) REFERENCES public.users(user_id)
);

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL DEFAULT nextval('public.users_user_id_seq'),
    username character varying(20) NOT NULL,
    PRIMARY KEY (user_id),
    UNIQUE (username)
);

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.games (game_id, number_guesses, user_id) FROM stdin;
1	471	1
2	692	1
3	922	2
4	802	2
5	11	1
6	302	1
7	214	1
8	961	3
9	180	3
10	285	4
11	964	4
12	231	3
13	379	3
14	478	3
15	21	5
16	323	6
17	741	6
18	136	7
19	579	7
20	105	6
21	407	6
22	40	6
23	524	8
24	932	8
25	232	9
26	872	9
27	522	8
28	301	8
29	50	8
30	743	10
31	289	10
32	198	11
33	77	11
34	837	10
35	570	10
36	657	10
\.

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.users (user_id, username) FROM stdin;
1	user_1721910919374
2	user_1721910919373
3	user_1721911000305
4	user_1721911000304
5	Dave
6	user_1721911158836
7	user_1721911158835
8	user_1721911192929
9	user_1721911192928
10	user_1721911224588
11	user_1721911224587
\.

--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 36, true);

--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);

--
-- PostgreSQL database dump complete
--
