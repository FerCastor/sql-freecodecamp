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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter numeric,
    distance_from_sun numeric,
    is_potentially_hazardous boolean,
    planet_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(25) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth numeric
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
    name character varying(25) NOT NULL,
    radius numeric,
    distance_from_planet numeric,
    age_in_millions_of_years integer,
    is_habitable boolean,
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
    name character varying(25) NOT NULL,
    star_id integer,
    mass character varying(40),
    diameter numeric,
    is_spherical boolean,
    has_atmosphere boolean
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
    name character varying(25) NOT NULL,
    luminosity numeric,
    temperature numeric,
    has_life boolean,
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.asteroid (asteroid_id, name, diameter, distance_from_sun, is_potentially_hazardous, planet_id) FROM stdin;
1	Ceres	940	414000000	f	\N
2	Vesta	525	353000000	f	\N
3	Pallas	544	414000000	f	\N
4	Hygiea	407	470000000	f	\N
\.


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, description, age_in_millions_of_years, distance_from_earth) FROM stdin;
1	Milky Way	Our local galaxy where the solar system is located. It contains billions of stars, including the Sun.	13000	100000
2	Andromeda	The nearest spiral galaxy to the Milky Way, located approximately 2.537 million light-years away.	14000	2537000
3	Triangulum	Also known as M33, it is a spiral galaxy located in the Local Group, close to the Milky Way and Andromeda.	13000	3000000
4	Messier 87	A giant elliptical galaxy in the Virgo Cluster. It contains a supermassive black hole at its center.	12000	54000000
6	Centaurus A	A giant elliptical galaxy close to Earth, located in the Centaurus constellation.	11000	13000000
7	Cats Eye	A spiral galaxy located in the Draco constellation, characterized by a prominent ring of stars and gas.	12500	25000000
8	Unknow	\N	\N	\N
9	Sombrero	A spiral galaxy located in the constellation Virgo, known for its prominent bulge and disk.	11000	28000000
10	Pinwheel	Also known as Messier 101, it is a spiral galaxy located in the constellation Ursa Major.	13000	21000000
11	Whirlpool	A grand design spiral galaxy located in the constellation Canes Venatici.	12000	31000000
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, radius, distance_from_planet, age_in_millions_of_years, is_habitable, planet_id) FROM stdin;
35	Lua	1737	384400	4500	t	1
36	Fobos	11.1	9378	4500	f	7
37	Deimos	6.2	23460	4500	f	7
38	Europa	1561	670900	4500	t	9
39	Io	1821.6	421700	4500	f	9
40	Titã	2576	1221870	4500	t	10
41	Encélado	252.1	238020	4500	t	10
42	Ganímedes	2634.1	1070400	4500	t	9
43	Calisto	2410.3	1882700	4500	t	9
44	Tritão	1353.4	354759	4500	t	12
46	Larissa	97.6	73200	4500	f	12
48	Rhea	763.8	527040	4500	f	11
49	Phobos	11.1	9378	4500	f	12
50	Tethys	531.1	294660	4500	f	10
52	Ganymede	2634.1	1070400	4500	t	11
53	Callisto	2410.3	1882700	4500	t	11
54	Triton	1353.4	354759	4500	t	12
55	Ganimedes	2634.1	1070400	4500	t	9
56	Miranda	235.8	129390	4500	f	12
57	Tétis	531.1	294660	4500	f	10
59	Phobetor	45.9	92630	4000	f	5
60	Lysithea	18	11720	4200	f	5
61	Proteus	210	117647	4200	f	4
62	Nereida	170	55130	4200	f	4
63	Cordelia	20	49400	4100	f	11
64	Puck	81	86000	4100	f	11
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, star_id, mass, diameter, is_spherical, has_atmosphere) FROM stdin;
1	Terra	1	5.972 × 10^24 kg	12.742	t	t
2	Kepler-186f	2	1.54 × 10^24 kg	11.031	t	t
3	Gliese 581g	3	3.1 × 10^24 kg	13.200	t	t
4	HD 209458 b	4	2.2 × 10^27 kg	159.203	t	t
5	KOI-1686.01	6	9.1 × 10^24 kg	14.900	t	t
7	Marte	1	6.39 × 10^23 kg	6.779	t	t
8	Vênus	1	4.867 × 10^24 kg	12.104	t	t
9	Júpiter	1	1.898 × 10^27 kg	139.822	t	t
10	Saturno	1	5.683 × 10^26 kg	116.464	t	t
11	Urano	1	8.681 × 10^25 kg	50.724	t	t
12	Netuno	1	1.024 × 10^26 kg	49.244	t	t
13	Kepler-452b	7	5.0 × 10^24 kg	17.340	t	t
14	Mercury	1	3.285 × 10^23	4879	t	t
15	Neptune	1	1.024 × 10^26	49528	t	t
16	Kepler-16b	2	1.05 × 10^26	10566	t	t
17	Proxima Centauri b	3	1.27 × 10^25	8000	t	t
18	Kepler-438b	4	1.27 × 10^25	6000	t	t
19	Kepler-442b	4	1.27 × 10^25	9000	t	t
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, luminosity, temperature, has_life, galaxy_id) FROM stdin;
1	Sun	1	5778	t	1
2	Alpha Centauri A	1.519	5790	f	1
3	Proxima Andromedae	0.012	2552	f	2
4	Delta Trianguli	0.004	2810	f	3
5	M87-Alpha	12000	121000	f	4
6	Centaurus-A Alpha	200	9700	f	6
7	Unknow	\N	\N	\N	8
8	Sirius	25.4	9940	f	2
9	Vega	50.1	9602	f	2
10	Betelgeuse	100000	3500	f	2
\.


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 4, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 11, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 64, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

