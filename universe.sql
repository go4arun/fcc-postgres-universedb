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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    size_in_million_km integer,
    description text,
    weight_in_million_tonnes numeric,
    is_sperical boolean,
    galaxy_id integer NOT NULL
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
    age_in_million_years integer,
    size_in_million_km integer,
    description text,
    weight_in_million_tonnes numeric,
    is_sperical boolean,
    moon_id integer NOT NULL,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    age_in_million_years integer,
    size_in_million_km integer,
    description text,
    weight_in_million_tonnes numeric,
    is_sperical boolean,
    planet_id integer NOT NULL,
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
    name character varying(30),
    age_in_million_years integer,
    size_in_million_km integer,
    description text,
    weight_in_million_tonnes numeric,
    is_sperical boolean,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Ursa Major', NULL);
INSERT INTO public.constellation VALUES (2, 'Orion', NULL);
INSERT INTO public.constellation VALUES (3, 'Leo', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Ursa Major III', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('Draco II', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('KY Cygni', NULL, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('Stephenson 2-18', NULL, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('Westerlund 1-26', NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.moon VALUES ('Europa', NULL, NULL, NULL, NULL, NULL, 2, 1);
INSERT INTO public.moon VALUES ('Callisto', NULL, NULL, NULL, NULL, NULL, 3, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 1', NULL, NULL, NULL, NULL, NULL, 4, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 2', NULL, NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 3', NULL, NULL, NULL, NULL, NULL, 6, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 4', NULL, NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 5', NULL, NULL, NULL, NULL, NULL, 8, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 6', NULL, NULL, NULL, NULL, NULL, 9, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 7', NULL, NULL, NULL, NULL, NULL, 10, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 8', NULL, NULL, NULL, NULL, NULL, 11, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 9', NULL, NULL, NULL, NULL, NULL, 12, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 10', NULL, NULL, NULL, NULL, NULL, 13, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 11', NULL, NULL, NULL, NULL, NULL, 14, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 12', NULL, NULL, NULL, NULL, NULL, 15, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 13', NULL, NULL, NULL, NULL, NULL, 16, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 14', NULL, NULL, NULL, NULL, NULL, 17, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 15', NULL, NULL, NULL, NULL, NULL, 18, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 16', NULL, NULL, NULL, NULL, NULL, 19, 1);
INSERT INTO public.moon VALUES ('Jupiter Moon 17', NULL, NULL, NULL, NULL, NULL, 20, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Jupiter', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES ('Uranus', NULL, NULL, NULL, NULL, NULL, 2, 1);
INSERT INTO public.planet VALUES ('Mars', NULL, NULL, NULL, NULL, NULL, 3, 1);
INSERT INTO public.planet VALUES ('Mercury', NULL, NULL, NULL, NULL, NULL, 4, 1);
INSERT INTO public.planet VALUES ('Venus', NULL, NULL, NULL, NULL, NULL, 5, 1);
INSERT INTO public.planet VALUES ('Earth', NULL, NULL, NULL, NULL, NULL, 6, 1);
INSERT INTO public.planet VALUES ('Saturn', NULL, NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Neptune', NULL, NULL, NULL, NULL, NULL, 8, 1);
INSERT INTO public.planet VALUES ('Pluto', NULL, NULL, NULL, NULL, NULL, 9, 1);
INSERT INTO public.planet VALUES ('Eris', NULL, NULL, NULL, NULL, NULL, 10, 1);
INSERT INTO public.planet VALUES ('Haumea', NULL, NULL, NULL, NULL, NULL, 11, 1);
INSERT INTO public.planet VALUES ('Makemake', NULL, NULL, NULL, NULL, NULL, 12, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('VY Canis Majoris', NULL, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.star VALUES ('NML Cygni', NULL, NULL, NULL, NULL, NULL, 1, 2);
INSERT INTO public.star VALUES ('EV Carinae', NULL, NULL, NULL, NULL, NULL, 1, 3);
INSERT INTO public.star VALUES ('VV Cephei A', NULL, NULL, NULL, NULL, NULL, 1, 4);
INSERT INTO public.star VALUES ('WOH G64', NULL, NULL, NULL, NULL, NULL, 1, 5);
INSERT INTO public.star VALUES ('S Persei', NULL, NULL, NULL, NULL, NULL, 1, 6);


--
-- Name: constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: constellation unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


--
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

