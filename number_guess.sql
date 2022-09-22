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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (3, 5, 1);
INSERT INTO public.games VALUES (4, 5, 1);
INSERT INTO public.games VALUES (5, 5, 1);
INSERT INTO public.games VALUES (6, 8, 1);
INSERT INTO public.games VALUES (7, 8, 5);
INSERT INTO public.games VALUES (8, 8, 5);
INSERT INTO public.games VALUES (9, 8, 5);
INSERT INTO public.games VALUES (10, 8, 5);
INSERT INTO public.games VALUES (11, 8, 5);
INSERT INTO public.games VALUES (12, 5, 2);
INSERT INTO public.games VALUES (13, 5, 2);
INSERT INTO public.games VALUES (14, 9, 1);
INSERT INTO public.games VALUES (15, 11, 237);
INSERT INTO public.games VALUES (16, 11, 237);
INSERT INTO public.games VALUES (17, 11, 237);
INSERT INTO public.games VALUES (18, 11, 237);
INSERT INTO public.games VALUES (19, 11, 237);
INSERT INTO public.games VALUES (20, 11, 237);
INSERT INTO public.games VALUES (21, 11, 237);
INSERT INTO public.games VALUES (22, 11, 237);
INSERT INTO public.games VALUES (23, 11, 237);
INSERT INTO public.games VALUES (24, 11, 237);
INSERT INTO public.games VALUES (25, 11, 237);
INSERT INTO public.games VALUES (26, 11, 237);
INSERT INTO public.games VALUES (27, 11, 237);
INSERT INTO public.games VALUES (28, 11, 237);
INSERT INTO public.games VALUES (29, 11, 237);
INSERT INTO public.games VALUES (30, 11, 237);
INSERT INTO public.games VALUES (31, 11, 237);
INSERT INTO public.games VALUES (32, 11, 237);
INSERT INTO public.games VALUES (33, 11, 237);
INSERT INTO public.games VALUES (34, 11, 237);
INSERT INTO public.games VALUES (35, 11, 237);
INSERT INTO public.games VALUES (36, 11, 237);
INSERT INTO public.games VALUES (37, 11, 237);
INSERT INTO public.games VALUES (38, 11, 237);
INSERT INTO public.games VALUES (39, 11, 237);
INSERT INTO public.games VALUES (40, 11, 237);
INSERT INTO public.games VALUES (41, 11, 237);
INSERT INTO public.games VALUES (42, 11, 237);
INSERT INTO public.games VALUES (43, 11, 237);
INSERT INTO public.games VALUES (44, 11, 237);
INSERT INTO public.games VALUES (45, 11, 237);
INSERT INTO public.games VALUES (46, 11, 237);
INSERT INTO public.games VALUES (47, 11, 237);
INSERT INTO public.games VALUES (48, 11, 237);
INSERT INTO public.games VALUES (49, 11, 237);
INSERT INTO public.games VALUES (50, 11, 237);
INSERT INTO public.games VALUES (51, 11, 237);
INSERT INTO public.games VALUES (52, 11, 237);
INSERT INTO public.games VALUES (53, 11, 237);
INSERT INTO public.games VALUES (54, 11, 237);
INSERT INTO public.games VALUES (55, 11, 237);
INSERT INTO public.games VALUES (56, 11, 237);
INSERT INTO public.games VALUES (57, 11, 237);
INSERT INTO public.games VALUES (58, 11, 237);
INSERT INTO public.games VALUES (59, 11, 237);
INSERT INTO public.games VALUES (60, 11, 237);
INSERT INTO public.games VALUES (61, 11, 237);
INSERT INTO public.games VALUES (62, 11, 237);
INSERT INTO public.games VALUES (63, 11, 237);
INSERT INTO public.games VALUES (64, 11, 237);
INSERT INTO public.games VALUES (65, 11, 237);
INSERT INTO public.games VALUES (66, 11, 237);
INSERT INTO public.games VALUES (67, 11, 237);
INSERT INTO public.games VALUES (68, 11, 237);
INSERT INTO public.games VALUES (69, 11, 237);
INSERT INTO public.games VALUES (70, 11, 237);
INSERT INTO public.games VALUES (71, 11, 237);
INSERT INTO public.games VALUES (72, 11, 237);
INSERT INTO public.games VALUES (73, 11, 237);
INSERT INTO public.games VALUES (74, 11, 237);
INSERT INTO public.games VALUES (75, 11, 237);
INSERT INTO public.games VALUES (76, 11, 237);
INSERT INTO public.games VALUES (77, 11, 237);
INSERT INTO public.games VALUES (78, 11, 237);
INSERT INTO public.games VALUES (79, 11, 237);
INSERT INTO public.games VALUES (80, 11, 237);
INSERT INTO public.games VALUES (81, 11, 237);
INSERT INTO public.games VALUES (82, 11, 237);
INSERT INTO public.games VALUES (83, 11, 237);
INSERT INTO public.games VALUES (84, 11, 237);
INSERT INTO public.games VALUES (85, 11, 237);
INSERT INTO public.games VALUES (86, 11, 237);
INSERT INTO public.games VALUES (87, 11, 237);
INSERT INTO public.games VALUES (88, 11, 237);
INSERT INTO public.games VALUES (89, 11, 237);
INSERT INTO public.games VALUES (90, 11, 237);
INSERT INTO public.games VALUES (91, 11, 237);
INSERT INTO public.games VALUES (92, 11, 237);
INSERT INTO public.games VALUES (93, 11, 157);
INSERT INTO public.games VALUES (94, 11, 237);
INSERT INTO public.games VALUES (95, 11, 157);
INSERT INTO public.games VALUES (96, 11, 237);
INSERT INTO public.games VALUES (97, 11, 157);
INSERT INTO public.games VALUES (98, 11, 237);
INSERT INTO public.games VALUES (99, 11, 157);
INSERT INTO public.games VALUES (100, 11, 237);
INSERT INTO public.games VALUES (101, 11, 157);
INSERT INTO public.games VALUES (102, 11, 237);
INSERT INTO public.games VALUES (103, 11, 157);
INSERT INTO public.games VALUES (104, 11, 237);
INSERT INTO public.games VALUES (105, 11, 157);
INSERT INTO public.games VALUES (106, 11, 237);
INSERT INTO public.games VALUES (107, 11, 157);
INSERT INTO public.games VALUES (108, 11, 237);
INSERT INTO public.games VALUES (109, 11, 157);
INSERT INTO public.games VALUES (110, 11, 237);
INSERT INTO public.games VALUES (111, 11, 157);
INSERT INTO public.games VALUES (112, 11, 237);
INSERT INTO public.games VALUES (113, 11, 157);
INSERT INTO public.games VALUES (114, 11, 237);
INSERT INTO public.games VALUES (115, 11, 157);
INSERT INTO public.games VALUES (116, 11, 237);
INSERT INTO public.games VALUES (117, 11, 157);
INSERT INTO public.games VALUES (118, 11, 237);
INSERT INTO public.games VALUES (119, 11, 157);
INSERT INTO public.games VALUES (120, 11, 237);
INSERT INTO public.games VALUES (121, 11, 157);
INSERT INTO public.games VALUES (122, 11, 237);
INSERT INTO public.games VALUES (123, 11, 157);
INSERT INTO public.games VALUES (124, 11, 237);
INSERT INTO public.games VALUES (125, 11, 157);
INSERT INTO public.games VALUES (126, 11, 237);
INSERT INTO public.games VALUES (127, 11, 157);
INSERT INTO public.games VALUES (128, 11, 237);
INSERT INTO public.games VALUES (129, 11, 157);
INSERT INTO public.games VALUES (130, 11, 237);
INSERT INTO public.games VALUES (131, 11, 157);
INSERT INTO public.games VALUES (132, 11, 237);
INSERT INTO public.games VALUES (133, 11, 157);
INSERT INTO public.games VALUES (134, 11, 237);
INSERT INTO public.games VALUES (135, 11, 157);
INSERT INTO public.games VALUES (136, 11, 237);
INSERT INTO public.games VALUES (137, 11, 157);
INSERT INTO public.games VALUES (138, 11, 237);
INSERT INTO public.games VALUES (139, 11, 157);
INSERT INTO public.games VALUES (140, 11, 237);
INSERT INTO public.games VALUES (141, 11, 157);
INSERT INTO public.games VALUES (142, 11, 237);
INSERT INTO public.games VALUES (143, 11, 157);
INSERT INTO public.games VALUES (144, 11, 237);
INSERT INTO public.games VALUES (145, 11, 157);
INSERT INTO public.games VALUES (146, 11, 237);
INSERT INTO public.games VALUES (147, 11, 157);
INSERT INTO public.games VALUES (148, 11, 237);
INSERT INTO public.games VALUES (149, 11, 157);
INSERT INTO public.games VALUES (150, 11, 237);
INSERT INTO public.games VALUES (151, 11, 157);
INSERT INTO public.games VALUES (152, 11, 237);
INSERT INTO public.games VALUES (153, 11, 157);
INSERT INTO public.games VALUES (154, 11, 237);
INSERT INTO public.games VALUES (155, 11, 157);
INSERT INTO public.games VALUES (156, 11, 237);
INSERT INTO public.games VALUES (157, 11, 157);
INSERT INTO public.games VALUES (158, 11, 237);
INSERT INTO public.games VALUES (159, 11, 157);
INSERT INTO public.games VALUES (160, 11, 237);
INSERT INTO public.games VALUES (161, 11, 157);
INSERT INTO public.games VALUES (162, 11, 237);
INSERT INTO public.games VALUES (163, 11, 157);
INSERT INTO public.games VALUES (164, 11, 237);
INSERT INTO public.games VALUES (165, 11, 157);
INSERT INTO public.games VALUES (166, 11, 237);
INSERT INTO public.games VALUES (167, 11, 157);
INSERT INTO public.games VALUES (168, 11, 237);
INSERT INTO public.games VALUES (169, 11, 157);
INSERT INTO public.games VALUES (170, 11, 157);
INSERT INTO public.games VALUES (171, 11, 237);
INSERT INTO public.games VALUES (172, 11, 157);
INSERT INTO public.games VALUES (173, 11, 237);
INSERT INTO public.games VALUES (174, 11, 157);
INSERT INTO public.games VALUES (175, 11, 237);
INSERT INTO public.games VALUES (176, 11, 157);
INSERT INTO public.games VALUES (177, 11, 237);
INSERT INTO public.games VALUES (178, 11, 157);
INSERT INTO public.games VALUES (179, 11, 237);
INSERT INTO public.games VALUES (180, 11, 157);
INSERT INTO public.games VALUES (181, 11, 237);
INSERT INTO public.games VALUES (182, 11, 157);
INSERT INTO public.games VALUES (183, 11, 237);
INSERT INTO public.games VALUES (184, 11, 157);
INSERT INTO public.games VALUES (185, 11, 237);
INSERT INTO public.games VALUES (186, 11, 157);
INSERT INTO public.games VALUES (187, 11, 237);
INSERT INTO public.games VALUES (188, 11, 157);
INSERT INTO public.games VALUES (189, 11, 237);
INSERT INTO public.games VALUES (190, 11, 157);
INSERT INTO public.games VALUES (191, 11, 237);
INSERT INTO public.games VALUES (192, 11, 157);
INSERT INTO public.games VALUES (193, 11, 237);
INSERT INTO public.games VALUES (194, 11, 157);
INSERT INTO public.games VALUES (195, 11, 237);
INSERT INTO public.games VALUES (196, 11, 237);
INSERT INTO public.games VALUES (197, 11, 157);
INSERT INTO public.games VALUES (198, 11, 237);
INSERT INTO public.games VALUES (199, 11, 157);
INSERT INTO public.games VALUES (200, 11, 157);
INSERT INTO public.games VALUES (201, 11, 237);
INSERT INTO public.games VALUES (202, 11, 157);
INSERT INTO public.games VALUES (203, 11, 237);
INSERT INTO public.games VALUES (204, 11, 157);
INSERT INTO public.games VALUES (205, 11, 237);
INSERT INTO public.games VALUES (206, 11, 157);
INSERT INTO public.games VALUES (207, 11, 237);
INSERT INTO public.games VALUES (208, 11, 157);
INSERT INTO public.games VALUES (209, 11, 237);
INSERT INTO public.games VALUES (210, 11, 157);
INSERT INTO public.games VALUES (211, 11, 237);
INSERT INTO public.games VALUES (212, 11, 157);
INSERT INTO public.games VALUES (213, 11, 237);
INSERT INTO public.games VALUES (214, 11, 157);
INSERT INTO public.games VALUES (215, 11, 237);
INSERT INTO public.games VALUES (216, 11, 157);
INSERT INTO public.games VALUES (217, 11, 237);
INSERT INTO public.games VALUES (218, 11, 157);
INSERT INTO public.games VALUES (219, 11, 237);
INSERT INTO public.games VALUES (220, 11, 157);
INSERT INTO public.games VALUES (221, 11, 237);
INSERT INTO public.games VALUES (222, 11, 157);
INSERT INTO public.games VALUES (223, 11, 237);
INSERT INTO public.games VALUES (224, 11, 157);
INSERT INTO public.games VALUES (225, 11, 237);
INSERT INTO public.games VALUES (226, 11, 157);
INSERT INTO public.games VALUES (227, 11, 237);
INSERT INTO public.games VALUES (228, 11, 157);
INSERT INTO public.games VALUES (229, 11, 237);
INSERT INTO public.games VALUES (230, 11, 157);
INSERT INTO public.games VALUES (231, 11, 237);
INSERT INTO public.games VALUES (232, 11, 157);
INSERT INTO public.games VALUES (233, 11, 237);
INSERT INTO public.games VALUES (234, 11, 157);
INSERT INTO public.games VALUES (235, 11, 237);
INSERT INTO public.games VALUES (236, 11, 157);
INSERT INTO public.games VALUES (237, 11, 237);
INSERT INTO public.games VALUES (238, 11, 157);
INSERT INTO public.games VALUES (239, 11, 237);
INSERT INTO public.games VALUES (240, 11, 157);
INSERT INTO public.games VALUES (241, 11, 237);
INSERT INTO public.games VALUES (242, 11, 157);
INSERT INTO public.games VALUES (243, 11, 237);
INSERT INTO public.games VALUES (244, 11, 157);
INSERT INTO public.games VALUES (245, 11, 237);
INSERT INTO public.games VALUES (246, 11, 157);
INSERT INTO public.games VALUES (247, 11, 237);
INSERT INTO public.games VALUES (248, 10, 225);
INSERT INTO public.games VALUES (249, 11, 157);
INSERT INTO public.games VALUES (250, 11, 237);
INSERT INTO public.games VALUES (251, 10, 225);
INSERT INTO public.games VALUES (252, 11, 157);
INSERT INTO public.games VALUES (253, 11, 237);
INSERT INTO public.games VALUES (254, 10, 225);
INSERT INTO public.games VALUES (255, 11, 157);
INSERT INTO public.games VALUES (256, 11, 237);
INSERT INTO public.games VALUES (257, 10, 225);
INSERT INTO public.games VALUES (258, 11, 157);
INSERT INTO public.games VALUES (259, 11, 237);
INSERT INTO public.games VALUES (260, 10, 225);
INSERT INTO public.games VALUES (261, 11, 157);
INSERT INTO public.games VALUES (262, 11, 237);
INSERT INTO public.games VALUES (263, 10, 225);
INSERT INTO public.games VALUES (264, 11, 157);
INSERT INTO public.games VALUES (265, 11, 237);
INSERT INTO public.games VALUES (266, 10, 225);
INSERT INTO public.games VALUES (267, 11, 157);
INSERT INTO public.games VALUES (268, 11, 237);
INSERT INTO public.games VALUES (269, 10, 225);
INSERT INTO public.games VALUES (270, 11, 157);
INSERT INTO public.games VALUES (271, 11, 237);
INSERT INTO public.games VALUES (272, 10, 225);
INSERT INTO public.games VALUES (273, 11, 157);
INSERT INTO public.games VALUES (274, 11, 237);
INSERT INTO public.games VALUES (275, 10, 225);
INSERT INTO public.games VALUES (276, 11, 157);
INSERT INTO public.games VALUES (277, 11, 237);
INSERT INTO public.games VALUES (278, 10, 225);
INSERT INTO public.games VALUES (279, 11, 157);
INSERT INTO public.games VALUES (280, 10, 225);
INSERT INTO public.games VALUES (281, 11, 237);
INSERT INTO public.games VALUES (282, 11, 157);
INSERT INTO public.games VALUES (283, 10, 225);
INSERT INTO public.games VALUES (284, 11, 237);
INSERT INTO public.games VALUES (285, 11, 157);
INSERT INTO public.games VALUES (286, 10, 225);
INSERT INTO public.games VALUES (287, 11, 237);
INSERT INTO public.games VALUES (288, 11, 157);
INSERT INTO public.games VALUES (289, 10, 225);
INSERT INTO public.games VALUES (290, 11, 237);
INSERT INTO public.games VALUES (291, 11, 157);
INSERT INTO public.games VALUES (292, 10, 225);
INSERT INTO public.games VALUES (293, 11, 237);
INSERT INTO public.games VALUES (294, 11, 157);
INSERT INTO public.games VALUES (295, 10, 225);
INSERT INTO public.games VALUES (296, 11, 237);
INSERT INTO public.games VALUES (297, 11, 157);
INSERT INTO public.games VALUES (298, 10, 225);
INSERT INTO public.games VALUES (299, 11, 237);
INSERT INTO public.games VALUES (300, 11, 157);
INSERT INTO public.games VALUES (301, 10, 225);
INSERT INTO public.games VALUES (302, 11, 237);
INSERT INTO public.games VALUES (303, 11, 157);
INSERT INTO public.games VALUES (304, 10, 225);
INSERT INTO public.games VALUES (305, 11, 237);
INSERT INTO public.games VALUES (306, 11, 157);
INSERT INTO public.games VALUES (307, 10, 225);
INSERT INTO public.games VALUES (308, 11, 237);
INSERT INTO public.games VALUES (309, 11, 157);
INSERT INTO public.games VALUES (310, 10, 225);
INSERT INTO public.games VALUES (311, 11, 237);
INSERT INTO public.games VALUES (312, 11, 157);
INSERT INTO public.games VALUES (313, 10, 225);
INSERT INTO public.games VALUES (314, 11, 237);
INSERT INTO public.games VALUES (315, 11, 157);
INSERT INTO public.games VALUES (316, 10, 225);
INSERT INTO public.games VALUES (317, 11, 237);
INSERT INTO public.games VALUES (318, 11, 157);
INSERT INTO public.games VALUES (319, 10, 225);
INSERT INTO public.games VALUES (320, 11, 237);
INSERT INTO public.games VALUES (321, 11, 157);
INSERT INTO public.games VALUES (322, 10, 225);
INSERT INTO public.games VALUES (323, 11, 237);
INSERT INTO public.games VALUES (324, 11, 157);
INSERT INTO public.games VALUES (325, 10, 225);
INSERT INTO public.games VALUES (326, 11, 237);
INSERT INTO public.games VALUES (327, 11, 157);
INSERT INTO public.games VALUES (328, 10, 225);
INSERT INTO public.games VALUES (329, 11, 237);
INSERT INTO public.games VALUES (330, 11, 157);
INSERT INTO public.games VALUES (331, 10, 225);
INSERT INTO public.games VALUES (332, 11, 237);
INSERT INTO public.games VALUES (333, 11, 157);
INSERT INTO public.games VALUES (334, 10, 225);
INSERT INTO public.games VALUES (335, 11, 237);
INSERT INTO public.games VALUES (336, 11, 157);
INSERT INTO public.games VALUES (337, 10, 225);
INSERT INTO public.games VALUES (338, 11, 237);
INSERT INTO public.games VALUES (339, 11, 157);
INSERT INTO public.games VALUES (340, 10, 225);
INSERT INTO public.games VALUES (341, 11, 157);
INSERT INTO public.games VALUES (342, 11, 237);
INSERT INTO public.games VALUES (343, 10, 225);
INSERT INTO public.games VALUES (344, 11, 157);
INSERT INTO public.games VALUES (345, 11, 237);
INSERT INTO public.games VALUES (346, 10, 225);
INSERT INTO public.games VALUES (347, 11, 157);
INSERT INTO public.games VALUES (348, 11, 237);
INSERT INTO public.games VALUES (349, 10, 225);
INSERT INTO public.games VALUES (350, 11, 157);
INSERT INTO public.games VALUES (351, 11, 237);
INSERT INTO public.games VALUES (352, 10, 225);
INSERT INTO public.games VALUES (353, 11, 157);
INSERT INTO public.games VALUES (354, 11, 237);
INSERT INTO public.games VALUES (355, 10, 225);
INSERT INTO public.games VALUES (356, 11, 157);
INSERT INTO public.games VALUES (357, 11, 237);
INSERT INTO public.games VALUES (358, 10, 225);
INSERT INTO public.games VALUES (359, 11, 157);
INSERT INTO public.games VALUES (360, 11, 237);
INSERT INTO public.games VALUES (361, 10, 225);
INSERT INTO public.games VALUES (362, 11, 157);
INSERT INTO public.games VALUES (363, 11, 237);
INSERT INTO public.games VALUES (364, 10, 225);
INSERT INTO public.games VALUES (365, 11, 157);
INSERT INTO public.games VALUES (366, 11, 237);
INSERT INTO public.games VALUES (367, 10, 225);
INSERT INTO public.games VALUES (368, 10, 225);
INSERT INTO public.games VALUES (369, 11, 157);
INSERT INTO public.games VALUES (370, 11, 237);
INSERT INTO public.games VALUES (371, 10, 225);
INSERT INTO public.games VALUES (372, 11, 157);
INSERT INTO public.games VALUES (373, 11, 237);
INSERT INTO public.games VALUES (374, 10, 225);
INSERT INTO public.games VALUES (375, 11, 157);
INSERT INTO public.games VALUES (376, 11, 237);
INSERT INTO public.games VALUES (377, 10, 225);
INSERT INTO public.games VALUES (378, 11, 157);
INSERT INTO public.games VALUES (379, 11, 237);
INSERT INTO public.games VALUES (380, 10, 225);
INSERT INTO public.games VALUES (381, 11, 157);
INSERT INTO public.games VALUES (382, 11, 237);
INSERT INTO public.games VALUES (383, 10, 225);
INSERT INTO public.games VALUES (384, 11, 157);
INSERT INTO public.games VALUES (385, 11, 237);
INSERT INTO public.games VALUES (386, 10, 225);
INSERT INTO public.games VALUES (387, 11, 157);
INSERT INTO public.games VALUES (388, 11, 237);
INSERT INTO public.games VALUES (389, 10, 225);
INSERT INTO public.games VALUES (390, 11, 157);
INSERT INTO public.games VALUES (391, 11, 237);
INSERT INTO public.games VALUES (392, 10, 225);
INSERT INTO public.games VALUES (393, 11, 157);
INSERT INTO public.games VALUES (394, 11, 237);
INSERT INTO public.games VALUES (395, 10, 225);
INSERT INTO public.games VALUES (396, 11, 157);
INSERT INTO public.games VALUES (397, 11, 237);
INSERT INTO public.games VALUES (398, 10, 225);
INSERT INTO public.games VALUES (399, 11, 157);
INSERT INTO public.games VALUES (400, 11, 237);
INSERT INTO public.games VALUES (401, 10, 225);
INSERT INTO public.games VALUES (402, 11, 157);
INSERT INTO public.games VALUES (403, 11, 237);
INSERT INTO public.games VALUES (404, 10, 225);
INSERT INTO public.games VALUES (405, 11, 157);
INSERT INTO public.games VALUES (406, 11, 237);
INSERT INTO public.games VALUES (407, 10, 225);
INSERT INTO public.games VALUES (408, 11, 157);
INSERT INTO public.games VALUES (409, 11, 237);
INSERT INTO public.games VALUES (410, 10, 225);
INSERT INTO public.games VALUES (411, 11, 157);
INSERT INTO public.games VALUES (412, 11, 237);
INSERT INTO public.games VALUES (413, 10, 225);
INSERT INTO public.games VALUES (414, 11, 157);
INSERT INTO public.games VALUES (415, 11, 237);
INSERT INTO public.games VALUES (416, 10, 225);
INSERT INTO public.games VALUES (417, 11, 157);
INSERT INTO public.games VALUES (418, 11, 237);
INSERT INTO public.games VALUES (419, 10, 225);
INSERT INTO public.games VALUES (420, 11, 157);
INSERT INTO public.games VALUES (421, 11, 237);
INSERT INTO public.games VALUES (422, 10, 225);
INSERT INTO public.games VALUES (423, 11, 157);
INSERT INTO public.games VALUES (424, 11, 237);
INSERT INTO public.games VALUES (425, 10, 225);
INSERT INTO public.games VALUES (426, 11, 157);
INSERT INTO public.games VALUES (427, 11, 237);
INSERT INTO public.games VALUES (428, 10, 225);
INSERT INTO public.games VALUES (429, 11, 157);
INSERT INTO public.games VALUES (430, 11, 237);
INSERT INTO public.games VALUES (431, 10, 225);
INSERT INTO public.games VALUES (432, 11, 157);
INSERT INTO public.games VALUES (433, 11, 237);
INSERT INTO public.games VALUES (434, 10, 225);
INSERT INTO public.games VALUES (435, 11, 157);
INSERT INTO public.games VALUES (436, 11, 237);
INSERT INTO public.games VALUES (437, 10, 225);
INSERT INTO public.games VALUES (438, 11, 157);
INSERT INTO public.games VALUES (439, 10, 225);
INSERT INTO public.games VALUES (440, 11, 237);
INSERT INTO public.games VALUES (441, 11, 157);
INSERT INTO public.games VALUES (442, 11, 157);
INSERT INTO public.games VALUES (443, 10, 225);
INSERT INTO public.games VALUES (444, 11, 237);
INSERT INTO public.games VALUES (445, 11, 157);
INSERT INTO public.games VALUES (446, 10, 225);
INSERT INTO public.games VALUES (447, 11, 237);
INSERT INTO public.games VALUES (448, 10, 225);
INSERT INTO public.games VALUES (449, 11, 157);
INSERT INTO public.games VALUES (450, 11, 237);
INSERT INTO public.games VALUES (451, 10, 225);
INSERT INTO public.games VALUES (452, 11, 157);
INSERT INTO public.games VALUES (453, 11, 237);
INSERT INTO public.games VALUES (454, 10, 225);
INSERT INTO public.games VALUES (455, 11, 157);
INSERT INTO public.games VALUES (456, 11, 237);
INSERT INTO public.games VALUES (457, 10, 225);
INSERT INTO public.games VALUES (458, 11, 157);
INSERT INTO public.games VALUES (459, 11, 237);
INSERT INTO public.games VALUES (460, 10, 225);
INSERT INTO public.games VALUES (461, 11, 157);
INSERT INTO public.games VALUES (462, 11, 237);
INSERT INTO public.games VALUES (463, 10, 225);
INSERT INTO public.games VALUES (464, 11, 157);
INSERT INTO public.games VALUES (465, 11, 237);
INSERT INTO public.games VALUES (466, 10, 225);
INSERT INTO public.games VALUES (467, 11, 157);
INSERT INTO public.games VALUES (468, 11, 237);
INSERT INTO public.games VALUES (469, 10, 225);
INSERT INTO public.games VALUES (470, 11, 157);
INSERT INTO public.games VALUES (471, 11, 237);
INSERT INTO public.games VALUES (472, 10, 225);
INSERT INTO public.games VALUES (473, 11, 157);
INSERT INTO public.games VALUES (474, 11, 237);
INSERT INTO public.games VALUES (475, 10, 225);
INSERT INTO public.games VALUES (476, 11, 157);
INSERT INTO public.games VALUES (477, 10, 225);
INSERT INTO public.games VALUES (478, 11, 237);
INSERT INTO public.games VALUES (479, 11, 157);
INSERT INTO public.games VALUES (480, 10, 225);
INSERT INTO public.games VALUES (481, 11, 237);
INSERT INTO public.games VALUES (482, 11, 157);
INSERT INTO public.games VALUES (483, 10, 225);
INSERT INTO public.games VALUES (484, 11, 237);
INSERT INTO public.games VALUES (485, 10, 225);
INSERT INTO public.games VALUES (486, 11, 237);
INSERT INTO public.games VALUES (487, 10, 225);
INSERT INTO public.games VALUES (488, 11, 237);
INSERT INTO public.games VALUES (489, 10, 225);
INSERT INTO public.games VALUES (490, 11, 237);
INSERT INTO public.games VALUES (491, 10, 225);
INSERT INTO public.games VALUES (492, 11, 237);
INSERT INTO public.games VALUES (493, 10, 225);
INSERT INTO public.games VALUES (494, 11, 237);
INSERT INTO public.games VALUES (495, 10, 225);
INSERT INTO public.games VALUES (496, 10, 225);
INSERT INTO public.games VALUES (497, 10, 225);
INSERT INTO public.games VALUES (498, 10, 225);
INSERT INTO public.games VALUES (499, 10, 225);
INSERT INTO public.games VALUES (500, 10, 225);
INSERT INTO public.games VALUES (501, 10, 225);
INSERT INTO public.games VALUES (502, 10, 225);
INSERT INTO public.games VALUES (503, 10, 225);
INSERT INTO public.games VALUES (504, 10, 225);
INSERT INTO public.games VALUES (505, 10, 225);
INSERT INTO public.games VALUES (506, 10, 225);
INSERT INTO public.games VALUES (507, 10, 225);
INSERT INTO public.games VALUES (508, 10, 225);
INSERT INTO public.games VALUES (509, 10, 225);
INSERT INTO public.games VALUES (510, 10, 225);
INSERT INTO public.games VALUES (511, 10, 225);
INSERT INTO public.games VALUES (512, 10, 225);
INSERT INTO public.games VALUES (513, 10, 225);
INSERT INTO public.games VALUES (514, 10, 225);
INSERT INTO public.games VALUES (515, 10, 225);
INSERT INTO public.games VALUES (516, 10, 225);
INSERT INTO public.games VALUES (517, 10, 225);
INSERT INTO public.games VALUES (518, 10, 225);
INSERT INTO public.games VALUES (519, 10, 225);
INSERT INTO public.games VALUES (520, 10, 225);
INSERT INTO public.games VALUES (521, 10, 225);
INSERT INTO public.games VALUES (522, 10, 225);
INSERT INTO public.games VALUES (523, 10, 225);
INSERT INTO public.games VALUES (524, 10, 225);
INSERT INTO public.games VALUES (525, 10, 225);
INSERT INTO public.games VALUES (526, 10, 225);
INSERT INTO public.games VALUES (527, 10, 225);
INSERT INTO public.games VALUES (528, 10, 225);
INSERT INTO public.games VALUES (529, 10, 225);
INSERT INTO public.games VALUES (530, 10, 225);
INSERT INTO public.games VALUES (531, 10, 225);
INSERT INTO public.games VALUES (532, 10, 225);
INSERT INTO public.games VALUES (533, 10, 225);
INSERT INTO public.games VALUES (534, 10, 224);
INSERT INTO public.games VALUES (535, 10, 225);
INSERT INTO public.games VALUES (536, 10, 224);
INSERT INTO public.games VALUES (537, 10, 225);
INSERT INTO public.games VALUES (538, 10, 224);
INSERT INTO public.games VALUES (539, 10, 225);
INSERT INTO public.games VALUES (540, 10, 224);
INSERT INTO public.games VALUES (541, 10, 225);
INSERT INTO public.games VALUES (542, 10, 224);
INSERT INTO public.games VALUES (543, 10, 224);
INSERT INTO public.games VALUES (544, 10, 225);
INSERT INTO public.games VALUES (545, 10, 224);
INSERT INTO public.games VALUES (546, 10, 225);
INSERT INTO public.games VALUES (547, 10, 224);
INSERT INTO public.games VALUES (548, 10, 225);
INSERT INTO public.games VALUES (549, 10, 224);
INSERT INTO public.games VALUES (550, 10, 225);
INSERT INTO public.games VALUES (551, 10, 224);
INSERT INTO public.games VALUES (552, 10, 225);
INSERT INTO public.games VALUES (553, 10, 224);
INSERT INTO public.games VALUES (554, 10, 225);
INSERT INTO public.games VALUES (555, 10, 224);
INSERT INTO public.games VALUES (556, 10, 225);
INSERT INTO public.games VALUES (557, 10, 224);
INSERT INTO public.games VALUES (558, 10, 225);
INSERT INTO public.games VALUES (559, 10, 224);
INSERT INTO public.games VALUES (560, 10, 225);
INSERT INTO public.games VALUES (561, 10, 224);
INSERT INTO public.games VALUES (562, 10, 225);
INSERT INTO public.games VALUES (563, 10, 224);
INSERT INTO public.games VALUES (564, 10, 225);
INSERT INTO public.games VALUES (565, 10, 224);
INSERT INTO public.games VALUES (566, 10, 225);
INSERT INTO public.games VALUES (567, 10, 224);
INSERT INTO public.games VALUES (568, 10, 225);
INSERT INTO public.games VALUES (569, 10, 224);
INSERT INTO public.games VALUES (570, 10, 225);
INSERT INTO public.games VALUES (571, 10, 224);
INSERT INTO public.games VALUES (572, 10, 225);
INSERT INTO public.games VALUES (573, 10, 224);
INSERT INTO public.games VALUES (574, 10, 225);
INSERT INTO public.games VALUES (575, 10, 224);
INSERT INTO public.games VALUES (576, 10, 225);
INSERT INTO public.games VALUES (577, 10, 224);
INSERT INTO public.games VALUES (578, 10, 225);
INSERT INTO public.games VALUES (579, 10, 224);
INSERT INTO public.games VALUES (580, 10, 225);
INSERT INTO public.games VALUES (581, 10, 224);
INSERT INTO public.games VALUES (582, 10, 225);
INSERT INTO public.games VALUES (583, 10, 224);
INSERT INTO public.games VALUES (584, 10, 225);
INSERT INTO public.games VALUES (585, 10, 224);
INSERT INTO public.games VALUES (586, 10, 225);
INSERT INTO public.games VALUES (587, 10, 224);
INSERT INTO public.games VALUES (588, 10, 225);
INSERT INTO public.games VALUES (589, 10, 224);
INSERT INTO public.games VALUES (590, 10, 225);
INSERT INTO public.games VALUES (591, 10, 224);
INSERT INTO public.games VALUES (592, 10, 225);
INSERT INTO public.games VALUES (593, 10, 224);
INSERT INTO public.games VALUES (594, 10, 225);
INSERT INTO public.games VALUES (595, 10, 224);
INSERT INTO public.games VALUES (596, 10, 225);
INSERT INTO public.games VALUES (597, 10, 224);
INSERT INTO public.games VALUES (598, 10, 225);
INSERT INTO public.games VALUES (599, 10, 224);
INSERT INTO public.games VALUES (600, 10, 225);
INSERT INTO public.games VALUES (601, 10, 224);
INSERT INTO public.games VALUES (602, 10, 225);
INSERT INTO public.games VALUES (603, 10, 224);
INSERT INTO public.games VALUES (604, 10, 225);
INSERT INTO public.games VALUES (605, 10, 224);
INSERT INTO public.games VALUES (606, 10, 225);
INSERT INTO public.games VALUES (607, 10, 224);
INSERT INTO public.games VALUES (608, 10, 225);
INSERT INTO public.games VALUES (609, 10, 224);
INSERT INTO public.games VALUES (610, 10, 225);
INSERT INTO public.games VALUES (611, 10, 224);
INSERT INTO public.games VALUES (612, 10, 225);
INSERT INTO public.games VALUES (613, 10, 224);
INSERT INTO public.games VALUES (614, 10, 225);
INSERT INTO public.games VALUES (615, 10, 224);
INSERT INTO public.games VALUES (616, 10, 225);
INSERT INTO public.games VALUES (617, 10, 224);
INSERT INTO public.games VALUES (618, 10, 225);
INSERT INTO public.games VALUES (619, 10, 224);
INSERT INTO public.games VALUES (620, 10, 225);
INSERT INTO public.games VALUES (621, 10, 224);
INSERT INTO public.games VALUES (622, 10, 225);
INSERT INTO public.games VALUES (623, 10, 224);
INSERT INTO public.games VALUES (624, 10, 225);
INSERT INTO public.games VALUES (625, 10, 224);
INSERT INTO public.games VALUES (626, 10, 225);
INSERT INTO public.games VALUES (627, 10, 224);
INSERT INTO public.games VALUES (628, 10, 225);
INSERT INTO public.games VALUES (629, 10, 224);
INSERT INTO public.games VALUES (630, 10, 225);
INSERT INTO public.games VALUES (631, 10, 224);
INSERT INTO public.games VALUES (632, 10, 225);
INSERT INTO public.games VALUES (633, 10, 224);
INSERT INTO public.games VALUES (634, 10, 225);
INSERT INTO public.games VALUES (635, 10, 224);
INSERT INTO public.games VALUES (636, 10, 225);
INSERT INTO public.games VALUES (637, 10, 224);
INSERT INTO public.games VALUES (638, 10, 225);
INSERT INTO public.games VALUES (639, 10, 224);
INSERT INTO public.games VALUES (640, 10, 225);
INSERT INTO public.games VALUES (641, 10, 224);
INSERT INTO public.games VALUES (642, 10, 225);
INSERT INTO public.games VALUES (643, 10, 224);
INSERT INTO public.games VALUES (644, 10, 225);
INSERT INTO public.games VALUES (645, 10, 224);
INSERT INTO public.games VALUES (646, 10, 225);
INSERT INTO public.games VALUES (647, 10, 224);
INSERT INTO public.games VALUES (648, 10, 225);
INSERT INTO public.games VALUES (649, 10, 224);
INSERT INTO public.games VALUES (650, 10, 224);
INSERT INTO public.games VALUES (651, 10, 225);
INSERT INTO public.games VALUES (652, 10, 224);
INSERT INTO public.games VALUES (653, 10, 225);
INSERT INTO public.games VALUES (654, 10, 224);
INSERT INTO public.games VALUES (655, 10, 225);
INSERT INTO public.games VALUES (656, 10, 224);
INSERT INTO public.games VALUES (657, 10, 225);
INSERT INTO public.games VALUES (658, 10, 224);
INSERT INTO public.games VALUES (659, 10, 225);
INSERT INTO public.games VALUES (660, 10, 224);
INSERT INTO public.games VALUES (661, 10, 225);
INSERT INTO public.games VALUES (662, 10, 224);
INSERT INTO public.games VALUES (663, 10, 225);
INSERT INTO public.games VALUES (664, 10, 224);
INSERT INTO public.games VALUES (665, 10, 225);
INSERT INTO public.games VALUES (666, 10, 224);
INSERT INTO public.games VALUES (667, 10, 225);
INSERT INTO public.games VALUES (668, 10, 224);
INSERT INTO public.games VALUES (669, 10, 225);
INSERT INTO public.games VALUES (670, 10, 224);
INSERT INTO public.games VALUES (671, 10, 225);
INSERT INTO public.games VALUES (672, 10, 224);
INSERT INTO public.games VALUES (673, 10, 225);
INSERT INTO public.games VALUES (674, 10, 224);
INSERT INTO public.games VALUES (675, 10, 225);
INSERT INTO public.games VALUES (676, 10, 224);
INSERT INTO public.games VALUES (677, 10, 225);
INSERT INTO public.games VALUES (678, 10, 224);
INSERT INTO public.games VALUES (679, 10, 225);
INSERT INTO public.games VALUES (680, 10, 224);
INSERT INTO public.games VALUES (681, 10, 225);
INSERT INTO public.games VALUES (682, 10, 224);
INSERT INTO public.games VALUES (683, 10, 225);
INSERT INTO public.games VALUES (684, 10, 224);
INSERT INTO public.games VALUES (685, 10, 225);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (5, 'Victor');
INSERT INTO public.users VALUES (6, 'Aron');
INSERT INTO public.users VALUES (7, 'Bee');
INSERT INTO public.users VALUES (8, 'ASAS');
INSERT INTO public.users VALUES (9, 'Matt');
INSERT INTO public.users VALUES (10, 'user_1663846887734');
INSERT INTO public.users VALUES (11, 'user_1663846887733');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 685, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

