--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer,
    col4 integer,
    col5 numeric,
    col6 text,
    col7 boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer,
    col4 integer,
    col5 numeric,
    col6 text,
    col7 boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer,
    col4 integer,
    col5 numeric,
    col6 text,
    col7 boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    col3 integer,
    col4 integer,
    col5 numeric,
    col6 text,
    col7 boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.id;


--
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    col1 integer NOT NULL,
    col2 character varying(5) NOT NULL,
    col3 numeric(4,1),
    id integer NOT NULL
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: table5_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.table5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.table5_id_seq OWNER TO freecodecamp;

--
-- Name: table5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.table5_id_seq OWNED BY public.table5.id;


--
-- Name: galaxy id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: table5 id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5 ALTER COLUMN id SET DEFAULT nextval('public.table5_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', 1, 1, 1.0, 'text1', true);
INSERT INTO public.galaxy VALUES (2, 'two', 1, 1, 1.0, 'text1', true);
INSERT INTO public.galaxy VALUES (3, 'three', 1, 1, 1.0, 'text1', true);
INSERT INTO public.galaxy VALUES (4, 'four', 1, 1, 1.0, 'text1', true);
INSERT INTO public.galaxy VALUES (5, 'five', 1, 1, 1.0, 'text1', true);
INSERT INTO public.galaxy VALUES (6, 'six', 1, 1, 1.0, 'text1', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'one', 1, 1, 1.0, 'text1', true, 7);
INSERT INTO public.moon VALUES (2, 'one', 1, 1, 1.0, 'text2', true, 8);
INSERT INTO public.moon VALUES (3, 'one', 1, 1, 1.0, 'text3', true, 9);
INSERT INTO public.moon VALUES (4, 'one', 1, 1, 1.0, 'text4', true, 10);
INSERT INTO public.moon VALUES (5, 'one', 1, 1, 1.0, 'text5', true, 11);
INSERT INTO public.moon VALUES (6, 'one', 1, 1, 1.0, 'text6', true, 12);
INSERT INTO public.moon VALUES (7, 'one', 1, 1, 1.0, 'text6', true, 13);
INSERT INTO public.moon VALUES (8, 'one', 1, 1, 1.0, 'text6', true, 14);
INSERT INTO public.moon VALUES (9, 'one', 1, 1, 1.0, 'text6', true, 15);
INSERT INTO public.moon VALUES (10, 'one', 1, 1, 1.0, 'text6', true, 16);
INSERT INTO public.moon VALUES (11, 'one', 1, 1, 1.0, 'text6', true, 17);
INSERT INTO public.moon VALUES (12, 'one', 1, 1, 1.0, 'text6', true, 18);
INSERT INTO public.moon VALUES (13, 'one', 1, 1, 1.0, 'text1', true, 7);
INSERT INTO public.moon VALUES (14, 'one', 1, 1, 1.0, 'text2', true, 8);
INSERT INTO public.moon VALUES (15, 'one', 1, 1, 1.0, 'text3', true, 9);
INSERT INTO public.moon VALUES (16, 'one', 1, 1, 1.0, 'text4', true, 10);
INSERT INTO public.moon VALUES (17, 'one', 1, 1, 1.0, 'text5', true, 11);
INSERT INTO public.moon VALUES (18, 'one', 1, 1, 1.0, 'text6', true, 12);
INSERT INTO public.moon VALUES (19, 'one', 1, 1, 1.0, 'text6', true, 13);
INSERT INTO public.moon VALUES (20, 'one', 1, 1, 1.0, 'text6', true, 14);
INSERT INTO public.moon VALUES (21, 'one', 1, 1, 1.0, 'text6', true, 15);
INSERT INTO public.moon VALUES (22, 'one', 1, 1, 1.0, 'text6', true, 16);
INSERT INTO public.moon VALUES (23, 'one', 1, 1, 1.0, 'text6', true, 17);
INSERT INTO public.moon VALUES (24, 'one', 1, 1, 1.0, 'text6', true, 18);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (7, 'one', 1, 1, 1.0, 'text1', true, 1);
INSERT INTO public.planet VALUES (8, 'one', 1, 1, 1.0, 'text2', true, 2);
INSERT INTO public.planet VALUES (9, 'one', 1, 1, 1.0, 'text3', true, 3);
INSERT INTO public.planet VALUES (10, 'one', 1, 1, 1.0, 'text4', true, 4);
INSERT INTO public.planet VALUES (11, 'one', 1, 1, 1.0, 'text5', true, 5);
INSERT INTO public.planet VALUES (12, 'one', 1, 1, 1.0, 'text6', true, 6);
INSERT INTO public.planet VALUES (13, 'one', 1, 1, 1.0, 'text1', true, 1);
INSERT INTO public.planet VALUES (14, 'one', 1, 1, 1.0, 'text2', true, 2);
INSERT INTO public.planet VALUES (15, 'one', 1, 1, 1.0, 'text3', true, 3);
INSERT INTO public.planet VALUES (16, 'one', 1, 1, 1.0, 'text4', true, 4);
INSERT INTO public.planet VALUES (17, 'one', 1, 1, 1.0, 'text5', true, 5);
INSERT INTO public.planet VALUES (18, 'one', 1, 1, 1.0, 'text6', true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'one', 1, 1, 1.0, 'text1', true, 1);
INSERT INTO public.star VALUES (2, 'one', 1, 1, 1.0, 'text2', true, 2);
INSERT INTO public.star VALUES (3, 'one', 1, 1, 1.0, 'text3', true, 3);
INSERT INTO public.star VALUES (4, 'one', 1, 1, 1.0, 'text4', true, 4);
INSERT INTO public.star VALUES (5, 'one', 1, 1, 1.0, 'text5', true, 5);
INSERT INTO public.star VALUES (6, 'one', 1, 1, 1.0, 'text6', true, 6);


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 'first', 1.0, 1);
INSERT INTO public.table5 VALUES (2, 'secnd', 2.0, 2);
INSERT INTO public.table5 VALUES (3, 'third', 3.0, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 18, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: table5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.table5_id_seq', 3, true);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (id);


--
-- Name: table5 table5_col1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_col1_key UNIQUE (col1);


--
-- Name: table5 table5_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT table5_id PRIMARY KEY (id);


--
-- Name: moon id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id FOREIGN KEY (planet_id) REFERENCES public.planet(id);


--
-- Name: planet id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id FOREIGN KEY (star_id) REFERENCES public.star(id);


--
-- Name: star id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(id);


--
-- PostgreSQL database dump complete
--