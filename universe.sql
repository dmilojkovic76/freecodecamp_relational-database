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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth numeric(4,1)
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
    planet_id integer,
    description text,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth numeric(4,1)
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
    star_id integer,
    description text,
    has_life boolean,
    has_moon boolean,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth numeric(4,1),
    number_of_moons integer,
    number_of_stars integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    age_in_millions_of_years numeric(4,1),
    distance_from_earth numeric(4,1)
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our Galaxy', 12.2, NULL);
INSERT INTO public.galaxy VALUES (2, 'Caseopeia', 'Imaginary galaxy 1', 33.4, NULL);
INSERT INTO public.galaxy VALUES (3, 'Xydrium', 'Imaginary galaxy 2', 123.4, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'Imaginary galaxy 3', 12.2, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'Imaginary galaxy 4', 33.4, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'Imaginary galaxy 5', 123.4, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 'Moon 1', NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Moon 2', 2, 'Moon 2', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon 3', 3, 'Moon 3', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon 4', 4, 'Moon 4', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Moon 5', 5, 'Moon 5', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Moon 6', 6, 'Moon 6', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon 7', 7, 'Moon 7', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Moon 8', 8, 'Moon 8', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Moon 9', 9, 'Moon 9', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Moon 10', 10, 'Moon 10', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Moon 11', 11, 'Moon 11', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Moon 12', 12, 'Moon 12', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Moon 13', 1, 'Moon 13', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Moon 14', 1, 'Moon 14', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Moon 15', 1, 'Moon 15', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Moon 16', 1, 'Moon 16', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Moon 17', 1, 'Moon 17', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Moon 18', 1, 'Moon 18', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Moon 19', 1, 'Moon 19', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Moon 20', 1, 'Moon 20', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Our planet', true, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Planet 1', 2, 'Planet 1', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Planet 2', 2, 'Planet 2', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Planet 3', 1, 'Planet 3', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Planet 4', 3, 'Planet 4', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Planet 5', 4, 'Planet 5', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 6', 1, 'Planet 6', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Planet 7', 3, 'Planet 7', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Planet 8', 4, 'Planet 8', false, true, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Planet 9', 4, 'Planet 9', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Planet 10', 5, 'Planet 10', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Planet 11', 6, 'Planet 11', false, false, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Planet 12', 5, 'Planet 12', false, true, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Type 1', NULL);
INSERT INTO public.planet_types VALUES (2, 'Type 2', NULL);
INSERT INTO public.planet_types VALUES (3, 'Type 3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'Our Sun', NULL, NULL);
INSERT INTO public.star VALUES (2, 'Big Yellow Star', 2, 'Imaginary Star 1', NULL, NULL);
INSERT INTO public.star VALUES (3, 'Small blue one', 3, 'Imaginary Star 2', NULL, NULL);
INSERT INTO public.star VALUES (4, 'Star 4', 4, 'Imaginary Star 3', NULL, NULL);
INSERT INTO public.star VALUES (5, 'Star 5', 5, 'Imaginary Star 4', NULL, NULL);
INSERT INTO public.star VALUES (6, 'Star 6', 6, 'Imaginary Star 5', NULL, NULL);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 3, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

