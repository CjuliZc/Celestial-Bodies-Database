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
    name character varying(30) NOT NULL,
    distance_id integer NOT NULL,
    distance_from_earth integer NOT NULL,
    distance_from_sun integer,
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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    galaxy_classes text,
    galaxy_hubble boolean NOT NULL,
    galaxy_no_type integer NOT NULL
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    moon_radius_km integer,
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
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
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    star_classification character varying(10) NOT NULL,
    star_temp_celsius integer,
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

INSERT INTO public.distance VALUES ('mercurio', 1, 91690000, 57910000, 1);
INSERT INTO public.distance VALUES ('venus', 2, 42000000, 108200000, 2);
INSERT INTO public.distance VALUES ('tierra', 3, 0, 146600000, 3);
INSERT INTO public.distance VALUES ('marte', 4, 69000000, 227940000, 4);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('centaurus A', 1, 'eliptical', true, 4);
INSERT INTO public.galaxy VALUES ('maffei 1', 2, 'eliptical', true, 4);
INSERT INTO public.galaxy VALUES ('milky way', 3, 'spiral', true, 16);
INSERT INTO public.galaxy VALUES ('andromeda', 4, 'spiral', true, 16);
INSERT INTO public.galaxy VALUES ('messier 108', 5, 'barrel spiral', true, 5);
INSERT INTO public.galaxy VALUES ('megallanic clouds', 6, 'barred spiral', true, 5);
INSERT INTO public.galaxy VALUES ('pegasus', 7, 'dwarf', true, 6);
INSERT INTO public.galaxy VALUES ('leo I', 8, 'dwarf', true, 6);
INSERT INTO public.galaxy VALUES ('leo II', 9, 'dwarf', true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon', 1, 2, 0, 'NN', 3);
INSERT INTO public.moon VALUES ('phobos', 2, 11, 1877, 'Hall', 4);
INSERT INTO public.moon VALUES ('deimos', 3, 6, 1877, 'Hall', 4);
INSERT INTO public.moon VALUES ('io', 4, 2, 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES ('europa', 5, 2, 1610, 'Galileo', 5);
INSERT INTO public.moon VALUES ('mimas', 6, 198, 1798, 'Herschel', 6);
INSERT INTO public.moon VALUES ('titan', 7, 3, 1655, 'Huygens', 6);
INSERT INTO public.moon VALUES ('dione', 8, 561, 1684, 'Cassini', 6);
INSERT INTO public.moon VALUES ('rhea', 9, 764, 1684, 'Cassini', 6);
INSERT INTO public.moon VALUES ('ariel', 10, 579, 1851, 'Lassel', 7);
INSERT INTO public.moon VALUES ('titania', 11, 789, 1787, 'Herschel', 7);
INSERT INTO public.moon VALUES ('miranda', 12, 236, 1948, 'Kuiper', 7);
INSERT INTO public.moon VALUES ('oberon', 13, 761, 1787, 'Herschel', 7);
INSERT INTO public.moon VALUES ('triton', 14, 1, 1846, 'Lassel', 8);
INSERT INTO public.moon VALUES ('galatea', 15, 88, 1989, 'Synnott', 8);
INSERT INTO public.moon VALUES ('charon', 16, 606, 1978, 'Christy', 9);
INSERT INTO public.moon VALUES ('kerberos', 17, 7, 2011, 'Showalter', 9);
INSERT INTO public.moon VALUES ('dysnomia', 18, 350, 2005, 'Brown', 13);
INSERT INTO public.moon VALUES ('hippocamp', 19, 17, 2013, 'Showalter', 8);
INSERT INTO public.moon VALUES ('puck', 20, 81, 1985, 'Gladman', 7);
INSERT INTO public.moon VALUES ('juliet', 21, 47, 1986, 'Synnott', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('mercury', 1, 'terrestrials', 0, 0.383, false, 3);
INSERT INTO public.planet VALUES ('venus', 2, 'terrestrials', 0, 0.949, false, 3);
INSERT INTO public.planet VALUES ('earth', 3, 'terrestrials', 1, 1.000, false, 3);
INSERT INTO public.planet VALUES ('mars', 4, 'terrestrials', 2, 0.532, false, 3);
INSERT INTO public.planet VALUES ('jupiter', 5, 'gas giants', 80, 11.209, false, 3);
INSERT INTO public.planet VALUES ('saturn', 6, 'gas giants', 83, 9.449, true, 3);
INSERT INTO public.planet VALUES ('uranus', 7, 'ice giants', 27, 4.007, true, 3);
INSERT INTO public.planet VALUES ('neptune', 8, 'ice giants', 14, 3.883, true, 3);
INSERT INTO public.planet VALUES ('pluto', 9, 'dwarf planet', 5, 2.380, false, 3);
INSERT INTO public.planet VALUES ('ceres', 10, 'dwarf planet', 0, 0.476, false, 3);
INSERT INTO public.planet VALUES ('makemake', 11, 'dwarf planet', 0, 0.715, false, 3);
INSERT INTO public.planet VALUES ('haumea', 12, 'dwarf planet', 0, 0.620, false, 3);
INSERT INTO public.planet VALUES ('eris', 13, 'dwarf planet', 1, 1.163, false, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('wold rayet', 1, 'wo', 100000, 'blue', 1);
INSERT INTO public.star VALUES ('spica', 2, 'b', 25000, 'bluish white', 2);
INSERT INTO public.star VALUES ('sun', 3, 'g', 6000, 'yellow', 3);
INSERT INTO public.star VALUES ('sirio', 4, 'a', 115000, 'white', 4);
INSERT INTO public.star VALUES ('canopus', 5, 'f', 7500, 'yellowish white', 5);
INSERT INTO public.star VALUES ('arturo', 6, 'k', 4700, 'yellowish orange', 6);
INSERT INTO public.star VALUES ('antares', 7, 'm', 3000, 'orange', 7);
INSERT INTO public.star VALUES ('cw leonis', 8, 'r', 2600, 'reddish orange', 8);
INSERT INTO public.star VALUES ('andromedae', 9, 's', 1400, 'red', 9);


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
-- Name: distance distance_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_name_key UNIQUE (name);


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
-- Name: distance distance_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.distance
    ADD CONSTRAINT distance_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

