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
-- Name: distance; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.distance (
    distance_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    distance_from_sun integer NOT NULL,
    name character varying(30),
    planet_id integer
);


ALTER TABLE public.distance OWNER TO freecodecamp;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.distance_distance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.distance_distance_id_seq OWNER TO freecodecamp;

--
-- Name: distance_distance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.distance_distance_id_seq OWNED BY public.distance.distance_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    galaxy_classes text,
    galaxy_hubble_photo boolean NOT NULL,
    galaxy_number_types integer NOT NULL
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
    name character varying(40),
    moon_radius_km integer NOT NULL,
    moon_discovery_year numeric NOT NULL,
    moon_discovered_by character varying(30),
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
    name character varying(40),
    planet_classification text NOT NULL,
    planet_moons integer,
    planet_diameter numeric(5,3),
    planet_rings boolean NOT NULL,
    star_id integer
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
    name character varying(40),
    star_classification character varying(10) NOT NULL,
    star_temperature_celsious integer,
    star_color text NOT NULL,
    galaxy_id integer
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
-- Name: distance distance_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance ALTER COLUMN distance_id SET DEFAULT nextval('public.distance_distance_id_seq'::regclass);


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
-- Data for Name: distance; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.distance VALUES (1, 91690000, 57910000, 'mercurio', 1);
INSERT INTO public.distance VALUES (2, 42000000, 108200000, 'venus', 2);
INSERT INTO public.distance VALUES (3, 0, 146600000, 'tierra', 3);
INSERT INTO public.distance VALUES (4, 69000000, 227940000, 'marte', 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'centaurus A', 'eliptical', true, 4);
INSERT INTO public.galaxy VALUES (2, 'maffei 1', 'eliptical', true, 4);
INSERT INTO public.galaxy VALUES (3, 'milky way', 'spiral', true, 16);
INSERT INTO public.galaxy VALUES (4, 'andromeda', 'spiral', true, 16);
INSERT INTO public.galaxy VALUES (5, 'messier 108', 'barred spiral', true, 5);
INSERT INTO public.galaxy VALUES (6, 'megallanic clouds', 'barred spiral', true, 5);
INSERT INTO public.galaxy VALUES (7, 'pegasus', 'dwarf', true, 6);
INSERT INTO public.galaxy VALUES (8, 'leo I', 'dwarf', true, 6);
INSERT INTO public.galaxy VALUES (9, 'leo II', 'dwarf', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 2, 0, 'NN', 3);
INSERT INTO public.moon VALUES (2, 'phobos', 11, 1877, 'hall', 4);
INSERT INTO public.moon VALUES (3, 'deimos', 6, 1877, 'hall', 4);
INSERT INTO public.moon VALUES (4, 'io', 2, 1610, 'galileo', 5);
INSERT INTO public.moon VALUES (5, 'europa', 2, 1610, 'galileo', 5);
INSERT INTO public.moon VALUES (6, 'mimas', 198, 1789, 'herschel', 6);
INSERT INTO public.moon VALUES (7, 'titan', 3, 1655, 'huygens', 6);
INSERT INTO public.moon VALUES (8, 'dione', 561, 1684, 'cassini', 6);
INSERT INTO public.moon VALUES (9, 'rhea', 764, 1684, 'cassini', 6);
INSERT INTO public.moon VALUES (10, 'ariel', 579, 1851, 'lassell', 7);
INSERT INTO public.moon VALUES (11, 'titania', 789, 1787, 'herschel', 7);
INSERT INTO public.moon VALUES (12, 'miranda', 236, 1948, 'kuiper', 7);
INSERT INTO public.moon VALUES (13, 'oberon', 761, 1787, 'herschel', 7);
INSERT INTO public.moon VALUES (14, 'triton', 1, 1846, 'lassell', 8);
INSERT INTO public.moon VALUES (15, 'galatea', 88, 1989, 'synnott', 8);
INSERT INTO public.moon VALUES (16, 'charon', 606, 1978, 'christy', 9);
INSERT INTO public.moon VALUES (17, 'kerberos', 7, 2011, 'showalter', 9);
INSERT INTO public.moon VALUES (18, 'dysnomia', 350, 2005, 'brown', 13);
INSERT INTO public.moon VALUES (19, 'hippocamp', 17, 2013, 'showalter', 8);
INSERT INTO public.moon VALUES (20, 'puck', 81, 1985, 'gladman', 7);
INSERT INTO public.moon VALUES (21, 'juliet', 47, 1986, 'synnott', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 'terrestrials', 0, 0.383, false, 3);
INSERT INTO public.planet VALUES (2, 'venus', 'terrestrials', 0, 0.949, false, 3);
INSERT INTO public.planet VALUES (3, 'earth', 'terrestrials', 1, 1.000, false, 3);
INSERT INTO public.planet VALUES (4, 'mars', 'terrestrials', 2, 0.532, false, 3);
INSERT INTO public.planet VALUES (5, 'jupiter', 'gas giants', 80, 11.209, true, 3);
INSERT INTO public.planet VALUES (6, 'saturn', 'gas giants', 83, 9.449, true, 3);
INSERT INTO public.planet VALUES (7, 'uranus', 'ice giants', 27, 4.007, true, 3);
INSERT INTO public.planet VALUES (8, 'neptune', 'ice giants', 14, 3.883, true, 3);
INSERT INTO public.planet VALUES (9, 'pluto', 'dwarf planet', 5, 2.380, false, 3);
INSERT INTO public.planet VALUES (10, 'ceres', 'dwarf planet', 0, 0.476, false, 3);
INSERT INTO public.planet VALUES (11, 'makemake', 'dwarf planet', 0, 0.715, false, 3);
INSERT INTO public.planet VALUES (12, 'haumea', 'dwarf planet', 2, 0.620, false, 3);
INSERT INTO public.planet VALUES (13, 'eris', 'dwarf planet', 1, 1.163, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'wolf rayet', 'wo', 100000, 'blue', 1);
INSERT INTO public.star VALUES (2, 'spica', 'b', 25000, 'bluish white', 2);
INSERT INTO public.star VALUES (3, 'sun', 'g', 6000, 'yellow', 3);
INSERT INTO public.star VALUES (4, 'sirio', 'a', 11500, 'white', 4);
INSERT INTO public.star VALUES (5, 'canopus', 'f', 7500, 'yellowish white', 5);
INSERT INTO public.star VALUES (6, 'arturo', 'k', 4700, 'yellowish orange', 6);
INSERT INTO public.star VALUES (7, 'antares', 'm', 3000, 'orange', 7);
INSERT INTO public.star VALUES (8, 'cw leonis', 'r', 2600, 'reddish orange', 8);
INSERT INTO public.star VALUES (9, 'andromedae', 's', 1400, 'red', 9);


--
-- Name: distance_distance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.distance_distance_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: distance distance_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: distance distance_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_pkey PRIMARY KEY (distance_id);


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
-- Name: star galaxy_pkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_pkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_pkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_pkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: distance planet_pkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT planet_pkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_pkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_pkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
