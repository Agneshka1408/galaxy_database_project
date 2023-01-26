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
    name character varying(50),
    galaxy_type text,
    age_in_billions numeric(3,1),
    year_discovered integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    name character varying(15) NOT NULL,
    description character varying(45),
    galaxy_type_id integer NOT NULL
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50),
    year_discivered integer,
    habitable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    diameter numeric,
    length_of_day numeric(6,1),
    number_of_moon integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    diameter numeric,
    planets_orbiting boolean,
    distance_from_earth numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'elliptical', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'spiral', 13.6, NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'spiral', 13.3, 1781);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'spiral', 10.0, 1924);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'spiral', 0.4, 1773);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'spiral', 13.3, 1779);
INSERT INTO public.galaxy VALUES (7, 'Pinwheel', 'spiral', 0.0, 1781);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES ('spiral', 'round', 1);
INSERT INTO public.galaxy_type VALUES ('elliptical', 'oval', 2);
INSERT INTO public.galaxy_type VALUES ('peculiar', 'unusual size,shape,or composition', 3);
INSERT INTO public.galaxy_type VALUES ('irregular', 'no shape', 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, false, NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', 1877, false, NULL);
INSERT INTO public.moon VALUES (5, 'Deimos', 1877, false, NULL);
INSERT INTO public.moon VALUES (6, 'Amalthea', 1892, false, NULL);
INSERT INTO public.moon VALUES (8, 'lo', 1610, false, NULL);
INSERT INTO public.moon VALUES (7, 'Thebe', 1979, false, NULL);
INSERT INTO public.moon VALUES (9, 'Europa', 1610, false, NULL);
INSERT INTO public.moon VALUES (10, 'Ganymede', 1610, false, NULL);
INSERT INTO public.moon VALUES (11, 'Callisto', 1610, false, NULL);
INSERT INTO public.moon VALUES (12, 'Himalia', 1904, false, NULL);
INSERT INTO public.moon VALUES (13, 'Pan', 1985, false, NULL);
INSERT INTO public.moon VALUES (14, 'Atlas', 1980, false, NULL);
INSERT INTO public.moon VALUES (15, 'Prometheus', 1980, false, NULL);
INSERT INTO public.moon VALUES (16, 'Encladus', 1789, false, NULL);
INSERT INTO public.moon VALUES (17, 'Tethys', 1684, false, NULL);
INSERT INTO public.moon VALUES (18, 'Dione', 1684, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Venus', 12104, 2802.0, 0, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 12756, 24.0, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 6792, 24.7, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Mercury', 4879, 4222.6, 0, NULL);
INSERT INTO public.planet VALUES (1, 'Jupiter', 142984, 9.9, 79, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 120536, 10.7, 82, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 51118, 17.2, 27, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 49528, 16.1, 14, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 2376, 153.3, 5, NULL);
INSERT INTO public.planet VALUES (10, 'Kepler_22b', 30580, NULL, 0, NULL);
INSERT INTO public.planet VALUES (11, 'Gliese_667Cc', 19623, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'HAT_P_1b', 188599, NULL, 0, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1392700, true, NULL);
INSERT INTO public.star VALUES (2, 'Proxima C.', 214550, true, 4.2);
INSERT INTO public.star VALUES (3, 'Lalande_21185', 547060, true, 8.3);
INSERT INTO public.star VALUES (4, 'Lacaille_9352', NULL, true, 11.0);
INSERT INTO public.star VALUES (5, 'Kepler_22', 1362200, true, 619.7);
INSERT INTO public.star VALUES (6, 'Gliese_667C', NULL, true, 22.2);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name);


--
-- Name: galaxy_type name_galaxy_type_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT name_galaxy_type_unique UNIQUE (name);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


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
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon planet_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_foreign FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

