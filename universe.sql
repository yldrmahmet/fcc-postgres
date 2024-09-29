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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    numberofstars numeric,
    galaxysize text,
    description text
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
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    description text,
    color character varying(30),
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

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: other; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.other (
    other_id integer NOT NULL,
    name character varying(30),
    description text NOT NULL,
    desc2 character varying(30)
);


ALTER TABLE public.other OWNER TO freecodecamp;

--
-- Name: other_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.other_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.other_id_seq OWNER TO freecodecamp;

--
-- Name: other_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.other_id_seq OWNED BY public.other.other_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    orderofplanet integer,
    havemoon boolean,
    haslife boolean,
    description text,
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

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    numberofplanets integer,
    description text,
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

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: other other_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other ALTER COLUMN other_id SET DEFAULT nextval('public.other_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('andromeda', 4, 10, 'big', 'good');
INSERT INTO public.galaxy VALUES ('andromedaa', 5, 10, 'big', 'goodd');
INSERT INTO public.galaxy VALUES ('ansdromedaa', 6, 10, 'big', 'gsoodd');
INSERT INTO public.galaxy VALUES ('ansdromeasddaa', 7, 10, 'big', '2gsoodd');
INSERT INTO public.galaxy VALUES ('andromdeda', 8, 10, 'big', 'ngood');
INSERT INTO public.galaxy VALUES ('andromgdeda', 9, 10, 'big', 'ngonod');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon A', 14, 'A bright moon.', 'White', 13);
INSERT INTO public.moon VALUES ('Moon B', 15, 'A rocky moon.', 'Gray', 14);
INSERT INTO public.moon VALUES ('Moon C', 16, 'An icy moon.', 'Blue', 15);
INSERT INTO public.moon VALUES ('Moon D', 17, 'A volcanic moon.', 'Red', 16);
INSERT INTO public.moon VALUES ('Moon E', 18, 'A small moon.', 'Yellow', 17);
INSERT INTO public.moon VALUES ('Moon F', 19, 'A large moon.', 'Green', 18);
INSERT INTO public.moon VALUES ('Moon G', 20, 'A mysterious moon.', 'Purple', 19);
INSERT INTO public.moon VALUES ('Moon H', 21, 'A barren moon.', 'Brown', 20);
INSERT INTO public.moon VALUES ('Moon I', 22, 'A gas-rich moon.', 'Orange', 21);
INSERT INTO public.moon VALUES ('Moon J', 23, 'A forested moon.', 'Dark Green', 22);
INSERT INTO public.moon VALUES ('Moon K', 24, 'A distant moon.', 'Light Blue', 23);
INSERT INTO public.moon VALUES ('Moon L', 25, 'A moon with rings.', 'Light Yellow', 24);
INSERT INTO public.moon VALUES ('Moon M', 26, 'A glowing moon.', 'Silver', 13);
INSERT INTO public.moon VALUES ('Moon N', 27, 'An ancient moon.', 'Copper', 14);
INSERT INTO public.moon VALUES ('Moon O', 28, 'A swirling moon.', 'Teal', 15);
INSERT INTO public.moon VALUES ('Moon P', 29, 'A shadowy moon.', 'Dark Blue', 16);
INSERT INTO public.moon VALUES ('Moon Q', 30, 'A floating moon.', 'Magenta', 17);
INSERT INTO public.moon VALUES ('Moon R', 31, 'A shining moon.', 'Gold', 18);
INSERT INTO public.moon VALUES ('Moon S', 32, 'A hidden moon.', 'Lavender', 19);
INSERT INTO public.moon VALUES ('Moon T', 33, 'A colorful moon.', 'Rainbow', 20);


--
-- Data for Name: other; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.other VALUES (1, 'sa', 'as', NULL);
INSERT INTO public.other VALUES (2, 'as', 'sa', NULL);
INSERT INTO public.other VALUES (3, 'slm', 'mrb', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet A', 13, 1, true, false, 'The first planet.', 7);
INSERT INTO public.planet VALUES ('Planet B', 14, 2, false, true, 'The second planet.', 8);
INSERT INTO public.planet VALUES ('Planet C', 15, 3, true, true, 'The third planet.', 9);
INSERT INTO public.planet VALUES ('Planet D', 16, 4, false, false, 'The fourth planet.', 10);
INSERT INTO public.planet VALUES ('Planet E', 17, 5, true, true, 'The fifth planet.', 11);
INSERT INTO public.planet VALUES ('Planet F', 18, 6, false, false, 'The sixth planet.', 12);
INSERT INTO public.planet VALUES ('Planet G', 19, 7, true, false, 'The seventh planet.', 7);
INSERT INTO public.planet VALUES ('Planet H', 20, 8, false, true, 'The eighth planet.', 8);
INSERT INTO public.planet VALUES ('Planet I', 21, 9, true, true, 'The ninth planet.', 9);
INSERT INTO public.planet VALUES ('Planet J', 22, 10, false, false, 'The tenth planet.', 10);
INSERT INTO public.planet VALUES ('Planet K', 23, 11, true, false, 'The eleventh planet.', 11);
INSERT INTO public.planet VALUES ('Planet L', 24, 12, false, true, 'The twelfth planet.', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Star A', 7, 3, 'A bright star.', 4);
INSERT INTO public.star VALUES ('Star B', 8, 5, 'A medium star.', 5);
INSERT INTO public.star VALUES ('Star C', 9, 1, 'A small star.', 6);
INSERT INTO public.star VALUES ('Star D', 10, 7, 'A giant star.', 7);
INSERT INTO public.star VALUES ('Star E', 11, 2, 'A red star.', 8);
INSERT INTO public.star VALUES ('Star F', 12, 4, 'A blue star.', 9);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 9, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 33, true);


--
-- Name: other_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.other_id_seq', 3, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 24, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


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
-- Name: other other_desc2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_desc2_key UNIQUE (desc2);


--
-- Name: other other_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.other
    ADD CONSTRAINT other_pkey PRIMARY KEY (other_id);


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
-- Name: star fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

