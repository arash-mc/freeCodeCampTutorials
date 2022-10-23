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
-- Name: editing_authors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.editing_authors (
    editing_authors_id integer NOT NULL,
    name character varying(30) NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.editing_authors OWNER TO freecodecamp;

--
-- Name: editing_authors_editing_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.editing_authors_editing_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.editing_authors_editing_authors_id_seq OWNER TO freecodecamp;

--
-- Name: editing_authors_editing_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.editing_authors_editing_authors_id_seq OWNED BY public.editing_authors.editing_authors_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    size numeric,
    is_visible boolean,
    is_visible_habel boolean
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

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size numeric,
    description text
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

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    size numeric,
    description text,
    no_moons integer
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

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size numeric,
    description text,
    no_planets integer
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

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: editing_authors editing_authors_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.editing_authors ALTER COLUMN editing_authors_id SET DEFAULT nextval('public.editing_authors_editing_authors_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: editing_authors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.editing_authors VALUES (1, 'arash', 'arimoo');
INSERT INTO public.editing_authors VALUES (2, 'kourosh', 'kurimoo');
INSERT INTO public.editing_authors VALUES (3, 'rouzbeh', 'rouzimou');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'our home', 1500, true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'neighbor', 2500, true, true);
INSERT INTO public.galaxy VALUES (3, 'Unknown', 'we don''t konw it', 200, false, false);
INSERT INTO public.galaxy VALUES (4, 'Canis', 'no description', 2000, false, false);
INSERT INTO public.galaxy VALUES (5, 'Magellantic', 'no description', 3400, false, false);
INSERT INTO public.galaxy VALUES (6, 'Cygnus', 'no description', 30000, false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 4, NULL, 'old earth moon');
INSERT INTO public.moon VALUES (3, 'Europa', 5, NULL, 'jupiter moon');
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, 'jupiter moon');
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, NULL, 'jupiter moon');
INSERT INTO public.moon VALUES (6, 'Callisto', 5, NULL, 'jupiter moon');
INSERT INTO public.moon VALUES (7, 'Adrastea', 5, NULL, 'jupiter moon');
INSERT INTO public.moon VALUES (8, 'Miranda', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (9, 'Titania', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (10, 'Oberon', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (11, 'Ariel', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (12, 'Umbriel', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (13, 'Puck', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (14, 'Juliet', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (15, 'Cordelia', 6, NULL, 'Uranus  moon');
INSERT INTO public.moon VALUES (16, 'Triton', 7, NULL, 'Neptune  moon');
INSERT INTO public.moon VALUES (17, 'Hippocamp', 7, NULL, 'Neptune  moon');
INSERT INTO public.moon VALUES (18, 'Galatea', 7, NULL, 'Neptune  moon');
INSERT INTO public.moon VALUES (19, 'Phobos', 2, NULL, 'Elon Musk');
INSERT INTO public.moon VALUES (20, 'Deimos', 2, NULL, 'Elon Musk');
INSERT INTO public.moon VALUES (21, 'Titan', 13, NULL, 'ring planet');
INSERT INTO public.moon VALUES (22, 'Enceladus', 13, NULL, 'ring planet');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, 10, 'our system', NULL);
INSERT INTO public.planet VALUES (2, 'mars', 1, 20, 'our system', NULL);
INSERT INTO public.planet VALUES (3, 'venus', 1, 10, 'our system', NULL);
INSERT INTO public.planet VALUES (4, 'earth', 1, 20, 'our system', NULL);
INSERT INTO public.planet VALUES (5, 'Jupyter', 1, 100, 'our system', NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 100, 'our system', NULL);
INSERT INTO public.planet VALUES (7, 'neptune', 1, 10, 'our system', NULL);
INSERT INTO public.planet VALUES (8, 'pluto', 1, 20, 'our system', NULL);
INSERT INTO public.planet VALUES (13, 'saturn', 1, 10, 'our system', NULL);
INSERT INTO public.planet VALUES (14, 'planet1', 2, 20, 'unknown system', NULL);
INSERT INTO public.planet VALUES (15, 'planet', 5, 10, 'unkown system', NULL);
INSERT INTO public.planet VALUES (16, 'planet3', 4, 10, 'unknown system', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 1, 1000, 'our star', NULL);
INSERT INTO public.star VALUES (2, 'star1', 2, 1000, 'not ours', NULL);
INSERT INTO public.star VALUES (4, 'star2', 3, 1000, 'not ours', NULL);
INSERT INTO public.star VALUES (5, 'star3', 4, 1000, 'not ours', NULL);
INSERT INTO public.star VALUES (6, 'star4', 4, 1000, 'not ours', NULL);
INSERT INTO public.star VALUES (7, 'star5', 5, 1000, 'not ours', NULL);


--
-- Name: editing_authors_editing_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.editing_authors_editing_authors_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 16, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: editing_authors editing_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.editing_authors
    ADD CONSTRAINT editing_authors_pkey PRIMARY KEY (editing_authors_id);


--
-- Name: editing_authors editing_authors_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.editing_authors
    ADD CONSTRAINT editing_authors_username_key UNIQUE (username);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key1 UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


