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
    galaxy_id integer NOT NULL,
    name character varying(255),
    size integer NOT NULL,
    age numeric NOT NULL,
    is_spiral boolean
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
    name character varying(255),
    planet_id integer NOT NULL,
    surface text,
    is_inhabited boolean
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
    name character varying(255),
    star_id integer NOT NULL,
    radius numeric NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet2 (
    planet2_id integer NOT NULL,
    name character varying(255),
    star_id integer NOT NULL,
    radius numeric NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet2 OWNER TO freecodecamp;

--
-- Name: planet2_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet2_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet2_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet2_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet2_planet_id_seq OWNED BY public.planet2.planet2_id;


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
    name character varying(255),
    galaxy_id integer NOT NULL,
    temperature integer NOT NULL,
    is_bright boolean
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
-- Name: planet2 planet2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet2 ALTER COLUMN planet2_id SET DEFAULT nextval('public.planet2_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13.51, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 220000, 10, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 60000, 3, true);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 170000, 21, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 60000, 2, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 50000, 9.8, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Rocky', false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Rocky', false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'Volcanic', false);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'Icy', false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'Icy', false);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'Icy', false);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'Rocky', false);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 'Icy', false);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 'Icy', false);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 'Icy', false);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 'Icy', false);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 'Icy', false);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 'Icy', false);
INSERT INTO public.moon VALUES (15, 'Oberon', 7, 'Icy', false);
INSERT INTO public.moon VALUES (16, 'Titania', 7, 'Icy', false);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 'Icy', false);
INSERT INTO public.moon VALUES (18, 'Ariel', 7, 'Icy', false);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, 'Icy', false);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 'Icy', false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 6371, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 3390, false);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 6052, false);
INSERT INTO public.planet VALUES (4, 'Mercury', 1, 2440, false);
INSERT INTO public.planet VALUES (5, 'Jupiter', 2, 69911, false);
INSERT INTO public.planet VALUES (6, 'Saturn', 2, 58232, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 3, 25362, false);
INSERT INTO public.planet VALUES (8, 'Neptune', 3, 24622, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 4, 1188, false);
INSERT INTO public.planet VALUES (10, 'Eris', 4, 1163, false);
INSERT INTO public.planet VALUES (11, 'Haumea', 5, 620, false);
INSERT INTO public.planet VALUES (12, 'Makemake', 5, 715, false);


--
-- Data for Name: planet2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet2 VALUES (1, 'Earth', 1, 6371, true);
INSERT INTO public.planet2 VALUES (2, 'Mars', 1, 3390, false);
INSERT INTO public.planet2 VALUES (3, 'Venus', 1, 6052, false);
INSERT INTO public.planet2 VALUES (4, 'Mercury', 1, 2440, false);
INSERT INTO public.planet2 VALUES (5, 'Jupiter', 2, 69911, false);
INSERT INTO public.planet2 VALUES (6, 'Saturn', 2, 58232, false);
INSERT INTO public.planet2 VALUES (7, 'Uranus', 3, 25362, false);
INSERT INTO public.planet2 VALUES (8, 'Neptune', 3, 24622, false);
INSERT INTO public.planet2 VALUES (9, 'Pluto', 4, 1188, false);
INSERT INTO public.planet2 VALUES (10, 'Eris', 4, 1163, false);
INSERT INTO public.planet2 VALUES (11, 'Haumea', 5, 620, false);
INSERT INTO public.planet2 VALUES (12, 'Makemake', 5, 715, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 5778, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 9940, true);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 5790, false);
INSERT INTO public.star VALUES (4, 'Arcturus', 1, 4290, true);
INSERT INTO public.star VALUES (5, 'Vega', 2, 9602, false);
INSERT INTO public.star VALUES (6, 'Capella', 2, 5700, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet2_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet2_planet_id_seq', 12, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: planet2 planet2_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet2
    ADD CONSTRAINT planet2_name_key UNIQUE (name);


--
-- Name: planet2 planet2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet2
    ADD CONSTRAINT planet2_pkey PRIMARY KEY (planet2_id);


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
-- Name: planet2 planet2_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet2
    ADD CONSTRAINT planet2_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

