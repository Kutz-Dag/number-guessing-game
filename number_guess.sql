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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL,
    secret_number integer NOT NULL,
    completed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.games OWNER TO freecodecamp;

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


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

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


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 3, 465, 464, '2024-05-23 17:49:00.112261');
INSERT INTO public.games VALUES (2, 3, 260, 259, '2024-05-23 17:49:00.245695');
INSERT INTO public.games VALUES (3, 4, 338, 337, '2024-05-23 17:49:00.4016');
INSERT INTO public.games VALUES (4, 4, 357, 356, '2024-05-23 17:49:00.518403');
INSERT INTO public.games VALUES (5, 3, 925, 922, '2024-05-23 17:49:00.690008');
INSERT INTO public.games VALUES (6, 3, 806, 805, '2024-05-23 17:49:00.842268');
INSERT INTO public.games VALUES (7, 3, 904, 903, '2024-05-23 17:49:00.990706');
INSERT INTO public.games VALUES (8, 5, 218, 217, '2024-05-23 17:51:40.089715');
INSERT INTO public.games VALUES (9, 5, 848, 847, '2024-05-23 17:51:40.251953');
INSERT INTO public.games VALUES (10, 6, 563, 562, '2024-05-23 17:51:40.420421');
INSERT INTO public.games VALUES (11, 6, 346, 345, '2024-05-23 17:51:40.542505');
INSERT INTO public.games VALUES (12, 5, 378, 375, '2024-05-23 17:51:40.664335');
INSERT INTO public.games VALUES (13, 5, 67, 66, '2024-05-23 17:51:40.770929');
INSERT INTO public.games VALUES (14, 5, 803, 802, '2024-05-23 17:51:40.923551');
INSERT INTO public.games VALUES (15, 7, 15, 14, '2024-05-23 17:53:30.392789');
INSERT INTO public.games VALUES (16, 7, 353, 352, '2024-05-23 17:53:30.50694');
INSERT INTO public.games VALUES (17, 8, 133, 132, '2024-05-23 17:53:30.632894');
INSERT INTO public.games VALUES (18, 8, 808, 807, '2024-05-23 17:53:30.776646');
INSERT INTO public.games VALUES (19, 7, 871, 868, '2024-05-23 17:53:30.950258');
INSERT INTO public.games VALUES (20, 7, 820, 819, '2024-05-23 17:53:31.116428');
INSERT INTO public.games VALUES (21, 7, 21, 20, '2024-05-23 17:53:31.205823');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1716486454876', 0, NULL);
INSERT INTO public.users VALUES (2, 'user_1716486454875', 0, NULL);
INSERT INTO public.users VALUES (4, 'user_1716486539934', 2, 338);
INSERT INTO public.users VALUES (3, 'user_1716486539935', 5, 260);
INSERT INTO public.users VALUES (6, 'user_1716486699934', 2, 346);
INSERT INTO public.users VALUES (5, 'user_1716486699935', 5, 67);
INSERT INTO public.users VALUES (8, 'user_1716486810251', 2, 133);
INSERT INTO public.users VALUES (7, 'user_1716486810252', 5, 15);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 21, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 8, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

