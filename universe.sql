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
-- Name: constelation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constelation (
    constelation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    meaning text,
    brightest_star character varying(20)
);


ALTER TABLE public.constelation OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constelation_constelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constelation_constelation_id_seq OWNER TO freecodecamp;

--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constelation_constelation_id_seq OWNED BY public.constelation.constelation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    speed integer,
    description text,
    magnitude numeric,
    distance_light_year character varying(15)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discover_year integer,
    discovered_by character varying(30),
    planet character varying(30),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric,
    satelites integer,
    has_ring boolean,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    constelation character varying(30),
    magnitude numeric,
    distance_light_year text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: constelation constelation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation ALTER COLUMN constelation_id SET DEFAULT nextval('public.constelation_constelation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constelation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constelation VALUES (1, 'Andromeda', 'The chained maiden', 'Alpheratz');
INSERT INTO public.constelation VALUES (2, 'Antilia', 'Air pump', 'Antiliae');
INSERT INTO public.constelation VALUES (3, 'Apus', 'Bird-of-paradise', 'Apodis');
INSERT INTO public.constelation VALUES (4, 'Cancer', 'Crab', 'Tarf');
INSERT INTO public.constelation VALUES (5, 'Scorpius', 'Scorpion', 'Antares');
INSERT INTO public.constelation VALUES (6, 'Orion', 'Orion', 'Rigel');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkway', 150, 'Our galaxy', -6.5, '0');
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 200, 'Brightest ing the sky', 0.9, '160000');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 210, 'Visible only southern hemisphere', 2.7, '200000');
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 311, 'The great Andromeda Nebula', 3.4, '2500000');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 319, '', 6.84, '13700000');
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 566, 'Able to see Messier 81 unver good conditions', 6.94, '12000000');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0, '', 'Earth', 4);
INSERT INTO public.moon VALUES (2, 'Fobos', 1877, 'Hall', 'Mars', 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, 'Hall', 'Mars', 5);
INSERT INTO public.moon VALUES (4, 'Io', 1610, 'Galileu', 'Jupter', 6);
INSERT INTO public.moon VALUES (5, 'Europe', 1610, 'Galileu', 'Jupter', 6);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 1610, 'Galileu', 'Jupter', 6);
INSERT INTO public.moon VALUES (7, 'Calisto', 1610, 'Galileu', 'Jupter', 6);
INSERT INTO public.moon VALUES (8, 'Amalteia', 1892, 'Barnard', 'Jupter', 6);
INSERT INTO public.moon VALUES (9, 'Himalia', 1904, 'Perrine', 'Jupter', 6);
INSERT INTO public.moon VALUES (10, 'Elara', 1905, 'Perrine', 'Jupter', 6);
INSERT INTO public.moon VALUES (11, 'Pasife', 1908, 'Melotte', 'Jupter', 6);
INSERT INTO public.moon VALUES (12, 'Sinope', 1914, 'Nicholson', 'Jupter', 6);
INSERT INTO public.moon VALUES (13, 'Leda', 1974, 'Kowal', 'Jupter', 6);
INSERT INTO public.moon VALUES (14, 'Tebe', 1979, 'Synnott', 'Jupter', 6);
INSERT INTO public.moon VALUES (15, 'Mimas', 1789, 'Herschel', 'Saturn', 7);
INSERT INTO public.moon VALUES (16, 'Dione', 1684, 'Cassini', 'Saturn', 7);
INSERT INTO public.moon VALUES (17, 'Reia', 1672, 'Cassini', 'Saturn', 7);
INSERT INTO public.moon VALUES (18, 'Titã', 1655, 'Huygens', 'Saturn', 7);
INSERT INTO public.moon VALUES (19, 'Encélado', 1789, 'Herschel', 'Saturn', 7);
INSERT INTO public.moon VALUES (20, 'Tétis', 1684, 'Cassini', 'Saturn', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.06, 0, false, false);
INSERT INTO public.planet VALUES (2, 'Venus', 0.81, 0, false, false);
INSERT INTO public.planet VALUES (4, 'Earth', 1.0, 1, false, true);
INSERT INTO public.planet VALUES (5, 'Mars', 0.11, 2, false, false);
INSERT INTO public.planet VALUES (6, 'Jupter', 317.83, 79, true, false);
INSERT INTO public.planet VALUES (7, 'Saturn', 95.16, 82, true, false);
INSERT INTO public.planet VALUES (8, 'Urane', 14.5, 27, true, false);
INSERT INTO public.planet VALUES (9, 'Neptune', 17.15, 14, true, false);
INSERT INTO public.planet VALUES (10, 'Pluton', 13.15, 12, false, false);
INSERT INTO public.planet VALUES (11, 'Fini', 122.15, 0, false, false);
INSERT INTO public.planet VALUES (12, 'Siril', 18.15, 3, true, false);
INSERT INTO public.planet VALUES (13, 'Athos', 54.15, 1, true, false);
INSERT INTO public.planet VALUES (14, 'Lana', 15.15, 1, true, false);
INSERT INTO public.planet VALUES (15, 'Aviap', 24.05, 1, true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', '', -26.74, '0.000015813');
INSERT INTO public.star VALUES (2, 'Sirius', 'Canis Minor', -1.46, '8.6');
INSERT INTO public.star VALUES (3, 'Canopus', 'Carina', -0.74, '310');
INSERT INTO public.star VALUES (4, 'Alpha Centauri', 'Centaurus', -0.27, '4.4');
INSERT INTO public.star VALUES (5, 'Rigel', 'Orion', 0.13, '860');
INSERT INTO public.star VALUES (6, 'Altair', 'Eagle', 0.76, '17');


--
-- Name: constelation_constelation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constelation_constelation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constelation constelation_constelation_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_constelation_id_key UNIQUE (constelation_id);


--
-- Name: constelation constelation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constelation
    ADD CONSTRAINT constelation_pkey PRIMARY KEY (constelation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

