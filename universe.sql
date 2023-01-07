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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer NOT NULL,
    age integer NOT NULL,
    mass numeric(4,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer NOT NULL,
    age integer NOT NULL,
    mass numeric(4,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    planet_id integer NOT NULL,
    distance integer NOT NULL,
    age integer NOT NULL,
    mass numeric(4,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    star_id integer NOT NULL,
    distance integer NOT NULL,
    age integer NOT NULL,
    mass numeric(4,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    galaxy_id integer NOT NULL,
    distance integer NOT NULL,
    age integer NOT NULL,
    mass numeric(4,1) NOT NULL,
    description text NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


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
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 'Sagittarius A*', 26, 14, 300.0, 'Blackhole at the center of the Milky Way Galaxy.', false, false);
INSERT INTO public.blackhole VALUES (2, 'M31-A', 3, 11, 320.0, 'One of the two blackholes of the pair in the center of Andromeda.', false, false);
INSERT INTO public.blackhole VALUES (3, 'M31-B', 3, 11, 320.0, 'The second of the two blackholes of the pair in the center of Andromeda.', false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way Galaxy', 0, 12, 1.2, 'Home of the Earth and only known galaxy with life.', true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 3, 10, 1.0, 'Nearest galaxy to the Milky Way, which it is expected to collide with in 4-5 billion years.', false, false);
INSERT INTO public.galaxy VALUES (3, 'Messier 82', 12, 11, 0.0, 'Starburst galaxy approximately 12 million light-years away in the constellation Ursa Major', false, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 101', 21, 10, 0.0, 'Face-on spiral galaxy also located in the constellation Ursa Major.', false, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 104', 31, 11, 0.0, 'Peculiar galaxy located in the borders of the constellations Virgo and Corvus.', false, false);
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', 613, 12, 0.0, 'Peculiar galaxy located in the constellation of Serpens Caput.', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 0, 4, 0.4, 'The only moon belonging to Earth.', false, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 0, 5, 5.7, 'One of the two moons belonging to Mars.', false, true);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 0, 5, 0.9, 'The other of the two moons belonging to Mars.', false, true);
INSERT INTO public.moon VALUES (4, 'Io', 5, 1, 5, 4.8, 'One of the four Galilean moons belonging to Jupiter.', false, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 1, 5, 2.6, 'The second of the four Galilean moons belonging to Jupiter.', false, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 1, 5, 9.5, 'The third of the four Galilean moons belonging to Jupiter.', false, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1, 5, 6.0, 'The final of the four Galilean moons belonging to Jupiter.', false, true);
INSERT INTO public.moon VALUES (8, 'Triton', 7, 1, 5, 3.7, 'One of the moons of Neptune, which comprises 99.5% of the orbiting mass of the planet.', false, true);
INSERT INTO public.moon VALUES (9, 'Miranda', 8, 1, 5, 3.2, 'One of the five round moons of Uranus.', false, true);
INSERT INTO public.moon VALUES (10, 'Ariel', 8, 1, 5, 3.8, 'The second of the five round moons of Uranus.', false, true);
INSERT INTO public.moon VALUES (11, 'Umbriel', 8, 1, 5, 3.7, 'The third of the five round moons of Uranus.', false, true);
INSERT INTO public.moon VALUES (12, 'Titania', 8, 1, 5, 4.3, 'The fourth of the five round moons of Uranus.', false, true);
INSERT INTO public.moon VALUES (13, 'Oberon', 8, 1, 5, 3.6, 'The final of the five round moons of Uranus.', false, true);
INSERT INTO public.moon VALUES (14, 'Metis', 5, 1, 5, 2.1, 'One of the four moons in the Amalthea group of Jupiter.', false, true);
INSERT INTO public.moon VALUES (15, 'Adrastea', 5, 1, 5, 3.0, 'The second of the four moons in the Amalthea group of Jupiter.', false, true);
INSERT INTO public.moon VALUES (16, 'Amalthea', 5, 1, 5, 2.1, 'The third of the four moons in the Amalthea group of Jupiter.', false, true);
INSERT INTO public.moon VALUES (17, 'Thebe', 5, 1, 5, 2.9, 'The final of the four moons in the Amalthea group of Jupiter.', false, true);
INSERT INTO public.moon VALUES (18, 'Mimas', 6, 1, 5, 1.2, 'One of the major moons of Saturn.', false, true);
INSERT INTO public.moon VALUES (19, 'Rhea', 6, 1, 5, 2.3, 'Another major moon of Saturn.', false, true);
INSERT INTO public.moon VALUES (20, 'Titan', 6, 1, 5, 2.9, 'Yet another major moon of Saturn.', false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, 5, 3.3, 'Closest planet to Helios.', false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0, 5, 4.1, 'Second planet from Helios, after Mercury.', false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 0, 5, 4.0, 'Only known planet with life.', true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 0, 5, 3.8, 'Fourth closest planet to Helios, next after Earth.', false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 0, 5, 12.3, 'Fifth planet to Helios, first after the asteroid belt following Mars.', false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 0, 5, 10.6, 'Sixth planet to Helios, next after Jupiter.', false, true);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 0, 5, 7.9, 'Seventh planet to Helios, next after Saturn.', false, true);
INSERT INTO public.planet VALUES (8, 'Uranus', 1, 0, 5, 7.7, 'Eighth and final planet to Helios, next after Neptune.', false, true);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri B', 3, 8, 4, 4.4, 'Potential host of life within the habitable zone of Proxima Centauri.', false, false);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri C', 3, 8, 4, 28.1, 'Gas dwarf planet orbiting Proxima Centauri.', false, false);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri D', 3, 8, 4, 1.2, 'Candidate planet orbiting Proxima Centauri.', false, false);
INSERT INTO public.planet VALUES (12, 'Barnards Star B', 4, 6, 12, 12.3, 'Only known star to orbit Barnards Star.', false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Helios', 1, 0, 5, 19.0, 'The reason for life on Earth.', false, true);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2, 97, 70, 3.8, 'Officially named Alpheratz.', false, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 4, 5, 0.1, 'Nearest known star to Helios.', false, true);
INSERT INTO public.star VALUES (4, 'Barnards Star', 1, 6, 10, 0.1, 'Nearest star to Helios outside the three stars in the Alpha Centauri system', false, true);
INSERT INTO public.star VALUES (5, 'Epsilon Eridani', 1, 10, 600, 0.8, 'Located in the southern constellation of Eridanus.', false, true);
INSERT INTO public.star VALUES (6, 'Tau Ceti', 1, 12, 6, 0.8, 'Located in the constellation Cetus and spectrally similar to Helios.', false, true);


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: blackhole blackhole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_description_key UNIQUE (description);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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

