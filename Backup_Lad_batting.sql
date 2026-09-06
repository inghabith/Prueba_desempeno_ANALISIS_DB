--
-- PostgreSQL database dump
--

\restrict dYjCfO22GnMW93c1QnR5y4aJLe34TuTPzPhwLidexwaj8IIw97gop9n6r0HpHMv

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-09-03 17:42:26

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 81920)
-- Name: dim_jugador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_jugador (
    player_id integer NOT NULL,
    name character varying(100) NOT NULL,
    dominant_hand character varying(50) NOT NULL,
    switch_hitter character varying(50) NOT NULL,
    birth_country character varying(50) NOT NULL
);


ALTER TABLE public.dim_jugador OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 81932)
-- Name: dim_posicion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_posicion (
    position_id integer NOT NULL,
    position_code character varying(50) NOT NULL,
    position_name character varying(50) NOT NULL,
    position_category character varying(50) NOT NULL
);


ALTER TABLE public.dim_posicion OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 81941)
-- Name: dim_temporada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dim_temporada (
    season_id integer NOT NULL,
    year integer NOT NULL,
    era character varying(50) NOT NULL
);


ALTER TABLE public.dim_temporada OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 81949)
-- Name: fact_batting; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fact_batting (
    batting_id integer NOT NULL,
    player_id integer NOT NULL,
    position_id integer NOT NULL,
    season_id integer NOT NULL,
    age integer NOT NULL,
    age_category character varying(50) NOT NULL,
    games integer NOT NULL,
    plate_appearances integer NOT NULL,
    at_bats integer NOT NULL,
    runs integer NOT NULL,
    hits integer NOT NULL,
    doubles integer NOT NULL,
    triples integer NOT NULL,
    home_runs integer NOT NULL,
    runs_batted_in integer NOT NULL,
    stolen_bases integer NOT NULL,
    caught_stealing integer NOT NULL,
    base_on_balls integer NOT NULL,
    strikeouts integer NOT NULL,
    batting_average double precision NOT NULL,
    on_base_percentage double precision NOT NULL,
    slugging_percentage double precision NOT NULL,
    ops double precision NOT NULL,
    ops_plus integer NOT NULL,
    total_bases integer NOT NULL,
    times_hit_by_pitch integer NOT NULL,
    sacrifice_hits integer NOT NULL,
    sacrifice_flies integer NOT NULL,
    intentional_walks integer NOT NULL,
    double_plays integer NOT NULL
);


ALTER TABLE public.fact_batting OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 81999)
-- Name: fact_contrato; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fact_contrato (
    contract_id integer NOT NULL,
    player_id integer NOT NULL,
    season_id integer NOT NULL,
    salary double precision NOT NULL,
    contract_type character varying(50) NOT NULL
);


ALTER TABLE public.fact_contrato OWNER TO postgres;

--
-- TOC entry 4934 (class 0 OID 81920)
-- Dependencies: 219
-- Data for Name: dim_jugador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_jugador (player_id, name, dominant_hand, switch_hitter, birth_country) FROM stdin;
1	Will Smith	Right	No	Usa
2	Freddie Freeman	Left	No	Usa
3	Miguel Vargas	Right	No	Cuba
4	Miguel Rojas	Right	No	Venezuela
5	Max Muncy	Left	No	Usa
6	David Peralta	Left	No	Venezuela
7	James Outman	Left	No	Usa
8	Mookie Betts	Right	No	Usa
9	J.D. Martinez	Right	No	Usa
10	Chris Taylor	Right	No	Usa
11	Jason Heyward	Left	No	Usa
12	Austin Barnes	Right	No	Usa
13	Enrique Hernández	Right	No	Puerto Rico
14	Amed Rosario	Right	No	Dominican Republic
15	Trayce Thompson	Right	No	Usa
16	Michael Busch	Left	No	Usa
17	Jonny Deluca	Right	No	Usa
18	Kolten Wong	Left	No	Usa
19	Yonny Hernández	Right	Yes	Venezuela
20	Austin Wynns	Right	No	Cuba
21	Luke Williams	Right	No	Usa
22	Jake Marisnick	Right	No	Dominican Republic
23	Shelby Miller	Right	No	Dominican Republic
24	Michael Grove	Right	No	Usa
25	Dustin May	Right	No	Venezuela
26	Noah Syndergaard	Left	No	Puerto Rico
27	Jake Reed	Right	No	Dominican Republic
28	Julio Urías	Left	No	Dominican Republic
29	Dylan Covey	Right	No	Puerto Rico
30	Gavin Stone	Right	No	South Korea
31	Gus Varland	Left	No	Usa
32	Wander Suero	Right	No	Usa
33	Bryan Hudson	Left	No	Usa
34	Tayler Scott	Right	No	Usa
35	Phil Bickford	Right	No	Usa
36	Justin Bruihl	Left	No	Puerto Rico
37	Lance Lynn	Right	Yes	Usa
38	Kyle Hurt	Right	No	Usa
39	Tyler Cyr	Right	No	Usa
40	Victor González	Left	No	Dominican Republic
41	Tyson Miller	Right	No	Usa
42	Nick Robertson	Right	No	Usa
43	Joe Kelly	Right	No	Usa
44	Bobby Miller	Left	No	Venezuela
45	Caleb Ferguson	Right	No	Usa
46	Daniel Hudson	Right	No	Usa
47	Ryan Brasier	Right	No	Puerto Rico
48	Alex Vesia	Left	No	Usa
49	Ryan Pepiot	Right	No	Cuba
50	Adam Kolarek	Left	No	Usa
51	Ryan Yarbrough	Right	No	Usa
52	Yency Almonte	Right	No	Cuba
53	Clayton Kershaw	Left	No	Usa
54	Evan Phillips	Right	No	Usa
55	Emmet Sheehan	Right	No	Venezuela
56	Tony Gonsolin	Right	No	Usa
57	Andre Jackson	Right	No	Dominican Republic
58	Brusdar Graterol	Right	No	Dominican Republic
59	Gavin Lux	Left	No	Usa
60	Trea Turner	Right	No	Dominican Republic
61	Cody Bellinger	Left	No	Usa
62	Justin Turner	Right	No	Usa
63	Hanser Alberto	Right	No	Usa
64	Joey Gallo	Left	No	Usa
65	Edwin Rios	Left	No	Dominican Republic
66	Jake Lamb	Left	No	Usa
67	Eddy Alvarez	Left	No	Usa
68	Zach Mckinstry	Left	No	Usa
69	Kevin Pillar	Right	No	Usa
70	Tony Wolters	Left	No	Dominican Republic
71	Tyler Anderson	Left	No	Usa
72	Tommy Kahnle	Right	No	Usa
73	Reyes Moronta	Right	No	Usa
74	Craig Kimbrel	Right	No	Usa
75	Andrew Heaney	Left	No	Cuba
76	Walker Buehler	Right	No	Usa
77	Blake Treinen	Right	No	Dominican Republic
78	Garrett Cleavinger	Right	No	Usa
79	Heath Hembree	Right	No	Usa
80	David Price	Left	No	Usa
81	Chris Martin	Right	No	Usa
82	Mitch White	Right	No	Usa
83	Robbie Erlin	Right	No	Usa
84	Shane Greene	Right	No	Usa
85	Corey Seager	Left	No	Usa
86	Aj Pollock	Right	No	Usa
87	Matt Beaty	Left	No	Usa
88	Albert Pujols	Right	No	Usa
89	Billy Mckinney	Left	No	Dominican Republic
90	Luke Raley	Left	No	South Korea
91	Sheldon Neuse	Right	No	Usa
92	Steven Souza Jr.	Right	No	Usa
93	Dj Peters	Right	No	Usa
94	Yoshi Tsutsugo	Left	No	Dominican Republic
95	Andy Burns	Right	No	Venezuela
96	Zach Reks	Left	No	Puerto Rico
97	Keibert Ruiz	Right	Yes	Dominican Republic
98	Trevor Bauer	Right	No	Venezuela
99	Max Scherzer	Right	No	Venezuela
100	Edwin Uceta	Right	No	Puerto Rico
101	Jimmy Nelson	Right	No	Dominican Republic
102	Josiah Gray	Right	No	Dominican Republic
103	Corey Knebel	Right	No	Puerto Rico
104	Dennis Santana	Right	No	Usa
105	Yefry Ramírez	Right	No	Dominican Republic
106	Kenley Jansen	Right	Yes	Netherlands Antilles
107	Nate Jones	Right	No	Usa
108	James Sherfy	Right	No	Venezuela
109	Scott Alexander	Left	No	Usa
110	Mike Kickham	Left	No	Usa
111	Kevin Quackenbush	Right	No	Usa
112	Andrew Vasquez	Left	No	Usa
113	Neftalí Feliz	Right	No	Usa
114	Darien Núñez	Left	No	Dominican Republic
115	Conner Greene	Right	No	Dominican Republic
116	Joc Pederson	Left	No	Usa
117	Terrance Gore	Right	No	Japan
118	Jake Mcgee	Left	No	Usa
119	Pedro Báez	Right	No	Puerto Rico
120	Alex Wood	Right	No	Usa
121	Dylan Floro	Left	No	Usa
122	Ross Stripling	Right	No	Puerto Rico
123	Josh Sborz	Right	No	Usa
124	Alex Verdugo	Left	No	Dominican Republic
125	Russell Martin	Right	No	Usa
126	David Freese	Right	No	Mexico
127	Kristopher Negrón	Right	No	Cuba
128	Kyle Garlick	Right	No	Usa
129	Jedd Gyorko	Right	No	Usa
130	Tyler White	Right	No	Usa
131	Rocky Gale	Right	No	Usa
132	Travis D'Arnaud	Right	No	Usa
133	Hyun Jin Ryu	Right	No	South Korea
134	Kenta Maeda	Right	No	Dominican Republic
135	Rich Hill	Left	No	Puerto Rico
136	Brock Stewart	Left	No	Usa
137	Casey Sadler	Right	No	Usa
138	Yimi García	Right	No	Usa
139	Jt Chargois	Right	Yes	Venezuela
140	Jaime Schultz	Right	No	Dominican Republic
141	Zac Rosscup	Right	No	Dominican Republic
142	Yasmani Grandal	Right	Yes	Mexico
143	Logan Forsythe	Right	No	Usa
144	Yasiel Puig	Right	No	Cuba
145	Matt Kemp	Right	No	Usa
146	Manny Machado	Right	No	Dominican Republic
147	Chase Utley	Left	No	Venezuela
148	Brian Dozier	Right	No	Usa
149	Kyle Farmer	Right	No	Dominican Republic
150	Breyvic Valera	Right	Yes	Usa
151	Andrew Toles	Left	No	Dominican Republic
152	Tim Locastro	Right	No	Usa
153	Wilmer Font	Right	No	Usa
154	Adam Liberatore	Left	No	Usa
155	Daniel Corcino	Right	No	Usa
156	John Axford	Right	No	Usa
157	Josh Fields	Right	No	Venezuela
158	Zach Neal	Right	No	Usa
159	Edward Paredes	Left	No	Usa
160	Ryan Madson	Left	No	Usa
161	Erik Goeddel	Right	No	Usa
162	Pat Venditte	Right	Yes	Mexico
163	Tony Cingrani	Left	No	Mexico
164	Adrián González	Left	No	Puerto Rico
165	Curtis Granderson	Left	No	Usa
166	Franklin Gutiérrez	Right	No	Usa
167	Scott Van Slyke	Right	No	Dominican Republic
168	Andre Ethier	Left	No	Usa
169	Brett Eibner	Right	No	Usa
170	Rob Segedin	Right	No	Usa
171	Charlie Culberson	Right	No	Usa
172	O'Koyea Dickson	Right	No	Usa
173	Mike Freeman	Left	No	Dominican Republic
174	Brandon Mccarthy	Right	No	Usa
175	Yu Darvish	Right	No	Mexico
176	Luis Avilán	Left	No	Venezuela
177	Josh Ravin	Right	No	Usa
178	Tony Watson	Left	No	Usa
179	Brandon Morrow	Right	No	Usa
180	Sergio Romo	Right	No	Usa
181	Grant Dayton	Left	No	Dominican Republic
182	Chris Hatcher	Right	Yes	Usa
183	Fabio Castillo	Right	No	Usa
184	Howie Kendrick	Right	No	Usa
185	Josh Reddick	Left	No	Cuba
186	A.J. Ellis	Right	No	Usa
187	Carl Crawford	Left	No	Usa
188	Carlos Ruiz	Right	No	Usa
189	Will Venable	Left	No	Japan
190	Micah Johnson	Left	No	Usa
191	Zach Walters	Right	Yes	Usa
192	Scott Kazmir	Left	No	Usa
193	Bud Norris	Right	No	Usa
194	Mike Bolsinger	Right	No	Usa
195	José De León	Right	No	Japan
196	Brett Anderson	Left	No	Usa
197	J.P. Howell	Left	No	Venezuela
198	Carlos Frías	Right	No	Usa
199	Nick Tepesch	Right	No	Usa
200	Louis Coleman	Right	No	Dominican Republic
201	Chin-Hui Tsao	Right	No	Dominican Republic
202	Joe Blanton	Right	No	Venezuela
203	Jesse Chavez	Right	No	Japan
204	Casey Fien	Right	No	Puerto Rico
205	Jimmy Rollins	Right	Yes	Venezuela
206	Alex Guerrero	Right	No	Dominican Republic
207	Alberto Callaspo	Right	Yes	Usa
208	Juan Uribe	Right	No	South Korea
209	Chris Heisey	Right	No	Usa
210	Justin Ruggiano	Right	No	Dominican Republic
211	Scott Schebler	Left	No	Usa
212	José Peraza	Right	No	Usa
213	Ronald Torreyes	Right	No	Usa
214	Darwin Barney	Right	No	Usa
215	Zack Greinke	Right	No	Usa
216	Mat Latos	Right	No	Usa
217	Ian Thomas	Right	No	Venezuela
218	Scott Baker	Right	No	Usa
219	Joe Wieland	Right	No	Puerto Rico
220	Brandon Beachy	Right	No	Usa
221	Zach Lee	Right	No	Usa
222	Eric Surkamp	Left	No	Usa
223	Danny Coulombe	Left	No	Usa
224	Joel Peralta	Right	No	Usa
225	David Huff	Right	Yes	Panama
226	Juan Nicasio	Right	No	Usa
227	Sergio Santos	Right	No	Mexico
228	Jim Johnson	Right	No	Usa
229	Paco Rodríguez	Left	No	Dominican Republic
230	Matt West	Right	No	Mexico
231	Dee Strange-Gordon	Left	No	Dominican Republic
232	Hanley Ramirez	Right	No	Dominican Republic
233	Drew Butera	Right	No	Cuba
234	Tim Federowicz	Right	No	Usa
235	Chone Figgins	Right	Yes	Cuba
236	Erisbel Arruebarrena	Right	No	Usa
237	Miguel Olivo	Right	No	Usa
238	Jamie Romak	Right	No	Usa
239	Carlos Triunfel	Right	No	Cuba
240	Clint Robinson	Left	No	Usa
241	Roger Bernadina	Left	No	Usa
242	Mike Baxter	Left	No	Mexico
243	Dan Haren	Right	No	Usa
244	Josh Beckett	Right	No	Mexico
245	Paul Maholm	Left	No	Dominican Republic
246	Roberto Hernández	Right	No	Venezuela
247	Kevin Correia	Right	No	Puerto Rico
248	Jamey Wright	Right	No	Usa
249	Stephen Fife	Right	No	Dominican Republic
250	Brandon League	Right	No	Usa
251	José Domínguez	Right	No	Usa
252	Chris Perez	Right	No	Cuba
253	Brian Wilson	Right	No	Usa
254	Chris Withrow	Right	No	Usa
255	Red Patterson	Right	No	Usa
256	Scott Elbert	Left	No	Puerto Rico
257	Mark Ellis	Right	No	Usa
258	Skip Schumaker	Left	No	Usa
259	Nick Punto	Right	Yes	Usa
260	Jerry Hairston	Right	No	Usa
261	Luis Cruz	Right	No	Puerto Rico
262	Justin Sellers	Right	No	Cuba
263	Ramón Hernández	Right	No	Usa
264	Michael Young	Right	No	Usa
265	Nick Buss	Left	No	Japan
266	Alex Castellanos	Right	No	Usa
267	Elián Herrera	Right	Yes	Usa
268	Ricky Nolasco	Right	No	Usa
269	Chris Capuano	Left	No	Usa
270	Edinson Volquez	Right	No	Usa
271	Matt Magill	Right	No	Usa
272	Chad Billingsley	Right	No	Dominican Republic
273	Ted Lilly	Left	No	Usa
274	Matt Guerrier	Right	No	Venezuela
275	Carlos Marmol	Right	No	Usa
276	Ronald Belisario	Right	No	Panama
277	Onelki García	Left	No	Usa
278	Javy Guerra	Right	No	Puerto Rico
279	Shawn Tolleson	Right	No	Puerto Rico
280	Peter Moylan	Right	No	Usa
281	Josh Wall	Right	No	Usa
282	James Loney	Left	No	Dominican Republic
283	Shane Victorino	Right	Yes	Usa
284	Juan Rivera	Right	No	Usa
285	Tony Gwynn	Left	No	Puerto Rico
286	Bobby Abreu	Left	No	Usa
287	Adam Kennedy	Left	No	Dominican Republic
288	Matt Treanor	Right	No	Usa
289	Iván De Jesús	Right	No	Usa
290	Jerry Sands	Right	No	Dominican Republic
291	Aaron Harang	Right	No	Cuba
292	Nathan Eovaldi	Right	No	Usa
293	Randy Choate	Left	No	Usa
294	Todd Coffey	Right	No	Dominican Republic
295	Rubby De La Rosa	Right	No	Usa
296	John Ely	Right	No	Usa
297	Josh Lindblom	Right	No	Usa
298	Mike Macdougal	Right	Yes	Usa
299	Rod Barajas	Right	No	Usa
300	Jamey Carroll	Right	No	Usa
301	Aaron Miles	Right	Yes	Puerto Rico
302	Casey Blake	Right	No	Usa
303	Dioner Navarro	Right	Yes	Dominican Republic
304	Rafael Furcal	Right	Yes	Dominican Republic
305	Trent Oeltjen	Left	No	Cuba
306	Marcus Thames	Right	No	Dominican Republic
307	Jay Gibbons	Left	No	Venezuela
308	Russ Mitchell	Right	No	Usa
309	Eugenio Velez	Right	Yes	Usa
310	Juan Castro	Right	No	Usa
311	Xavier Paul	Left	No	Usa
312	Héctor Giménez	Right	Yes	Venezuela
313	Jamie Hoffmann	Right	No	Cuba
314	Hiroki Kuroda	Right	No	Japan
315	Jon Garland	Right	No	Dominican Republic
316	Dana Eveland	Left	No	Venezuela
317	Lance Cormier	Right	No	Puerto Rico
318	Ramon Troncoso	Right	No	Usa
319	Blake Hawksworth	Right	No	Usa
320	Vicente Padilla	Right	No	Usa
321	Hung-Chih Kuo	Left	No	Cuba
322	Jonathan Broxton	Right	No	Usa
323	Blake Dewitt	Left	No	Usa
324	Manny Ramirez	Right	No	Dominican Republic
325	Ryan Theriot	Right	No	Usa
326	Reed Johnson	Right	No	Mexico
327	Ronnie Belliard	Right	No	Usa
328	Garret Anderson	Left	No	Dominican Republic
329	Scott Podsednik	Left	No	Usa
330	Brad Ausmus	Right	No	Cuba
331	Chin-Lung Hu	Right	No	Venezuela
332	John Lindsey	Right	No	Usa
333	Nick Green	Right	No	Usa
334	Carlos Monasterios	Right	No	Usa
335	Charlie Haeger	Right	No	Usa
336	Jeff Weaver	Right	No	Usa
337	Ramon Ortiz	Right	No	Dominican Republic
338	George Sherrill	Left	No	Usa
339	Octavio Dotel	Right	No	Dominican Republic
340	Travis Schlichting	Right	No	Usa
341	James Mcdonald	Left	No	Usa
342	Jon Link	Right	No	Usa
343	Russ Ortiz	Right	No	Usa
344	Jack Taschner	Left	No	Usa
345	Justin Miller	Right	No	Mexico
346	Orlando Hudson	Right	Yes	Puerto Rico
347	Juan Pierre	Left	No	Usa
348	Mark Loretta	Right	No	Dominican Republic
349	Doug Mientkiewicz	Left	No	Dominican Republic
350	Jim Thome	Left	No	Usa
351	Mitch Jones	Right	No	Puerto Rico
352	Tony Abreu	Right	Yes	Usa
353	Jason Repko	Right	No	Usa
354	Randy Wolf	Left	No	Usa
355	Eric Stults	Left	No	Japan
356	Eric Milton	Left	No	Venezuela
357	Jason Schmidt	Right	No	Usa
358	Guillermo Mota	Right	No	Dominican Republic
359	Will Ohman	Left	No	Usa
360	Cory Wade	Right	No	Usa
361	Claudio Vargas	Right	No	Dominican Republic
362	Brent Leach	Left	No	Usa
363	Jeff Kent	Right	No	Venezuela
364	Ángel Berroa	Right	No	Puerto Rico
365	Andruw Jones	Right	No	Usa
366	Nomar Garciaparra	Right	No	Usa
367	Delwyn Young	Right	Yes	Usa
368	Mark Sweeney	Left	No	Usa
369	Luis Maza	Right	No	Venezuela
370	Andy Laroche	Right	No	Usa
371	Danny Ardoin	Right	No	Dominican Republic
372	Pablo Ozuna	Right	No	Usa
373	Gary Bennett	Right	No	Venezuela
374	Terry Tiffee	Right	Yes	Usa
375	Derek Lowe	Right	No	Usa
376	Brad Penny	Right	No	Japan
377	Greg Maddux	Right	No	Usa
378	Chan Ho Park	Right	No	South Korea
379	Esteban Loaiza	Right	No	Venezuela
380	Jason Johnson	Right	No	South Korea
381	Takashi Saito	Left	No	Usa
382	Brian Falkenborg	Right	No	Usa
383	Joe Beimel	Left	No	Usa
384	Tanyon Sturtze	Right	No	Usa
385	Scott Proctor	Right	No	Usa
386	Yhency Brazobán	Right	No	Usa
387	Luis Gonzalez	Left	No	Venezuela
388	Wilson Betemit	Right	Yes	Venezuela
389	Ramon Martinez	Right	No	Dominican Republic
390	Olmedo Saenz	Right	No	Dominican Republic
391	Mike Lieberthal	Right	No	Usa
392	Wilson Valdez	Right	No	Usa
393	Shea Hillenbrand	Right	No	Usa
394	Brady Clark	Right	No	Usa
395	Marlon Anderson	Left	No	Usa
396	Chad Moeller	Right	No	Usa
397	Brett Tomko	Right	No	Usa
398	Mark Hendrickson	Left	No	Venezuela
399	David Wells	Left	No	Usa
400	Rudy Seanez	Right	No	Usa
401	Jon Meloan	Right	No	Usa
402	D.J. Houlton	Right	No	Dominican Republic
403	Eric Hull	Right	No	Usa
404	Kenny Lofton	Left	No	Usa
405	J.D. Drew	Left	No	Usa
406	José Cruz	Right	Yes	Puerto Rico
407	Julio Lugo	Right	No	Usa
408	Willy Aybar	Right	Yes	Usa
409	César Izturis	Right	Yes	Dominican Republic
410	Bill Mueller	Right	Yes	Dominican Republic
411	Sandy Alomar	Right	No	Venezuela
412	Toby Hall	Right	No	Cuba
413	Ricky Ledée	Left	No	Dominican Republic
414	Oscar Robles	Left	No	Dominican Republic
415	Joel Guzmán	Right	No	Usa
416	Cody Ross	Right	No	Usa
417	Einar Díaz	Right	No	Usa
418	Aaron Sele	Right	No	Usa
419	Jae Weong Seo	Right	No	Usa
420	Odalis Perez	Left	No	Cuba
421	Franquelis Osoria	Right	No	Dominican Republic
422	Tim Hamulack	Right	No	Japan
423	Elmer Dessens	Right	No	Usa
424	Éric Gagné	Right	No	Usa
425	Danys Báez	Right	No	Usa
426	Giovanni Carrara	Right	No	Usa
427	Lance Carter	Right	No	Usa
428	Jason Phillips	Right	No	Usa
429	Hee-Seop Choi	Left	No	Usa
430	Mike Edwards	Right	No	Usa
431	Milton Bradley	Right	Yes	Puerto Rico
432	Jayson Werth	Right	No	Usa
433	Antonio Perez	Right	No	Cuba
434	Jose Valentin	Right	Yes	Dominican Republic
435	Jason Grabowski	Left	No	Venezuela
436	Paul Bako	Left	No	Usa
437	Mike Rose	Right	Yes	Usa
438	Norihiro Nakamura	Right	No	Cuba
439	Brian Myrow	Left	No	Puerto Rico
440	Chin-Feng Chen	Right	No	Usa
441	Scott Erickson	Right	No	Cuba
442	Edwin Jackson	Right	No	Usa
443	Derek Thompson	Left	No	Dominican Republic
444	Duaner Sanchez	Right	No	Puerto Rico
445	Wilson Álvarez	Left	No	Usa
446	Kelly Wunsch	Left	No	Usa
447	Steve Schmoll	Right	No	Venezuela
448	Buddy Carlyle	Left	No	Usa
449	Paul Lo Duca	Right	No	Usa
450	Shawn Green	Left	No	Usa
451	Alex Cora	Left	No	Usa
452	Adrián Beltré	Right	No	Dominican Republic
453	Juan Encarnación	Right	No	Dominican Republic
454	Dave Roberts	Left	No	Usa
455	Steve Finley	Left	No	Usa
456	José Hernández	Right	No	Dominican Republic
457	David Ross	Right	No	Usa
458	Robin Ventura	Left	No	Usa
459	Brent Mayne	Left	No	Usa
460	Joe Thurston	Left	No	Usa
461	Tom Wilson	Right	No	Usa
462	Jose Flores	Right	No	Puerto Rico
463	Kazuhisa Ishii	Left	No	Japan
464	José Lima	Right	No	Venezuela
465	Hideo Nomo	Right	No	Japan
466	Darren Dreifort	Right	No	Usa
467	Tom Martin	Left	No	Panama
468	Rodney Myers	Right	No	Japan
469	Mike Venafro	Left	No	Usa
470	Masao Kida	Right	No	Usa
471	Scott Stewart	Right	No	Usa
472	Fred Mcgriff	Left	No	Usa
473	Jeromy Burnitz	Left	No	Dominican Republic
474	Jolbert Cabrera	Right	No	Usa
475	Brian Jordan	Right	No	Usa
476	Mike Kinkade	Right	No	Usa
477	Ron Coomer	Right	No	Usa
478	Daryle Ward	Left	No	Dominican Republic
479	Rickey Henderson	Right	No	Dominican Republic
480	Wilkin Ruan	Right	No	Venezuela
481	Todd Hundley	Right	Yes	Usa
482	Larry Barnes	Left	No	Venezuela
483	Jason Romano	Right	No	Venezuela
484	Chad Hermansen	Right	No	Dominican Republic
485	Bubba Crosby	Left	No	Usa
486	Koyie Hill	Right	Yes	Usa
487	Kevin Brown	Right	No	Usa
488	Andy Ashby	Right	No	Usa
489	Paul Shuey	Right	No	Mexico
490	Paul Quantrill	Left	No	Usa
491	Scott Mullen	Right	No	Usa
492	Steve Colyer	Left	No	Usa
493	Troy Brohawn	Left	No	Usa
494	Victor Álvarez	Left	No	Usa
495	Eric Karros	Right	No	Usa
496	Mark Grudzielanek	Right	No	Dominican Republic
497	Marquis Grissom	Right	No	Cuba
498	Dave Hansen	Left	No	Usa
499	Chad Kreuter	Right	Yes	Usa
500	Hiram Bocachica	Right	No	Usa
501	Tyler Houston	Left	No	Venezuela
502	Jeff Reboulet	Right	No	Usa
503	Luke Allen	Left	No	Dominican Republic
504	Omar Daal	Left	No	Usa
505	Kevin Beirne	Left	No	Usa
506	Jeff Williams	Right	No	Dominican Republic
507	Terry Mulholland	Right	No	Usa
508	Jesse Orosco	Right	No	Usa
509	Bryan Corey	Right	No	Mexico
510	Dennis Springer	Right	No	Puerto Rico
511	Robert Ellis	Right	No	Venezuela
512	Gary Sheffield	Right	No	Venezuela
513	Tom Goodwin	Left	No	Usa
514	Chris Donnels	Left	No	Dominican Republic
515	Angel Pena	Right	No	Usa
516	Mckay Christensen	Left	No	Venezuela
517	Phil Hiatt	Right	No	Puerto Rico
518	Bruce Aven	Right	No	Dominican Republic
519	Jeff Branson	Left	No	Usa
520	Tim Bogar	Right	No	Usa
521	Brian Johnson	Right	No	Usa
522	Terry Adams	Right	No	Venezuela
523	Luke Prokopec	Left	No	Usa
524	James Baldwin	Right	No	Usa
525	Matt Herges	Left	No	Mexico
526	Alberto Reyes	Right	No	Mexico
527	Mike Fetters	Right	No	Usa
528	Jeff Shaw	Right	No	Usa
529	Mike Trombley	Right	No	Usa
530	Jose Nunez	Left	No	Dominican Republic
531	Gregg Olson	Right	No	Dominican Republic
532	Todd Hollandsworth	Left	No	Dominican Republic
533	Kevin Elster	Right	No	Usa
534	F.P. Santangelo	Right	Yes	Usa
535	Devon White	Right	Yes	Venezuela
536	Jose Vizcaino	Right	Yes	Usa
537	Jim Leyritz	Right	No	Dominican Republic
538	Gerónimo Berroa	Right	No	Usa
539	Shawn Gilbert	Right	No	Dominican Republic
540	Mike Metcalfe	Right	No	Usa
541	Adam Melhuse	Right	Yes	Usa
542	Carlos Perez	Left	No	Cuba
543	Ismael Valdez	Right	No	Usa
544	Orel Hershiser	Right	No	Usa
545	Alan Mills	Right	No	Dominican Republic
546	Antonio Osuna	Right	No	Usa
547	Mike Judd	Right	No	Puerto Rico
548	Trever Miller	Right	No	Usa
549	Onan Masaoka	Right	No	Usa
550	Jamie Arnold	Right	No	Dominican Republic
551	Eric Young Sr.	Right	No	Usa
552	Raul Mondesí	Right	No	Venezuela
553	Craig Counsell	Left	No	Puerto Rico
554	Trent Hubbard	Right	No	Usa
555	Tripp Cromer	Right	No	Puerto Rico
556	Jacob Brumfield	Right	No	Puerto Rico
557	Chance Sanford	Left	No	Usa
558	Brent Cookson	Right	No	Usa
559	Rick Wilkins	Left	No	Usa
560	Robinson Checo	Right	No	Dominican Republic
561	Pedro Borbón	Right	No	Puerto Rico
562	Dave Mlicki	Right	No	Usa
563	Jeff Kubenka	Right	No	Usa
564	Mike Maddux	Left	No	Usa
565	Mel Rojas	Right	No	Venezuela
566	Doug Bochtler	Right	No	Usa
567	Charles Johnson	Right	No	Usa
568	Matt Luke	Left	No	Venezuela
569	Roger Cedeño	Right	Yes	Usa
570	Bobby Bonilla	Right	Yes	Dominican Republic
571	Wilton Guerrero	Right	Yes	Dominican Republic
572	Todd Zeile	Right	No	Usa
573	Mike Piazza	Right	No	Usa
574	Paul Konerko	Right	No	Usa
575	Jim Eisenreich	Left	No	Venezuela
576	Tom Prince	Right	No	Usa
577	Thomas Howard	Right	Yes	Usa
578	Mike Devereaux	Right	No	Usa
579	Damon Hollins	Right	No	Dominican Republic
580	Brian Bohanon	Left	No	Usa
581	Dennys Reyes	Right	No	Mexico
582	Jim Bruske	Right	No	Usa
583	Brad Clontz	Right	No	Usa
584	Frank Lankford	Right	No	Dominican Republic
585	Mark Guthrie	Right	No	Dominican Republic
586	Sean Maloney	Right	No	Cuba
587	Eric Weaver	Right	No	Dominican Republic
588	Manuel Barrios	Right	No	Dominican Republic
589	Greg Mcmichael	Right	No	Cuba
590	Scott Radinsky	Left	No	Mexico
591	Darren Hall	Right	No	Usa
592	Will Brunson	Left	No	Usa
593	Gary Rath	Left	No	Usa
594	Greg Gagne	Right	No	Usa
595	Brett Butler	Left	No	Usa
596	Otis Nixon	Right	Yes	Dominican Republic
597	Billy Ashley	Right	No	Cuba
598	Nelson Liriano	Right	Yes	Usa
599	Eric Anthony	Left	No	Usa
600	Darren Lewis	Right	No	Cuba
601	Wayne Kirby	Left	No	Dominican Republic
602	Karim García	Left	No	Usa
603	Adam Riggs	Right	No	Dominican Republic
604	Chad Fonville	Right	Yes	Venezuela
605	Chip Hale	Left	No	Dominican Republic
606	Garey Ingram	Right	No	Usa
607	Eddie Murray	Right	Yes	Usa
608	Eddie Williams	Right	No	Usa
609	Henry Blanco	Right	No	Usa
610	Pedro Astacio	Right	No	Dominican Republic
611	Tom Candiotti	Right	No	Usa
612	Mike Harkey	Right	No	Mexico
613	Rick Gorecki	Right	No	Usa
614	Todd Worrell	Right	No	Puerto Rico
615	Delino Deshields	Left	No	Usa
616	Mike Blowers	Right	No	Usa
617	Tim Wallach	Right	No	Usa
618	Chad Curtis	Right	No	Usa
619	Mike Busch	Right	No	Usa
620	Milt Thompson	Left	No	Usa
621	Dave Clark	Left	No	Usa
622	Carlos Hernández	Right	No	Usa
623	Rick Parker	Right	No	Usa
624	Oreste Marrero	Left	No	Venezuela
625	Joey Eischen	Left	No	Usa
626	John Cummings	Left	No	Cuba
627	Jose Offerman	Right	Yes	Dominican Republic
628	Roberto Kelly	Right	No	Venezuela
629	Chris Gwynn	Left	No	Usa
630	Henry Rodriguez	Left	No	Cuba
631	Mitch Webster	Right	Yes	Dominican Republic
632	Jeff Treadway	Left	No	Usa
633	Reggie Williams	Right	Yes	Usa
634	Dick Schofield	Right	No	Usa
635	Eddie Pye	Right	No	Usa
636	Noe Munoz	Right	No	Venezuela
637	Kevin Tapani	Right	No	Venezuela
638	Willie Banks	Right	No	Usa
639	Jose Parra	Right	No	Usa
640	Todd Williams	Right	No	Usa
641	Rob Murphy	Left	No	Usa
642	Felix Rodriguez	Right	No	Cuba
643	Greg Hansell	Right	No	Usa
644	Cory Snyder	Right	No	Mexico
645	Rafael Bournigal	Right	No	Usa
646	Kevin Gross	Right	No	Dominican Republic
647	Roger Mcdowell	Right	No	Usa
648	Gary Wayne	Left	No	Usa
649	Brian Barnes	Left	No	Usa
650	Al Osuna	Right	No	Cuba
651	Jim Gott	Right	No	Usa
652	Jody Reed	Right	No	Usa
653	Eric Davis	Right	No	Mexico
654	Lenny Harris	Left	No	Dominican Republic
655	Darryl Strawberry	Left	No	Dominican Republic
656	Mike Sharperson	Right	No	Usa
657	Jerry Brooks	Right	No	Usa
658	Pedro Martinez	Right	No	Dominican Republic
659	Ricky Trlicek	Right	No	Usa
660	Steve Wilson	Left	No	Usa
661	John Desilva	Right	No	Usa
662	Kip Gross	Right	No	Usa
663	Rod Nichols	Right	No	Usa
664	Mike Scioscia	Left	No	Usa
665	Todd Benzinger	Right	Yes	Usa
666	Juan Samuel	Right	No	Usa
667	Kal Daniels	Left	No	Usa
668	Dave Anderson	Right	No	Usa
669	Stan Javier	Right	Yes	Dominican Republic
670	Bob Ojeda	Left	No	Usa
671	Tim Crews	Right	No	Puerto Rico
672	John Candelaria	Left	No	Mexico
673	Jay Howell	Right	No	Usa
674	Alfredo Griffin	Right	Yes	South Korea
675	Gary Carter	Right	No	Cuba
676	Jeff Hamilton	Right	No	Venezuela
677	Jose Gonzalez	Right	No	Venezuela
678	Barry Lyons	Right	No	Usa
679	Greg Smith	Right	Yes	Usa
680	Butch Davis	Right	No	Usa
681	Mike Morgan	Right	No	Usa
682	Tim Belcher	Right	No	Puerto Rico
683	Mike Hartley	Right	No	Puerto Rico
684	Dennis Cook	Left	No	Dominican Republic
685	Mike Christopher	Right	No	Usa
686	John Wetteland	Right	No	Usa
687	Kirk Gibson	Left	No	Usa
688	Hubie Brooks	Right	No	Usa
689	Rick Dempsey	Right	No	Usa
690	Mickey Hatcher	Right	No	Puerto Rico
691	Willie Randolph	Right	No	Dominican Republic
692	John Shelby	Right	Yes	Venezuela
693	Brian Traxler	Left	No	Usa
694	Luis Lopez	Right	No	Mexico
695	Darrin Fletcher	Left	No	Usa
696	Fernando Valenzuela	Left	No	Mexico
697	Jim Neidlinger	Right	Yes	Usa
698	Terry Wells	Left	No	Dominican Republic
699	Ray Searage	Left	No	Puerto Rico
700	Pat Perry	Left	No	Usa
701	Mike Munoz	Left	No	Dominican Republic
702	Don Aase	Right	No	Usa
703	Darren Holmes	Right	No	Usa
704	Dave Walsh	Left	No	Venezuela
705	Jim Poole	Left	No	Usa
706	Mike Marshall	Right	No	Cuba
707	Mike Davis	Left	No	Dominican Republic
708	Franklin Stubbs	Left	No	Mexico
709	Mariano Duncan	Right	No	Usa
710	Bill Bean	Left	No	Cuba
711	Mike Huff	Right	No	Venezuela
712	Tracy Woodson	Right	No	Usa
713	Tim Leary	Right	No	Usa
714	John Tudor	Left	No	Usa
715	Ricky Horton	Left	No	Usa
716	Alejandro Pena	Right	No	Usa
717	Jeff Fischer	Right	No	Usa
718	Steve Sax	Right	No	Cuba
719	Pedro Guerrero	Right	No	Dominican Republic
720	Danny Heep	Left	No	Usa
721	Gil Reyes	Right	No	Mexico
722	Don Sutton	Right	No	Usa
723	Shawn Hillegas	Right	No	Usa
724	Brian Holton	Right	No	Usa
725	William Brennan	Right	No	Usa
726	Ken Howell	Right	No	Dominican Republic
727	Brad Havens	Left	No	Dominican Republic
728	Bill Krueger	Left	No	Puerto Rico
729	Ken Landreaux	Left	No	Usa
730	Alex Trevino	Right	No	Usa
731	Phil Garner	Right	No	Usa
732	Glenn Hoffman	Right	No	Puerto Rico
733	Mike Ramsey	Right	Yes	Venezuela
734	Ralph Bryant	Left	No	Usa
735	Tito Landrum	Right	No	Dominican Republic
736	Bill Madlock	Right	No	Usa
737	Craig Shipley	Right	No	Mexico
738	Len Matuszek	Left	No	Usa
739	Orlando Mercado	Right	No	Venezuela
740	Brad Wellman	Right	No	Usa
741	Bob Welch	Right	No	Dominican Republic
742	Rick Honeycutt	Left	No	Usa
743	Matt Young	Left	No	Usa
744	Ron Davis	Right	No	Usa
745	Tom Niedenfuer	Right	No	Usa
746	Jack Savage	Right	No	Usa
747	Jerry Reuss	Left	No	Dominican Republic
748	Greg Brock	Left	No	Usa
749	Enos Cabell	Right	No	Usa
750	Bill Russell	Right	No	Usa
751	César Cedeño	Right	No	Usa
752	Larry See	Right	No	Usa
753	Jack Fimple	Right	No	Venezuela
754	Terry Whitfield	Left	No	Dominican Republic
755	Ed Amelung	Left	No	Usa
756	Dennis Powell	Right	No	Venezuela
757	Balvino Gálvez	Right	No	Dominican Republic
758	Carlos Diaz	Right	No	Venezuela
759	Ed Vande Berg	Right	No	Usa
760	Joe Beckwith	Left	No	Dominican Republic
761	Candy Maldonado	Right	No	Puerto Rico
762	R.J. Reynolds	Right	Yes	Usa
763	Steve Yeager	Right	No	Usa
764	Bob Bailor	Right	No	Dominican Republic
765	Al Oliver	Left	No	Usa
766	Sid Bream	Left	No	Usa
767	Jay Johnstone	Left	No	Usa
768	Stu Pederson	Left	No	Venezuela
769	Bobby Castillo	Right	No	Usa
770	Tom Brennan	Right	No	Usa
771	Steve Howe	Left	No	Usa
772	German Rivera	Right	No	Cuba
773	Rick Monday	Left	No	Usa
774	Rafael Landestoy	Right	Yes	Dominican Republic
775	Tony Brewer	Right	No	Usa
776	Jose Morales	Right	No	Usa
777	Mike Vail	Right	No	Usa
778	Lemmie Miller	Right	No	Usa
779	Burt Hooton	Right	No	Usa
780	Pat Zachry	Right	No	Usa
781	Rich Rodas	Left	No	Panama
782	Larry White	Right	No	Usa
783	Dusty Baker	Right	No	Dominican Republic
784	Derrel Thomas	Right	Yes	Usa
785	Ron Roenicke	Right	Yes	Japan
786	Cecil Espy	Right	Yes	Dominican Republic
787	Dave Sax	Right	No	Usa
788	Alex Taveras	Right	No	Usa
789	Dave Stewart	Right	No	Usa
790	Sid Fernandez	Left	No	Usa
791	Ricky Wright	Left	No	Cuba
792	Steve Garvey	Right	No	Usa
793	Ron Cey	Right	No	Usa
794	Jorge Orta	Left	No	Usa
795	Mark Belanger	Right	No	Usa
796	Don Crow	Right	No	Puerto Rico
797	Mark Bradley	Right	No	Usa
798	Manny Mota	Right	No	Dominican Republic
799	Vicente Romo	Right	No	Dominican Republic
800	Ted Power	Right	No	Puerto Rico
801	Terry Forster	Left	No	Usa
802	Steve Shirley	Left	No	Usa
803	Dave Goltz	Right	No	Usa
804	Davey Lopes	Right	No	Usa
805	Reggie Smith	Right	Yes	Venezuela
806	Pepe Frías	Right	No	Puerto Rico
807	Gary Weiss	Right	Yes	Usa
808	Joe Ferguson	Right	No	Venezuela
809	Jack Perconte	Left	No	Usa
810	Bobby Mitchell	Left	No	Usa
811	Jerry Grote	Right	No	Usa
812	Rick Sutcliffe	Left	No	Cuba
813	Rudy Law	Left	No	Usa
814	Gary Thomasson	Left	No	Usa
815	Vic Davalillo	Left	No	Usa
816	Don Stanhouse	Right	No	Usa
817	Charlie Hough	Right	No	Usa
818	Von Joshua	Left	No	Usa
819	Ted Martinez	Right	No	Mexico
820	Johnny Oates	Left	No	Japan
821	Andy Messersmith	Right	No	Usa
822	Doug Rau	Left	No	Usa
823	Ken Brett	Left	No	Usa
824	Dave Patterson	Right	No	Usa
825	Gerry Hannahs	Left	No	Venezuela
826	Lerrin Lagrow	Right	No	Dominican Republic
827	Dennis Lewallyn	Right	No	Cuba
828	Lance Rautzhan	Right	No	Usa
829	Bill North	Right	Yes	Usa
830	Lee Lacy	Right	No	Dominican Republic
831	Glenn Burke	Right	No	Usa
832	Joe Simpson	Left	No	Dominican Republic
833	Myron White	Left	No	Usa
834	Brad Gulden	Left	No	Usa
835	Enzo Hernández	Right	No	Puerto Rico
836	Tommy John	Right	No	Usa
837	Rick Rhoden	Right	No	Usa
838	Mike Garman	Right	No	Usa
839	John Hale	Left	No	Dominican Republic
840	Ed Goodson	Left	No	Usa
841	Boog Powell	Left	No	Cuba
842	Ron Washington	Right	No	Usa
843	Jeffrey Leonard	Right	No	Puerto Rico
844	Kevin Pasley	Right	No	Usa
845	Elias Sosa	Right	No	Usa
846	Stan Wall	Left	No	Usa
847	Al Downing	Right	No	Japan
848	Hank Webb	Right	No	Usa
849	Bill Buckner	Left	No	Venezuela
850	Ted Sizemore	Right	No	Puerto Rico
851	Henry Cruz	Left	No	Puerto Rico
852	Ellie Rodriguez	Right	No	Cuba
853	Jim Lyttle	Left	No	Puerto Rico
854	Rick Auerbach	Right	No	Dominican Republic
855	Leron Lee	Left	No	Panama
856	Danny Walton	Right	No	Dominican Republic
857	Sergio Robles	Right	No	Cuba
858	Jim Wynn	Right	No	Usa
859	Willie Crawford	Left	No	Usa
860	Tom Paciorek	Right	No	Dominican Republic
861	Ken Mcmullen	Right	No	Usa
862	Jerry Royster	Right	No	Usa
863	Charlie Manuel	Left	No	Dominican Republic
864	Paul Powell	Right	No	Usa
865	Orlando Álvarez	Right	No	Usa
866	Jim Brewer	Left	No	Usa
867	Juan Marichal	Right	No	Mexico
868	Dave Sells	Right	No	Dominican Republic
869	Geoff Zahn	Left	No	Usa
870	Gail Hopkins	Left	No	Usa
871	Eddie Solomon	Right	No	Dominican Republic
872	Rex Hudson	Right	Yes	Usa
873	Greg Shanahan	Right	No	Usa
874	Willie Davis	Left	No	Usa
875	Chris Cannizzaro	Right	No	Usa
876	Jim Fairey	Left	No	Usa
877	Claude Osteen	Left	No	Usa
878	Pete Richert	Left	No	Venezuela
879	George Culver	Right	No	Cuba
880	Greg Heydeman	Right	No	Mexico
881	Wes Parker	Right	Yes	Usa
882	Frank Robinson	Right	No	Usa
883	Bobby Valentine	Right	No	Mexico
884	Jim Lefebvre	Right	Yes	Usa
885	Duke Sims	Left	No	Dominican Republic
886	Billy Grabarkewitz	Right	No	Puerto Rico
887	Maury Wills	Right	Yes	Usa
888	Dick Dietz	Right	No	Usa
889	Terry Mcdermott	Right	No	Dominican Republic
890	Bill Singer	Right	No	Dominican Republic
891	Mike Strahler	Right	No	Usa
892	Pete Mikkelsen	Right	No	Venezuela
893	Hoyt Wilhelm	Right	No	Usa
894	Jose Pena	Right	No	Usa
895	Ron Perranoski	Left	No	Dominican Republic
896	Dick Allen	Right	No	Dominican Republic
897	Tom Haller	Left	No	Usa
898	Bill Sudakis	Right	Yes	Usa
899	Bobby Darwin	Right	No	Usa
900	Doyle Alexander	Right	No	Usa
901	Bob O'Brien	Left	No	Dominican Republic
902	Joe Moeller	Right	No	Usa
903	Sandy Vance	Right	No	Venezuela
904	Andy Kosco	Right	No	Usa
905	Jeff Torborg	Right	No	Usa
906	Len Gabrielson	Left	No	Puerto Rico
907	Gary Moore	Right	No	Usa
908	Bob Stinson	Right	Yes	Panama
909	Alan Foster	Right	No	Usa
910	Fred Norman	Right	Yes	Usa
911	Ray Lamb	Right	No	Dominican Republic
912	Jerry Stephenson	Left	No	Usa
913	Camilo Pascual	Right	No	Usa
914	Al Mcbean	Right	No	Venezuela
915	Ron Fairly	Left	No	Usa
916	Tom Hutton	Left	No	Usa
917	Paul Popovich	Right	Yes	Usa
918	John Miller	Right	No	Venezuela
919	Ken Boyer	Right	No	Usa
920	Don Drysdale	Right	No	Usa
921	Jim Bunning	Right	No	Usa
922	John Purdin	Right	No	Dominican Republic
923	Jack Jenkins	Right	No	Usa
924	Zoilo Versalles	Right	No	Usa
925	Bob Bailey	Right	No	Venezuela
926	Ted Savage	Right	No	Puerto Rico
927	Rocky Colavito	Right	No	Usa
928	Luis Alcaraz	Right	No	Cuba
929	Bart Shirley	Right	No	Venezuela
930	Jim Campanis	Right	No	Usa
931	Cleo James	Right	No	Usa
932	Al Ferrara	Right	No	Usa
933	Mike Kekich	Right	No	Cuba
934	Mudcat Grant	Right	No	Dominican Republic
935	Jack Billingham	Right	No	Usa
936	Hank Aguirre	Right	No	Usa
937	Phil Regan	Right	No	Usa
938	John Roseboro	Left	No	Usa
939	Ron Hunt	Right	No	Cuba
940	Gene Michael	Right	Yes	Venezuela
941	Lou Johnson	Right	No	Usa
942	Nate Oliver	Right	No	Usa
943	Jim Hickman	Right	No	Dominican Republic
944	Tommy Dean	Right	No	Puerto Rico
945	Johnny Werhas	Right	No	Dominican Republic
946	Bob Miller	Right	No	Dominican Republic
947	John Duffie	Right	No	Usa
948	Dick Egan	Left	No	Cuba
949	Bob Lee	Right	No	Venezuela
950	Bruce Brubaker	Right	No	Mexico
951	John Kennedy	Right	No	Usa
952	Tommy Davis	Right	No	Usa
953	Jim Gilliam	Right	Yes	Usa
954	Dick Stuart	Right	No	Usa
955	Jim Barbieri	Left	No	Puerto Rico
956	Wes Covington	Left	No	Usa
957	Derrell Griffith	Left	No	Venezuela
958	Sandy Koufax	Right	No	Usa
959	Howie Reed	Right	No	Usa
960	Johnny Podres	Left	No	Dominican Republic
961	Nick Willhite	Left	No	Usa
962	Dick Tracewski	Right	No	Usa
963	Wally Moon	Left	No	Usa
964	Don Lejohn	Right	No	Dominican Republic
965	Hector Valle	Right	No	Usa
966	Dick Smith	Right	No	Usa
967	Frank Howard	Right	No	Dominican Republic
968	Doug Camilli	Right	No	Venezuela
969	Lee Walls	Right	No	Usa
970	Phil Ortega	Right	No	Usa
971	Larry Miller	Left	No	Usa
972	Bill Skowron	Right	No	Usa
973	Marv Breeding	Right	No	Usa
974	Don Zimmer	Right	No	Usa
975	Daryl Spencer	Right	No	Usa
976	Dick Nen	Left	No	Usa
977	Roy Gleason	Right	Yes	Dominican Republic
978	Larry Sherry	Right	No	Mexico
979	Dick Calmus	Right	No	Usa
980	Ken Rowe	Right	No	Usa
981	Ed Roebuck	Right	No	Usa
982	Jack Smith	Right	No	Dominican Republic
983	Dick Scott	Right	No	Dominican Republic
984	Larry Burright	Right	No	Venezuela
985	Duke Snider	Left	No	Usa
986	Andy Carey	Right	No	Usa
987	Norm Sherry	Right	No	Usa
988	Tim Harkness	Left	No	Usa
989	Stan Williams	Right	No	Usa
990	Willard Hunter	Right	No	Usa
991	Norm Larker	Left	No	Usa
992	Charlie Neal	Right	No	Panama
993	Gil Hodges	Right	No	Usa
994	Bob Aspromonte	Right	No	Usa
995	Gordie Windhorn	Right	No	Usa
996	Don Demeter	Right	No	Usa
997	Charley Smith	Right	No	Usa
998	Carl Warwick	Right	No	Usa
999	Bob Lillis	Right	No	Usa
1000	Roger Craig	Right	No	Japan
1001	Turk Farrell	Right	No	Usa
1002	Jim Golden	Left	No	Puerto Rico
1003	Ed Palmquist	Right	No	Usa
1004	Joe Pignatano	Right	No	Usa
1005	Chuck Essegian	Right	No	Puerto Rico
1006	Irv Noren	Left	No	Puerto Rico
1007	Sandy Amorós	Left	No	Usa
1008	Carl Furillo	Right	No	Dominican Republic
1009	Rip Repulski	Right	No	Usa
1010	Danny Mcdevitt	Left	No	Usa
1011	Ed Rakow	Right	Yes	Usa
1012	Clem Labine	Right	No	Usa
1013	Dick Gray	Right	No	Usa
1014	Jim Baxes	Right	No	Usa
1015	Solly Drake	Right	Yes	Usa
1016	Art Fowler	Right	No	Usa
1017	Gene Snyder	Right	No	Usa
1018	Carl Erskine	Right	No	Usa
1019	Johnny Klippstein	Right	No	Venezuela
1020	Chuck Churn	Right	No	Usa
1021	Fred Kipp	Left	No	Dominican Republic
1022	Bill Harris	Left	No	Usa
1023	Gino Cimoli	Right	No	Usa
1024	Pee Wee Reese	Right	No	Usa
1025	Elmer Valo	Left	No	Dominican Republic
1026	Steve Bilko	Right	No	Dominican Republic
1027	Randy Jackson	Right	No	Usa
1028	Rube Walker	Left	No	Venezuela
1029	Jim Gentile	Left	No	Usa
1030	Don Miles	Left	No	Usa
1031	Earl Robinson	Right	No	Puerto Rico
1032	Bob Wilson	Right	No	Usa
1033	Don Newcombe	Left	No	Usa
1034	Bob Giallombardo	Left	No	Usa
1035	Babe Birrer	Right	No	Usa
1036	Ralph Mauriello	Right	No	Usa
1037	Don Bessent	Right	No	Venezuela
1038	Ron Negray	Right	No	Usa
1039	Jackie Collum	Left	No	Usa
\.


--
-- TOC entry 4935 (class 0 OID 81932)
-- Dependencies: 220
-- Data for Name: dim_posicion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_posicion (position_id, position_code, position_name, position_category) FROM stdin;
1	C	Catcher	Battery
2	1B	First Base	Infield
3	2B	Second Base	Infield
4	SS	Shortstop	Infield
5	3B	Third Base	Infield
6	LF	Left Field	Outfield
7	CF	Center Field	Outfield
8	RF	Right Field	Outfield
9	DH	Designated Hitter	Designated
10	UT	Utility	Utility
11	OF	Outfield	Outfield
12	IF	Infield	Infield
13	P	Pitcher	Battery
14	MI	Middle Infield	Infield
15	CI	Corner Infield	Infield
16	Unknown	Other	Other
\.


--
-- TOC entry 4936 (class 0 OID 81941)
-- Dependencies: 221
-- Data for Name: dim_temporada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.dim_temporada (season_id, year, era) FROM stdin;
1	1958	Expansion Era
2	1959	Expansion Era
3	1960	Expansion Era
4	1961	Expansion Era
5	1962	Expansion Era
6	1963	Expansion Era
7	1964	Expansion Era
8	1965	Expansion Era
9	1966	Expansion Era
10	1967	Expansion Era
11	1968	Expansion Era
12	1969	Expansion Era
13	1970	Free Agency Era
14	1971	Free Agency Era
15	1972	Free Agency Era
16	1973	Free Agency Era
17	1974	Free Agency Era
18	1975	Free Agency Era
19	1976	Free Agency Era
20	1977	Free Agency Era
21	1978	Free Agency Era
22	1979	Free Agency Era
23	1980	Competitive Era
24	1981	Competitive Era
25	1982	Competitive Era
26	1983	Competitive Era
27	1984	Competitive Era
28	1985	Competitive Era
29	1986	Competitive Era
30	1987	Competitive Era
31	1988	Competitive Era
32	1989	Competitive Era
33	1990	Competitive Era
34	1991	Competitive Era
35	1992	Competitive Era
36	1993	Competitive Era
37	1994	Steroid Era
38	1995	Steroid Era
39	1996	Steroid Era
40	1997	Steroid Era
41	1998	Steroid Era
42	1999	Steroid Era
43	2000	Steroid Era
44	2001	Steroid Era
45	2002	Steroid Era
46	2003	Steroid Era
47	2004	Steroid Era
48	2005	Steroid Era
49	2006	Post-Steroid Era
50	2007	Post-Steroid Era
51	2008	Post-Steroid Era
52	2009	Post-Steroid Era
53	2010	Post-Steroid Era
54	2011	Post-Steroid Era
55	2012	Post-Steroid Era
56	2013	Post-Steroid Era
57	2014	Post-Steroid Era
58	2015	Post-Steroid Era
59	2016	Analytics Era
60	2017	Analytics Era
61	2018	Analytics Era
62	2019	Analytics Era
63	2020	Analytics Era
64	2021	Analytics Era
65	2022	Analytics Era
66	2023	Analytics Era
\.


--
-- TOC entry 4937 (class 0 OID 81949)
-- Dependencies: 222
-- Data for Name: fact_batting; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fact_batting (batting_id, player_id, position_id, season_id, age, age_category, games, plate_appearances, at_bats, runs, hits, doubles, triples, home_runs, runs_batted_in, stolen_bases, caught_stealing, base_on_balls, strikeouts, batting_average, on_base_percentage, slugging_percentage, ops, ops_plus, total_bases, times_hit_by_pitch, sacrifice_hits, sacrifice_flies, intentional_walks, double_plays) FROM stdin;
1	1	1	66	28	Peak	126	554	464	80	121	21	2	19	76	3	0	63	89	0.261	0.359	0.438	0.797	114	203	15	0	12	2	8
2	2	2	66	33	Veteran	161	730	637	131	211	59	2	29	102	23	1	72	121	0.331	0.41	0.567	0.976	161	361	16	0	5	12	14
3	3	3	66	23	Young	81	304	256	36	50	15	4	7	32	3	2	38	61	0.195	0.305	0.367	0.672	81	94	4	1	4	1	1
4	4	4	66	34	Senior	124	423	385	49	91	16	1	5	31	8	3	26	48	0.236	0.29	0.322	0.612	66	124	5	2	5	0	12
5	5	5	66	32	Veteran	135	579	482	95	102	17	1	36	105	1	2	85	153	0.212	0.333	0.475	0.808	115	229	6	0	6	4	8
6	6	6	66	35	Senior	133	422	394	47	102	25	1	7	55	4	1	20	72	0.259	0.294	0.381	0.675	81	150	2	0	6	1	8
7	7	7	66	26	Peak	151	567	483	86	120	16	3	23	70	16	3	68	181	0.248	0.353	0.437	0.79	112	211	12	0	4	1	4
8	8	8	66	30	Veteran	152	693	584	126	179	40	1	39	107	14	3	96	107	0.307	0.408	0.579	0.987	163	338	8	0	5	3	5
9	9	9	66	35	Senior	113	479	432	61	117	27	2	33	103	1	0	34	149	0.271	0.321	0.572	0.893	134	247	2	0	9	1	11
10	10	10	66	32	Veteran	117	384	338	51	80	15	1	15	56	16	3	41	125	0.237	0.326	0.42	0.746	100	142	4	0	1	2	2
11	11	8	66	33	Veteran	124	377	334	56	90	23	0	15	40	2	2	34	64	0.269	0.34	0.473	0.813	117	158	3	0	3	1	7
12	12	1	66	33	Veteran	59	200	178	15	32	5	0	2	11	2	1	17	43	0.18	0.256	0.242	0.498	36	43	2	1	2	0	7
13	13	10	66	31	Veteran	54	185	168	19	44	12	0	5	30	1	0	12	29	0.262	0.308	0.423	0.731	95	71	1	0	4	1	6
14	14	3	66	27	Peak	48	133	125	19	32	6	2	3	18	6	2	7	22	0.256	0.301	0.408	0.709	89	51	1	0	0	0	4
15	15	11	66	32	Veteran	36	87	71	12	11	0	0	5	14	0	0	15	37	0.155	0.31	0.366	0.677	82	26	1	0	0	0	0
16	16	12	66	25	Peak	27	81	72	9	12	3	0	2	7	1	0	8	27	0.167	0.247	0.292	0.539	45	21	0	0	1	0	0
17	17	11	66	24	Young	24	45	42	5	11	1	0	2	6	1	0	3	8	0.262	0.311	0.429	0.74	97	18	0	0	0	0	0
18	18	3	66	32	Veteran	20	34	30	4	9	0	0	2	8	2	1	2	7	0.3	0.353	0.5	0.853	127	15	1	0	1	0	1
19	19	12	66	25	Peak	14	27	22	5	3	1	0	0	4	0	0	2	8	0.136	0.231	0.182	0.413	14	4	1	1	1	0	0
20	20	1	66	32	Veteran	5	12	11	0	2	1	0	0	2	0	0	1	5	0.182	0.25	0.273	0.523	42	3	0	0	0	0	0
21	21	4	66	26	Peak	4	10	10	0	1	0	0	0	0	1	0	0	3	0.1	0.1	0.1	0.2	-46	1	0	0	0	0	0
22	22	7	66	32	Veteran	4	6	5	0	2	0	0	0	0	0	1	0	0	0.4	0.5	0.4	0.9	149	2	1	0	0	0	0
23	23	13	66	32	Veteran	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
24	24	13	66	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
25	25	13	66	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
26	26	13	66	30	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
27	27	13	66	30	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
28	28	13	66	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
29	29	13	66	31	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
30	30	13	66	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
31	31	13	66	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
32	32	13	66	31	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
33	33	13	66	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
34	34	13	66	31	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
35	35	13	66	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
36	36	13	66	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
37	37	13	66	36	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
38	38	13	66	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
39	39	13	66	30	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
40	40	13	66	27	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
41	41	13	66	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
42	42	13	66	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
43	43	13	66	35	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
44	44	13	66	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
45	45	13	66	26	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
46	46	13	66	36	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
47	47	13	66	35	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
48	48	13	66	27	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
49	49	13	66	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
50	50	13	66	34	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
51	51	13	66	31	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
52	52	13	66	29	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
53	53	13	66	35	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
54	54	13	66	28	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
55	55	13	66	23	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
56	56	13	66	29	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
57	57	13	66	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
58	58	13	66	24	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
59	1	1	65	27	Peak	137	578	508	68	132	26	3	24	87	1	0	56	96	0.26	0.343	0.465	0.807	124	236	10	0	4	4	11
60	2	2	65	32	Veteran	159	708	612	117	199	47	2	21	100	13	3	84	102	0.325	0.407	0.511	0.918	156	313	5	0	7	12	6
61	59	3	65	24	Young	129	471	421	66	116	20	7	6	42	7	2	47	95	0.276	0.346	0.399	0.745	109	168	0	0	3	0	3
62	60	4	65	29	Peak	160	708	652	101	194	39	4	21	100	27	3	45	131	0.298	0.343	0.466	0.809	124	304	3	0	6	1	9
63	5	5	65	31	Veteran	136	565	464	69	91	22	1	21	69	2	0	90	141	0.196	0.329	0.384	0.713	100	178	5	0	6	1	2
64	10	6	65	31	Veteran	118	454	402	45	89	25	3	10	43	10	1	44	160	0.221	0.304	0.373	0.677	89	150	5	0	3	2	4
65	61	7	65	26	Peak	144	550	504	70	106	27	3	19	68	14	3	38	150	0.21	0.265	0.389	0.654	81	196	2	0	6	0	7
66	8	8	65	29	Peak	142	639	572	117	154	40	3	35	82	12	2	55	104	0.269	0.34	0.533	0.873	140	305	8	0	4	0	8
67	62	9	65	37	Senior	128	532	468	61	130	36	0	13	81	3	0	50	89	0.278	0.35	0.438	0.788	120	205	6	0	8	1	13
68	15	11	65	31	Veteran	74	239	205	35	55	14	1	13	39	4	0	30	86	0.268	0.364	0.537	0.901	149	110	2	0	2	0	2
69	12	1	65	32	Veteran	62	212	179	31	38	6	0	8	26	2	1	27	37	0.212	0.324	0.38	0.704	97	68	3	2	1	0	5
70	63	12	65	29	Peak	73	159	156	13	38	9	2	2	15	0	1	3	25	0.244	0.258	0.365	0.623	73	57	0	0	0	0	7
71	64	6	65	28	Peak	44	137	117	16	19	4	1	7	23	1	0	16	57	0.162	0.277	0.393	0.671	86	46	3	0	1	0	0
72	65	9	65	28	Peak	27	92	86	12	21	1	0	7	17	0	1	5	36	0.244	0.293	0.5	0.793	117	43	1	0	0	1	2
73	66	9	65	31	Veteran	25	77	67	10	16	5	1	2	4	0	1	8	24	0.239	0.338	0.433	0.77	115	29	2	0	0	0	4
74	3	10	65	22	Young	18	50	47	4	8	1	0	1	8	1	0	2	13	0.17	0.2	0.255	0.455	27	12	0	0	1	0	0
75	67	10	65	32	Veteran	14	27	25	1	4	0	0	0	3	1	0	0	9	0.16	0.154	0.16	0.314	-12	4	0	1	1	0	1
76	7	11	65	25	Peak	4	16	13	6	6	2	0	1	3	0	0	2	7	0.462	0.563	0.846	1.409	289	11	1	0	0	0	0
77	68	10	65	27	Peak	10	14	11	4	1	0	0	1	2	0	0	3	4	0.091	0.286	0.364	0.649	81	4	0	0	0	0	0
78	69	11	65	33	Veteran	4	13	12	1	1	1	0	0	0	0	0	1	4	0.083	0.154	0.167	0.321	-10	2	0	0	0	0	1
79	70	10	65	30	Veteran	2	4	4	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
80	71	13	65	32	Veteran	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
81	54	13	65	27	Peak	1	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
82	24	13	65	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
83	25	13	65	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
84	27	13	65	29	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
85	28	13	65	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
86	72	13	65	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
87	35	13	65	26	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
88	73	13	65	29	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
89	74	13	65	34	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
90	36	13	65	25	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
91	75	13	65	31	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
92	76	13	65	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
93	77	13	65	34	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
94	78	13	65	28	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
95	79	13	65	33	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
96	80	13	65	36	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
97	45	13	65	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
98	46	13	65	35	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
99	48	13	65	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
100	81	13	65	36	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
101	49	13	65	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
102	52	13	65	28	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
103	53	13	65	34	Senior	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
104	82	13	65	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
105	83	13	65	31	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
106	56	13	65	28	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
107	57	13	65	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
108	84	13	65	33	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
109	58	13	65	23	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
110	1	1	64	26	Peak	130	501	414	71	107	19	2	25	76	3	0	58	101	0.258	0.365	0.495	0.86	127	205	18	0	11	4	11
111	5	2	64	30	Veteran	144	592	497	95	124	26	2	36	94	2	1	83	120	0.249	0.368	0.527	0.895	135	262	11	0	1	5	7
112	60	3	64	28	Peak	52	226	207	41	70	17	0	10	28	11	2	15	33	0.338	0.385	0.565	0.95	149	117	2	0	2	2	5
113	85	4	64	27	Peak	95	409	353	54	108	22	3	16	57	1	1	48	66	0.306	0.394	0.521	0.915	142	184	5	0	3	2	8
114	62	5	64	36	Senior	151	612	533	87	148	22	0	27	87	3	0	61	98	0.278	0.361	0.471	0.832	120	251	12	0	6	0	12
115	86	6	64	33	Veteran	117	422	384	53	114	27	1	21	69	9	1	30	80	0.297	0.355	0.536	0.892	134	206	6	0	2	4	4
116	61	7	64	25	Peak	95	350	315	39	52	9	2	10	36	3	1	31	94	0.165	0.24	0.302	0.542	44	95	1	0	3	2	2
117	8	8	64	28	Peak	122	550	466	93	123	29	3	23	58	10	5	68	86	0.264	0.367	0.487	0.854	126	227	11	0	5	2	5
118	10	10	64	30	Veteran	148	582	507	92	129	25	4	20	73	13	1	63	167	0.254	0.344	0.438	0.782	107	222	8	1	3	2	5
119	59	14	64	23	Young	102	381	335	49	81	12	4	7	46	4	1	41	83	0.242	0.328	0.364	0.692	85	122	3	0	2	3	3
120	87	10	64	28	Peak	120	234	204	35	55	4	1	7	40	2	2	20	44	0.27	0.363	0.402	0.765	104	82	10	0	0	0	3
121	12	1	64	31	Veteran	77	225	200	28	43	8	0	6	23	1	0	20	56	0.215	0.299	0.345	0.644	72	69	4	1	0	1	6
122	88	2	64	41	Senior	85	204	189	20	48	3	0	12	38	1	0	11	32	0.254	0.299	0.46	0.759	99	87	2	0	2	2	10
123	68	10	64	26	Peak	60	172	158	19	34	9	0	7	29	1	1	10	50	0.215	0.263	0.405	0.668	75	64	1	1	2	1	3
124	89	8	64	26	Peak	37	98	82	8	12	2	1	1	7	0	0	14	24	0.146	0.276	0.232	0.507	38	19	1	0	1	1	1
125	90	11	64	26	Peak	33	72	66	5	12	1	0	2	4	0	0	2	25	0.182	0.25	0.288	0.538	43	19	4	0	0	1	1
126	91	10	64	26	Peak	33	66	65	6	11	1	0	3	4	1	1	1	26	0.169	0.182	0.323	0.505	31	21	0	0	0	0	2
127	65	10	64	27	Peak	25	60	51	4	4	0	0	1	1	0	0	7	18	0.078	0.217	0.137	0.354	-2	7	2	0	0	0	3
128	92	11	64	32	Veteran	17	36	33	2	5	1	1	1	3	0	0	2	14	0.152	0.222	0.333	0.556	46	11	1	0	0	0	2
129	93	11	64	25	Peak	18	34	26	5	5	2	0	1	4	0	0	8	14	0.192	0.382	0.385	0.767	106	10	0	0	0	4	0
130	94	6	64	29	Peak	12	31	25	2	3	0	0	0	2	0	0	6	12	0.12	0.29	0.12	0.41	16	3	0	0	0	0	0
131	95	12	64	30	Veteran	9	15	11	2	3	1	0	0	0	0	0	3	1	0.273	0.467	0.364	0.83	127	4	1	0	0	0	1
132	96	11	64	27	Peak	6	10	10	2	0	0	0	0	0	0	0	0	7	0	0	0	0	-100	0	0	0	0	0	0
133	97	1	64	22	Young	6	7	7	1	1	0	0	1	1	0	0	0	5	0.143	0.143	0.571	0.714	77	4	0	0	0	0	0
134	76	13	64	26	Peak	34	82	69	5	7	2	0	0	3	0	0	5	45	0.101	0.162	0.13	0.293	-20	9	0	8	0	0	0
135	28	13	64	24	Young	30	70	59	5	12	2	0	0	9	0	0	0	22	0.203	0.217	0.237	0.454	21	14	1	10	0	0	1
136	53	13	64	33	Veteran	21	39	36	2	8	0	0	0	3	0	0	1	11	0.222	0.243	0.222	0.465	26	8	0	2	0	0	0
137	98	13	64	30	Veteran	14	34	30	0	1	0	0	0	1	0	0	1	11	0.033	0.065	0.033	0.098	-73	1	0	3	0	0	0
138	99	13	64	36	Senior	11	26	24	0	0	0	0	0	1	0	0	0	15	0	0	0	0	-100	0	0	1	1	0	0
139	56	13	64	27	Peak	17	19	17	2	3	1	0	0	0	0	0	1	8	0.176	0.222	0.235	0.458	23	4	0	1	0	0	0
140	80	13	64	35	Senior	37	18	15	1	4	1	0	0	2	0	0	0	3	0.267	0.25	0.333	0.583	54	5	0	2	1	0	0
141	82	13	64	26	Peak	20	16	15	1	0	0	0	0	0	0	0	1	11	0	0.063	0	0.063	-81	0	0	0	0	0	0
142	100	13	64	23	Young	14	5	5	1	1	0	0	0	0	0	0	0	2	0.2	0.2	0.2	0.4	8	1	0	0	0	0	0
143	25	13	64	23	Young	3	4	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
144	48	13	64	25	Peak	41	4	3	0	0	0	0	0	0	0	0	1	3	0	0.25	0	0.25	-24	0	0	0	0	0	0
145	57	13	64	25	Peak	3	4	4	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
146	35	13	64	25	Peak	55	3	3	0	1	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	79	1	0	0	0	0	0
147	78	13	64	27	Peak	21	3	2	0	1	1	0	0	0	0	0	0	1	0.5	0.5	1	1.5	286	2	0	1	0	0	0
148	101	13	64	32	Veteran	26	3	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
149	43	13	64	33	Veteran	46	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
150	102	13	64	23	Young	2	3	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
151	54	13	64	26	Peak	7	3	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
152	103	13	64	29	Peak	26	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
153	104	13	64	25	Peak	14	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
154	58	13	64	22	Young	34	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
155	36	13	64	24	Young	21	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
156	105	13	64	27	Peak	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	1
157	106	13	64	33	Veteran	66	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
158	107	13	64	35	Senior	7	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
159	108	13	64	29	Peak	4	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
160	27	13	64	28	Peak	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
161	109	13	64	31	Veteran	16	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
162	110	13	64	32	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
163	111	13	64	32	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
164	112	13	64	27	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
165	40	13	64	25	Peak	40	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
166	77	13	64	33	Veteran	70	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
167	113	13	64	33	Veteran	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
168	114	13	64	28	Peak	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
169	115	13	64	26	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
170	84	13	64	32	Veteran	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
171	1	1	63	25	Peak	37	137	114	23	33	9	0	8	25	0	0	20	22	0.289	0.401	0.579	0.98	162	66	2	0	1	1	2
172	5	2	63	29	Peak	58	248	203	36	39	4	0	12	27	1	0	39	60	0.192	0.331	0.389	0.72	95	79	4	0	2	2	3
173	13	3	63	28	Peak	48	148	139	20	32	8	1	5	20	0	1	6	31	0.23	0.27	0.41	0.68	81	57	2	0	1	0	5
174	85	4	63	26	Peak	52	232	212	38	65	12	1	15	41	1	0	17	37	0.307	0.358	0.585	0.943	150	124	1	0	2	0	8
175	62	5	63	35	Senior	42	175	150	26	46	9	1	4	23	1	0	18	26	0.307	0.4	0.46	0.86	133	69	6	0	1	0	2
176	86	6	63	32	Veteran	55	210	196	30	54	9	0	16	34	2	2	12	45	0.276	0.314	0.566	0.881	132	111	0	0	2	1	6
177	61	7	63	24	Young	56	243	213	33	51	10	0	12	30	6	1	30	42	0.239	0.333	0.455	0.789	112	97	0	0	0	2	4
178	8	8	63	27	Peak	55	246	219	47	64	9	1	16	39	10	2	24	38	0.292	0.366	0.562	0.927	147	123	2	0	1	1	2
179	116	9	63	28	Peak	43	138	121	21	23	4	0	7	16	1	0	11	34	0.19	0.285	0.397	0.681	83	48	5	0	0	0	5
180	10	10	63	29	Peak	56	214	185	30	50	10	2	8	32	3	2	26	55	0.27	0.366	0.476	0.842	127	88	2	1	0	0	3
181	12	1	63	30	Veteran	29	104	86	14	21	3	0	1	9	3	0	13	24	0.244	0.353	0.314	0.667	84	27	2	2	1	0	0
182	65	5	63	26	Peak	32	83	76	13	19	6	0	8	17	0	0	4	18	0.25	0.301	0.645	0.946	147	49	2	0	1	0	2
183	59	3	63	22	Young	19	69	63	8	11	2	0	3	8	1	0	6	19	0.175	0.246	0.349	0.596	59	22	0	0	0	0	0
184	87	10	63	27	Peak	21	54	50	8	11	1	0	2	5	0	0	2	14	0.22	0.278	0.36	0.638	72	18	2	0	0	0	3
185	97	1	63	21	Young	2	8	8	1	2	0	0	1	1	0	0	0	3	0.25	0.25	0.625	0.875	126	5	0	0	0	0	0
186	68	10	63	25	Peak	4	7	7	1	2	1	0	0	0	0	0	0	3	0.286	0.286	0.429	0.714	90	3	0	0	0	0	1
187	117	9	63	29	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
188	25	13	63	22	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
189	109	13	63	30	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
190	28	13	63	23	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
191	118	13	63	33	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
192	104	13	63	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
193	40	13	63	24	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
194	76	13	63	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
195	77	13	63	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
196	43	13	63	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
197	106	13	63	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
198	45	13	63	23	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
199	50	13	63	31	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
200	53	13	63	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
201	119	13	63	32	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
202	82	13	63	25	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
203	56	13	63	26	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
204	120	13	63	29	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
205	58	13	63	21	Young	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
206	121	13	63	29	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
207	122	13	63	30	Veteran	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
208	123	13	63	26	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
209	12	1	62	29	Peak	75	242	212	28	43	12	1	5	25	3	0	23	56	0.203	0.293	0.34	0.633	67	72	5	0	2	3	8
210	5	2	62	28	Peak	141	589	487	101	122	22	1	35	98	4	1	90	149	0.251	0.374	0.515	0.889	132	251	8	0	4	1	5
211	13	3	62	27	Peak	130	460	414	57	98	19	1	17	64	4	0	36	97	0.237	0.304	0.411	0.715	87	170	6	0	4	3	9
212	85	4	62	25	Peak	134	541	489	82	133	44	1	19	87	1	0	44	98	0.272	0.335	0.483	0.817	112	236	4	0	4	3	8
213	62	5	62	34	Senior	135	549	479	80	139	24	0	27	67	2	0	51	88	0.29	0.372	0.509	0.881	130	244	14	0	5	1	11
214	116	6	62	27	Peak	149	514	450	83	112	16	3	36	74	1	1	50	111	0.249	0.339	0.538	0.876	126	242	12	0	2	2	4
215	86	7	62	31	Veteran	86	342	308	49	82	15	1	15	47	5	1	23	74	0.266	0.327	0.468	0.795	107	144	7	0	4	1	7
216	61	8	62	23	Young	156	661	558	121	170	34	3	47	115	15	5	95	108	0.305	0.406	0.629	1.035	167	351	3	0	4	21	10
217	10	10	62	28	Peak	124	414	366	52	96	29	4	12	52	8	0	37	115	0.262	0.333	0.462	0.794	107	169	4	2	5	3	6
218	124	11	62	23	Young	106	377	343	43	101	22	2	12	44	4	1	26	49	0.294	0.342	0.475	0.817	113	163	2	0	6	1	8
219	87	10	62	26	Peak	99	268	249	36	66	19	1	9	46	5	0	17	33	0.265	0.317	0.458	0.775	101	114	2	0	0	2	6
220	125	1	62	36	Senior	83	249	209	29	46	5	0	6	20	1	0	30	60	0.22	0.337	0.33	0.667	78	69	8	0	2	3	1
221	1	1	62	24	Young	54	196	170	30	43	9	0	15	42	2	0	18	52	0.253	0.337	0.571	0.907	133	97	5	0	3	1	3
222	126	2	62	36	Senior	79	186	162	35	51	13	0	11	29	0	0	23	44	0.315	0.403	0.599	1.002	160	97	1	0	0	0	7
223	59	3	62	21	Young	23	82	75	12	18	4	1	2	9	2	0	7	24	0.24	0.305	0.4	0.705	84	30	0	0	0	0	0
224	127	10	62	33	Veteran	30	57	54	9	14	1	0	2	7	0	1	3	17	0.259	0.298	0.389	0.687	80	21	0	0	0	1	1
225	65	15	62	25	Peak	28	56	47	10	13	2	1	4	8	0	0	9	21	0.277	0.393	0.617	1.01	161	29	0	0	0	0	1
226	128	11	62	27	Peak	30	53	48	8	12	4	0	3	6	0	0	5	19	0.25	0.321	0.521	0.842	117	25	0	0	0	1	0
227	129	12	62	30	Veteran	24	39	36	1	5	1	0	0	2	0	0	3	10	0.139	0.205	0.167	0.372	1	6	0	0	0	0	2
228	130	2	62	28	Peak	12	26	22	2	1	0	0	0	2	0	0	4	4	0.045	0.192	0.045	0.238	-31	1	0	0	0	0	0
229	131	1	62	31	Veteran	5	15	15	1	2	0	0	0	0	0	0	0	7	0.133	0.133	0.133	0.267	-29	2	0	0	0	0	1
230	132	16	62	30	Veteran	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
231	133	13	62	32	Veteran	28	67	51	3	8	1	0	1	3	0	0	4	23	0.157	0.218	0.235	0.453	20	12	0	12	0	0	0
232	76	13	62	24	Young	29	66	59	5	5	0	0	1	2	0	0	4	33	0.085	0.143	0.136	0.278	-25	8	0	3	0	0	0
233	53	13	62	31	Veteran	28	65	49	1	5	1	0	0	1	0	0	1	16	0.102	0.12	0.122	0.242	-35	6	0	15	0	0	0
234	134	13	62	31	Veteran	38	61	48	3	12	2	0	0	6	0	0	0	13	0.25	0.25	0.292	0.542	43	14	0	13	0	0	0
235	122	13	62	29	Peak	27	24	20	1	3	0	0	0	1	0	0	2	7	0.15	0.227	0.15	0.377	4	3	0	2	0	0	1
236	135	13	62	39	Senior	11	20	18	0	3	1	0	0	1	0	0	1	9	0.167	0.211	0.222	0.433	15	4	0	1	0	0	0
237	28	13	62	22	Young	35	18	12	0	3	0	0	0	2	0	0	1	4	0.25	0.308	0.25	0.558	51	3	0	5	0	0	0
238	56	13	62	25	Peak	10	14	13	2	4	0	0	0	1	0	0	0	4	0.308	0.308	0.308	0.615	64	4	0	1	0	0	0
239	25	13	62	21	Young	13	11	11	0	1	0	0	0	0	0	0	0	4	0.091	0.091	0.091	0.182	-51	1	0	0	0	0	0
240	136	13	62	27	Peak	3	3	3	1	1	1	0	0	0	0	0	0	0	0.333	0.333	0.667	1	154	2	0	0	0	0	0
241	43	13	62	31	Veteran	52	3	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
242	137	13	62	28	Peak	23	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
243	104	13	62	23	Young	3	2	2	0	1	0	0	0	0	0	0	0	0	0.5	0.5	0.5	1	167	1	0	0	0	0	0
244	138	13	62	28	Peak	61	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	1
245	45	13	62	22	Young	42	2	2	1	1	1	0	0	0	0	0	0	0	0.5	0.5	1	1.5	281	2	0	0	0	0	0
246	121	13	62	28	Peak	46	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
247	106	13	62	31	Veteran	59	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
248	139	13	62	28	Peak	19	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
249	109	13	62	29	Peak	27	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
250	140	13	62	28	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
251	141	13	62	31	Veteran	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
252	50	13	62	30	Veteran	25	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
253	119	13	62	31	Veteran	66	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
254	123	13	62	25	Peak	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
255	142	1	61	29	Peak	140	518	440	65	106	23	2	24	68	2	1	72	124	0.241	0.349	0.466	0.815	121	205	3	0	3	1	12
256	61	2	61	22	Young	162	632	557	84	145	28	7	25	76	14	1	69	151	0.26	0.343	0.47	0.814	120	262	3	0	3	9	7
257	143	3	61	31	Veteran	70	211	193	18	40	10	0	2	13	2	0	17	43	0.207	0.27	0.29	0.56	54	56	0	0	1	1	5
258	10	4	61	27	Peak	155	604	536	85	136	35	8	17	63	9	6	55	178	0.254	0.331	0.444	0.775	110	238	9	0	4	0	5
259	62	5	61	33	Veteran	103	426	365	62	114	31	1	14	52	2	1	47	54	0.312	0.406	0.518	0.924	151	189	12	0	2	3	10
260	116	6	61	26	Peak	148	443	395	65	98	27	3	25	56	1	5	40	85	0.248	0.321	0.522	0.843	125	206	4	1	3	3	6
261	13	7	61	26	Peak	145	462	402	67	103	17	3	21	52	3	0	50	78	0.256	0.336	0.47	0.806	117	189	1	4	5	5	3
262	144	8	61	27	Peak	125	444	405	60	108	21	1	23	63	15	5	36	87	0.267	0.327	0.494	0.82	120	200	1	0	2	2	15
263	145	11	61	33	Veteran	146	506	462	62	134	25	0	21	85	0	0	36	115	0.29	0.338	0.481	0.818	121	222	1	0	7	2	14
264	5	15	61	27	Peak	137	481	395	75	104	17	2	35	79	3	0	79	131	0.263	0.391	0.582	0.973	161	230	5	0	2	6	4
265	146	12	61	25	Peak	66	296	267	36	73	14	2	13	42	6	1	25	53	0.273	0.338	0.487	0.825	122	130	2	0	2	6	12
266	12	1	61	28	Peak	100	238	200	32	41	5	0	4	14	4	3	31	67	0.205	0.329	0.29	0.619	72	58	6	1	0	4	7
267	147	3	61	39	Senior	87	187	164	18	35	10	1	1	14	3	1	17	34	0.213	0.305	0.305	0.61	68	50	5	0	1	2	3
268	148	3	61	31	Veteran	47	170	143	16	26	9	0	5	20	4	0	24	33	0.182	0.3	0.35	0.65	77	50	1	0	2	0	5
269	85	4	61	24	Young	26	115	101	13	27	5	1	2	13	0	0	11	17	0.267	0.348	0.396	0.744	103	40	2	0	1	1	2
270	124	11	61	22	Young	37	86	77	11	20	6	0	1	4	0	0	8	14	0.26	0.329	0.377	0.706	93	29	0	1	0	0	4
271	149	5	61	27	Peak	39	77	68	1	16	4	1	0	9	0	0	5	15	0.235	0.312	0.324	0.635	74	22	3	0	1	1	1
272	126	15	61	35	Senior	19	47	39	9	15	2	1	2	9	0	0	6	16	0.385	0.489	0.641	1.13	206	25	2	0	0	0	0
273	150	10	61	26	Peak	20	34	29	4	5	0	0	0	4	0	0	4	4	0.172	0.273	0.172	0.445	26	5	0	1	0	0	0
274	151	11	61	26	Peak	17	32	30	5	7	2	0	0	4	1	0	2	8	0.233	0.281	0.3	0.581	59	9	0	0	0	1	1
275	152	11	61	25	Peak	18	14	11	6	2	1	0	0	0	4	0	2	5	0.182	0.357	0.273	0.63	76	3	1	0	0	0	0
276	131	1	61	30	Veteran	3	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
277	53	13	61	30	Veteran	25	57	46	1	11	2	0	0	7	0	0	7	11	0.239	0.34	0.283	0.622	73	13	0	4	0	0	0
278	120	13	61	27	Peak	31	50	44	1	2	0	0	0	0	1	0	0	25	0.045	0.045	0.045	0.091	-75	2	0	6	0	0	0
279	76	13	61	23	Young	22	47	43	1	7	0	0	0	1	0	0	2	21	0.163	0.2	0.163	0.363	1	7	0	2	0	0	0
280	135	13	61	38	Senior	23	45	43	2	4	0	0	0	2	0	0	0	15	0.093	0.093	0.093	0.186	-49	4	0	2	0	0	1
281	134	13	61	30	Veteran	39	40	32	0	3	0	0	0	0	0	0	0	9	0.094	0.094	0.094	0.188	-48	3	0	8	0	0	1
282	122	13	61	28	Peak	35	37	33	0	3	0	0	0	2	1	0	0	13	0.091	0.091	0.091	0.182	-50	3	0	4	0	0	0
283	133	13	61	31	Veteran	16	30	26	4	7	1	0	0	2	0	0	2	13	0.269	0.321	0.308	0.629	74	8	0	2	0	0	0
284	109	13	61	28	Peak	67	6	5	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	1	0	0	0
285	45	13	61	21	Young	28	5	5	0	1	0	0	0	0	0	0	0	3	0.2	0.2	0.2	0.4	10	1	0	0	0	0	1
286	119	13	61	30	Veteran	53	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
287	104	13	61	22	Young	2	2	2	0	1	1	0	0	2	0	0	0	1	0.5	0.5	1	1.5	296	2	0	0	0	0	0
288	136	13	61	26	Peak	9	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
289	153	13	61	28	Peak	6	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0
290	46	13	61	31	Veteran	37	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
291	28	13	61	21	Young	3	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
292	154	13	61	31	Veteran	17	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
293	139	13	61	27	Peak	35	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
294	155	13	61	27	Peak	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
295	156	13	61	35	Senior	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
296	157	13	61	32	Veteran	45	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
297	158	13	61	29	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
298	159	13	61	31	Veteran	13	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
299	160	13	61	37	Senior	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
300	138	13	61	27	Peak	25	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
301	161	13	61	29	Peak	25	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
302	141	13	61	30	Veteran	16	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
303	106	13	61	30	Veteran	65	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
304	162	13	61	33	Veteran	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
305	163	13	61	28	Peak	30	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
306	121	13	61	27	Peak	24	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
307	142	1	60	28	Peak	129	482	438	50	108	27	0	22	58	0	1	40	130	0.247	0.308	0.459	0.767	101	201	0	1	3	0	10
308	61	2	60	21	Young	132	548	480	87	128	26	4	39	97	10	3	64	146	0.267	0.352	0.581	0.933	143	279	1	0	3	13	5
309	143	3	60	30	Veteran	119	439	361	56	81	19	0	6	36	3	2	69	109	0.224	0.351	0.327	0.678	83	118	4	0	5	1	12
310	85	4	60	23	Young	145	613	539	85	159	33	0	22	77	4	2	67	131	0.295	0.375	0.479	0.854	126	258	4	0	3	5	14
311	62	5	60	32	Veteran	130	543	457	72	147	32	0	21	71	7	1	59	56	0.322	0.415	0.53	0.945	150	242	19	1	7	5	12
312	10	6	60	26	Peak	140	568	514	85	148	34	5	21	72	17	4	50	142	0.288	0.354	0.496	0.85	123	255	3	0	1	0	2
313	116	7	60	25	Peak	102	323	273	44	58	20	0	11	35	4	3	39	68	0.212	0.331	0.407	0.738	96	111	10	0	1	1	7
314	144	8	60	26	Peak	152	570	499	72	131	24	2	28	74	15	6	64	100	0.263	0.346	0.487	0.833	119	243	2	0	5	8	21
315	147	3	60	38	Senior	127	353	309	43	73	20	4	8	34	6	1	32	57	0.236	0.324	0.405	0.728	93	125	9	1	2	0	3
316	13	10	60	25	Peak	140	342	297	46	64	24	2	11	37	3	0	41	80	0.215	0.308	0.421	0.729	92	125	0	1	3	2	4
317	12	1	60	27	Peak	102	262	218	35	63	15	2	8	38	4	1	39	43	0.289	0.408	0.486	0.895	138	106	5	0	0	1	6
318	164	2	60	35	Senior	71	252	231	14	56	17	0	3	30	0	1	16	43	0.242	0.287	0.355	0.642	70	82	0	0	4	1	7
319	165	6	60	36	Senior	36	132	112	16	18	2	0	7	12	2	0	18	33	0.161	0.288	0.366	0.654	73	41	2	0	0	0	1
320	151	11	60	25	Peak	31	102	96	17	26	3	0	5	15	0	1	5	16	0.271	0.314	0.458	0.772	102	44	1	0	0	0	3
321	166	6	60	34	Senior	35	63	56	8	13	3	0	1	8	0	1	7	16	0.232	0.317	0.339	0.657	76	19	0	0	0	0	2
322	15	11	60	26	Peak	27	55	49	6	6	2	1	1	2	0	0	6	23	0.122	0.218	0.265	0.483	28	13	0	0	0	1	0
323	167	10	60	30	Veteran	29	48	41	6	5	1	0	2	3	1	0	7	15	0.122	0.25	0.293	0.543	44	12	0	0	0	1	0
324	168	6	60	35	Senior	22	38	34	3	8	1	0	2	3	0	0	4	10	0.235	0.316	0.441	0.757	99	15	0	0	0	1	0
325	169	11	60	28	Peak	17	36	33	3	6	0	0	2	6	0	0	2	17	0.182	0.25	0.364	0.614	61	12	1	0	0	0	0
326	124	11	60	21	Young	15	25	23	1	4	0	0	1	1	0	1	2	4	0.174	0.24	0.304	0.544	44	7	0	0	0	0	1
327	149	10	60	26	Peak	20	20	20	1	6	1	0	0	2	0	0	0	3	0.3	0.3	0.35	0.65	73	7	0	0	0	0	2
328	170	15	60	28	Peak	13	20	20	3	4	2	0	0	1	0	0	0	7	0.2	0.2	0.3	0.5	31	6	0	0	0	0	0
329	171	14	60	28	Peak	15	15	13	0	2	1	0	0	1	0	0	2	4	0.154	0.267	0.231	0.497	35	3	0	0	0	0	2
330	172	6	60	27	Peak	7	9	7	0	1	0	0	0	0	0	0	2	2	0.143	0.333	0.143	0.476	35	1	0	0	0	1	0
331	173	5	60	29	Peak	4	5	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
332	152	6	60	24	Young	3	1	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
333	53	13	60	29	Peak	24	59	49	6	9	1	0	0	2	0	0	4	13	0.184	0.245	0.204	0.449	22	10	0	6	0	0	2
334	120	13	60	26	Peak	27	58	52	1	3	0	0	0	4	0	0	2	29	0.058	0.093	0.058	0.15	-58	3	0	4	0	0	1
335	135	13	60	37	Senior	23	49	45	1	5	1	0	0	4	0	0	0	18	0.111	0.146	0.133	0.279	-25	6	2	1	1	0	0
336	134	13	60	29	Peak	28	44	39	2	5	1	0	0	4	0	0	0	3	0.128	0.128	0.154	0.282	-25	6	0	5	0	0	1
337	133	13	60	30	Veteran	23	38	30	3	4	1	0	0	0	0	0	3	18	0.133	0.235	0.167	0.402	11	5	1	4	0	0	0
338	174	13	60	33	Veteran	18	28	23	2	1	0	0	0	0	0	0	3	16	0.043	0.154	0.043	0.197	-43	1	0	2	0	0	0
339	175	13	60	30	Veteran	9	20	17	0	1	0	0	0	0	0	0	1	14	0.059	0.111	0.059	0.17	-52	1	0	2	0	0	0
340	122	13	60	27	Peak	48	9	9	2	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
341	28	13	60	20	Young	5	7	6	0	1	0	0	0	0	0	0	0	4	0.167	0.167	0.167	0.333	-10	1	0	1	0	0	0
342	136	13	60	25	Peak	16	5	4	0	1	0	0	0	1	0	0	0	2	0.25	0.25	0.25	0.5	34	1	0	1	0	0	0
343	106	13	60	29	Peak	59	4	4	0	2	1	0	0	1	0	0	0	0	0.5	0.5	0.75	1.25	227	3	0	0	0	0	1
344	176	13	60	27	Peak	58	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
345	119	13	60	29	Peak	61	2	1	0	0	0	0	0	1	0	0	1	1	0	0.5	0	0.5	52	0	0	0	0	0	0
346	177	13	60	29	Peak	14	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	1	0	0	0
347	178	13	60	32	Veteran	24	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
348	157	13	60	31	Veteran	55	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
349	179	13	60	32	Veteran	43	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
350	159	13	60	30	Veteran	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
351	76	13	60	22	Young	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
352	154	13	60	30	Veteran	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
353	153	13	60	27	Peak	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
354	180	13	60	34	Senior	30	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
355	163	13	60	27	Peak	21	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
356	181	13	60	29	Peak	26	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
357	182	13	60	32	Veteran	24	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
358	183	13	60	28	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
359	142	1	59	27	Peak	126	457	390	49	89	14	1	27	72	1	3	64	116	0.228	0.339	0.477	0.816	118	186	2	0	1	1	11
360	164	2	59	34	Senior	156	633	568	69	162	31	0	18	90	0	2	55	117	0.285	0.349	0.435	0.784	111	247	4	0	6	9	16
361	147	3	59	37	Senior	138	565	512	79	129	26	3	14	52	2	2	40	115	0.252	0.319	0.396	0.716	92	203	11	1	1	1	0
362	85	4	59	22	Young	157	687	627	105	193	40	5	26	72	3	3	54	133	0.308	0.365	0.512	0.877	134	321	4	0	2	5	12
363	62	5	59	31	Veteran	151	622	556	79	153	34	3	27	90	4	1	48	107	0.275	0.339	0.493	0.832	121	274	10	0	8	1	16
364	184	6	59	32	Veteran	146	543	487	65	124	26	2	8	40	10	2	50	96	0.255	0.326	0.366	0.691	87	178	3	0	3	2	20
365	116	7	59	24	Young	137	476	406	64	100	26	0	25	68	6	2	63	130	0.246	0.352	0.495	0.847	126	201	4	1	2	4	5
366	144	8	59	25	Peak	104	368	334	45	88	14	2	11	45	5	2	24	74	0.263	0.323	0.416	0.74	98	139	7	0	3	0	10
367	15	11	59	25	Peak	80	262	236	31	53	11	0	13	32	5	1	26	66	0.225	0.302	0.436	0.738	96	103	0	0	0	0	3
368	13	11	59	24	Young	109	244	216	25	41	8	0	7	18	2	0	28	64	0.19	0.283	0.324	0.607	64	70	0	0	0	1	3
369	185	8	59	29	Peak	47	167	155	20	40	6	0	2	9	3	3	11	22	0.258	0.307	0.335	0.643	74	52	0	0	0	0	1
370	186	1	59	35	Senior	53	161	139	8	27	5	0	1	13	1	1	16	24	0.194	0.285	0.252	0.537	47	35	2	3	1	2	5
371	151	11	59	24	Young	48	115	105	19	33	9	1	3	16	1	1	8	25	0.314	0.365	0.505	0.87	132	53	1	0	1	2	1
372	167	10	59	29	Peak	52	113	102	10	23	6	0	1	7	1	2	5	24	0.225	0.292	0.314	0.606	64	32	5	0	1	1	3
373	187	6	59	34	Senior	30	87	81	8	15	2	1	0	6	0	1	4	11	0.185	0.23	0.235	0.464	26	19	1	0	1	0	3
374	170	10	59	27	Peak	40	83	73	9	17	2	1	2	12	0	0	6	22	0.233	0.301	0.37	0.671	80	27	2	0	2	0	1
375	171	10	59	27	Peak	34	68	67	6	20	3	0	1	7	1	0	1	13	0.299	0.309	0.388	0.697	87	26	0	0	0	0	2
376	10	12	59	25	Peak	34	62	58	8	12	2	2	1	7	0	0	4	13	0.207	0.258	0.362	0.62	65	21	0	0	0	1	3
377	188	1	59	37	Senior	14	40	36	3	10	2	0	0	3	0	0	3	5	0.278	0.35	0.333	0.683	87	12	1	0	0	0	1
378	12	10	59	26	Peak	21	37	32	3	5	1	0	0	2	0	0	5	9	0.156	0.27	0.188	0.458	28	6	0	0	0	0	0
379	168	6	59	34	Senior	16	26	24	2	5	1	0	1	2	0	0	2	6	0.208	0.269	0.375	0.644	72	9	0	0	0	1	1
380	189	11	59	33	Veteran	12	19	18	2	1	1	0	0	0	0	0	0	5	0.056	0.105	0.111	0.216	-41	2	1	0	0	0	0
381	190	10	59	25	Peak	7	6	6	1	1	0	0	0	0	0	0	0	1	0.167	0.167	0.167	0.333	-9	1	0	0	0	0	0
382	191	10	59	26	Peak	3	5	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
383	134	13	59	28	Peak	34	66	57	5	7	1	0	1	4	0	0	1	16	0.123	0.138	0.193	0.331	-12	11	0	8	0	0	1
384	192	13	59	32	Veteran	26	50	43	3	5	0	0	0	2	0	0	1	24	0.116	0.136	0.116	0.253	-30	5	0	6	0	0	1
385	53	13	59	28	Peak	21	50	46	2	8	1	0	0	3	0	0	1	12	0.174	0.191	0.196	0.387	5	9	0	3	0	0	0
386	122	13	59	26	Peak	19	27	24	2	2	0	0	0	1	0	0	2	12	0.083	0.154	0.083	0.237	-33	2	0	1	0	0	0
387	28	13	59	19	Young	17	26	22	0	3	0	0	0	2	0	0	0	9	0.136	0.136	0.136	0.273	-26	3	0	4	0	0	1
388	120	13	59	25	Peak	14	19	16	2	4	0	0	0	2	0	0	1	9	0.25	0.294	0.25	0.544	50	4	0	2	0	0	0
389	193	13	59	31	Veteran	13	16	15	1	4	0	0	0	1	0	0	0	2	0.267	0.267	0.267	0.533	45	4	0	1	0	0	0
390	174	13	59	32	Veteran	10	15	13	0	0	0	0	0	1	0	0	2	6	0	0.133	0	0.133	-59	0	0	0	0	0	0
391	135	13	59	36	Senior	6	12	12	0	0	0	0	0	0	0	0	0	8	0	0	0	0	-100	0	0	0	0	0	0
392	136	13	59	24	Young	7	10	10	0	1	0	0	0	0	0	0	0	7	0.1	0.1	0.1	0.2	-46	1	0	0	0	0	0
393	194	13	59	28	Peak	5	9	9	0	0	0	0	0	0	0	0	0	7	0	0	0	0	-100	0	0	0	0	0	0
394	195	13	59	23	Young	3	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
395	182	13	59	31	Veteran	34	3	3	0	1	0	0	0	1	0	0	0	0	0.333	0.333	0.333	0.667	82	1	0	0	0	0	0
396	196	13	59	28	Peak	4	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
397	197	13	59	33	Veteran	61	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
398	157	13	59	30	Veteran	21	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
399	198	13	59	26	Peak	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
400	133	13	59	29	Peak	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
401	199	13	59	27	Peak	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
402	181	13	59	28	Peak	23	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
403	119	13	59	28	Peak	67	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
404	176	13	59	26	Peak	26	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
405	200	13	59	30	Veteran	57	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
406	201	13	59	35	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
407	154	13	59	29	Peak	55	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
408	138	13	59	25	Peak	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
409	106	13	59	28	Peak	68	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
410	202	13	59	35	Senior	71	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
411	203	13	59	32	Veteran	22	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
412	204	13	59	32	Veteran	25	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
413	177	13	59	28	Peak	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
414	142	1	58	26	Peak	115	426	355	43	83	12	0	16	47	0	1	65	92	0.234	0.353	0.403	0.756	112	143	2	1	3	1	16
415	164	2	58	33	Veteran	156	643	571	76	157	33	0	28	90	0	1	62	107	0.275	0.35	0.48	0.83	130	274	6	0	3	10	21
416	184	3	58	31	Veteran	117	495	464	64	137	22	2	9	54	6	2	27	82	0.295	0.336	0.409	0.746	108	190	2	1	1	1	17
417	205	4	58	36	Senior	144	563	517	71	116	24	3	13	41	12	8	44	86	0.224	0.285	0.358	0.643	79	185	0	1	1	0	12
418	62	5	58	30	Veteran	126	439	385	55	113	26	1	16	60	5	2	36	71	0.294	0.37	0.491	0.861	139	189	13	1	4	1	10
419	187	6	58	33	Veteran	69	193	181	19	48	9	2	4	16	10	2	10	41	0.265	0.304	0.403	0.707	96	73	0	0	0	1	3
420	116	7	58	23	Young	151	585	480	67	101	19	1	26	54	4	7	92	170	0.21	0.346	0.417	0.763	113	200	9	2	2	6	5
421	144	8	58	24	Young	79	311	282	30	72	12	3	11	38	3	3	26	66	0.255	0.322	0.436	0.758	110	123	2	0	1	1	1
422	168	11	58	33	Veteran	142	445	395	54	116	20	7	14	53	2	3	43	75	0.294	0.366	0.486	0.852	137	192	4	0	3	2	11
423	167	6	58	28	Peak	96	253	222	19	53	14	0	6	30	3	1	23	62	0.239	0.317	0.383	0.7	96	85	4	1	3	2	5
424	206	10	58	28	Peak	106	230	219	25	51	9	1	11	36	1	0	7	57	0.233	0.261	0.434	0.695	90	95	2	0	2	0	7
425	13	10	58	23	Young	76	218	202	24	62	12	2	7	22	0	2	11	46	0.307	0.346	0.49	0.836	131	99	2	1	2	0	3
426	186	1	58	34	Senior	63	217	181	24	43	9	0	7	21	0	0	32	38	0.238	0.355	0.403	0.758	113	73	1	3	0	1	4
427	147	3	58	36	Senior	34	141	124	14	25	9	1	3	9	1	0	10	29	0.202	0.291	0.363	0.654	82	45	6	0	1	0	1
428	207	5	58	32	Veteran	60	138	123	8	32	5	0	0	7	0	0	14	24	0.26	0.336	0.301	0.637	81	37	0	1	0	0	2
429	85	4	58	21	Young	27	113	98	17	33	8	1	4	17	2	0	14	19	0.337	0.425	0.561	0.986	174	55	1	0	0	1	2
430	208	5	58	36	Senior	29	87	81	6	20	2	0	1	6	1	0	5	9	0.247	0.287	0.309	0.596	68	25	0	0	1	0	5
431	209	11	58	30	Veteran	33	72	55	8	10	2	0	2	9	0	1	15	17	0.182	0.347	0.327	0.674	91	18	0	0	2	2	1
432	210	6	58	33	Veteran	21	60	55	12	16	4	1	4	12	2	0	3	14	0.291	0.35	0.618	0.968	165	34	2	0	0	0	1
433	211	11	58	24	Young	19	40	36	6	9	0	0	3	4	2	1	3	13	0.25	0.325	0.5	0.825	127	18	1	0	0	1	0
434	12	10	58	25	Peak	20	37	29	4	6	2	0	0	1	1	0	6	6	0.207	0.361	0.276	0.637	83	8	1	1	0	0	2
435	212	10	58	21	Young	7	25	22	3	4	1	1	0	1	3	0	2	2	0.182	0.25	0.318	0.568	58	7	0	1	0	1	0
436	213	12	58	22	Young	8	8	6	1	2	1	0	0	1	0	0	1	1	0.333	0.429	0.5	0.929	160	3	0	1	0	0	0
437	214	12	58	29	Peak	2	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
438	53	13	58	27	Peak	31	79	71	2	9	2	0	0	2	0	0	2	23	0.127	0.162	0.155	0.317	-10	11	1	5	0	0	2
439	215	13	58	31	Veteran	30	77	67	8	15	2	0	2	3	1	0	1	14	0.224	0.232	0.343	0.575	59	23	0	8	1	0	0
440	196	13	58	27	Peak	29	61	47	1	4	1	0	0	3	0	0	5	32	0.085	0.173	0.106	0.279	-19	5	0	9	0	0	2
441	194	13	58	27	Peak	21	40	38	1	1	1	0	0	0	0	0	0	23	0.026	0.026	0.053	0.079	-79	2	0	2	0	0	0
442	120	13	58	24	Young	11	26	22	1	4	1	0	0	0	0	0	1	13	0.182	0.217	0.227	0.445	25	5	0	3	0	0	1
443	198	13	58	25	Peak	16	24	21	1	1	0	0	0	0	0	0	1	12	0.048	0.13	0.048	0.178	-47	1	1	1	0	0	0
444	174	13	58	31	Veteran	4	9	6	0	0	0	0	0	1	0	0	1	5	0	0.143	0	0.143	-55	0	0	2	0	0	0
445	216	13	58	27	Peak	6	7	6	1	2	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	88	2	0	1	0	0	0
446	217	13	58	28	Peak	9	4	3	1	0	0	0	0	0	0	0	1	1	0	0.25	0	0.25	-21	0	0	0	0	0	1
447	218	13	58	33	Veteran	2	4	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
448	219	13	58	25	Peak	1	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
449	154	13	58	28	Peak	38	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
450	220	13	58	28	Peak	2	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
451	221	13	58	23	Young	1	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
452	222	13	58	27	Peak	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
453	223	13	58	25	Peak	5	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
454	176	13	58	25	Peak	20	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
455	201	13	58	34	Senior	5	1	1	1	1	1	0	0	0	0	0	0	0	1	1	2	3	713	2	0	0	0	0	0
456	224	13	58	39	Senior	33	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
457	225	13	58	30	Veteran	3	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
458	182	13	58	30	Veteran	45	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
459	226	13	58	28	Peak	52	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
460	227	13	58	31	Veteran	12	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
461	228	13	58	32	Veteran	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
462	229	13	58	24	Young	18	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
463	230	13	58	26	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
464	138	13	58	24	Young	55	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
465	106	13	58	27	Peak	51	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
466	197	13	58	32	Veteran	62	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
467	119	13	58	27	Peak	48	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
468	177	13	58	27	Peak	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
469	186	1	57	33	Veteran	93	347	283	21	54	9	0	3	25	0	0	53	57	0.191	0.323	0.254	0.577	68	72	4	3	4	5	15
470	164	2	57	32	Veteran	159	660	591	83	163	41	0	27	116	1	1	56	112	0.276	0.335	0.482	0.817	131	285	2	0	11	9	13
471	231	3	57	26	Peak	148	650	609	92	176	24	12	2	34	64	19	31	107	0.289	0.326	0.378	0.704	101	230	4	3	3	0	3
472	232	4	57	30	Veteran	128	512	449	64	127	35	0	13	71	14	5	56	84	0.283	0.369	0.448	0.817	133	201	6	0	1	2	10
473	208	5	57	35	Senior	103	404	386	36	120	23	0	9	54	0	1	15	77	0.311	0.337	0.44	0.777	120	170	1	0	2	2	15
474	187	6	57	32	Veteran	105	370	343	56	103	14	3	8	46	23	6	16	55	0.3	0.339	0.429	0.767	118	147	6	0	4	0	5
475	168	7	57	32	Veteran	130	380	341	29	85	17	6	4	42	2	2	31	74	0.249	0.322	0.37	0.691	97	126	6	1	1	3	5
476	144	8	57	23	Young	148	640	558	92	165	37	9	16	69	11	7	67	124	0.296	0.382	0.48	0.863	145	268	12	2	1	3	7
477	145	11	57	29	Peak	150	599	541	77	155	38	3	25	89	8	5	52	145	0.287	0.346	0.506	0.852	140	274	0	0	6	3	21
478	62	5	57	29	Peak	109	322	288	46	98	21	1	7	43	6	1	28	58	0.34	0.404	0.493	0.897	155	142	4	0	2	1	6
479	167	11	57	27	Peak	98	246	212	32	63	13	1	11	29	4	2	28	71	0.297	0.386	0.524	0.91	157	111	4	0	2	0	3
480	233	1	57	30	Veteran	61	192	170	16	32	6	1	3	14	0	0	17	41	0.188	0.267	0.288	0.555	59	49	2	1	2	1	1
481	4	4	57	25	Peak	85	162	149	16	27	3	0	1	9	0	0	10	28	0.181	0.242	0.221	0.464	34	33	2	1	0	1	5
482	234	1	57	26	Peak	23	78	71	2	8	3	0	1	5	0	0	3	18	0.113	0.158	0.197	0.355	1	14	1	2	1	0	3
483	235	12	57	36	Senior	38	76	60	8	13	3	0	0	1	4	1	14	15	0.217	0.373	0.267	0.64	87	16	1	1	0	0	0
484	214	14	57	28	Peak	22	45	33	6	10	1	0	1	7	0	0	8	3	0.303	0.467	0.424	0.891	157	14	3	0	1	0	0
485	236	4	57	24	Young	22	45	41	4	8	1	0	0	4	0	0	3	17	0.195	0.244	0.22	0.464	34	9	0	0	1	0	1
486	116	11	57	22	Young	18	38	28	1	4	0	0	0	0	0	0	9	11	0.143	0.351	0.143	0.494	48	4	0	1	0	0	1
487	237	1	57	35	Senior	8	25	23	4	5	0	1	0	2	0	0	1	12	0.217	0.24	0.304	0.544	55	7	0	0	1	0	1
488	238	10	57	28	Peak	15	23	21	2	1	1	0	0	3	0	0	2	8	0.048	0.13	0.095	0.226	-34	2	0	0	0	0	1
489	239	4	57	24	Young	12	16	15	3	2	0	0	1	1	0	0	1	5	0.133	0.188	0.333	0.521	45	5	0	0	0	0	0
490	206	6	57	27	Peak	11	13	13	0	1	0	0	0	0	0	0	0	6	0.077	0.077	0.077	0.154	-56	1	0	0	0	0	0
491	240	2	57	29	Peak	9	10	9	3	3	0	0	0	2	0	0	1	1	0.333	0.4	0.333	0.733	113	3	0	0	0	0	0
492	241	11	57	30	Veteran	9	9	7	2	2	0	0	1	4	0	0	0	3	0.286	0.444	0.714	1.159	225	5	2	0	0	0	0
493	242	6	57	29	Peak	4	8	7	0	0	0	0	0	0	0	0	1	2	0	0.125	0	0.125	-60	0	0	0	0	0	1
494	53	13	57	26	Peak	26	74	63	5	11	0	1	0	3	1	0	4	23	0.175	0.235	0.206	0.442	28	13	1	6	0	0	1
495	215	13	57	30	Veteran	29	69	60	5	12	6	0	1	3	0	0	5	11	0.2	0.262	0.35	0.612	73	21	0	4	0	0	0
496	243	13	57	33	Veteran	29	60	54	2	10	1	0	0	5	0	0	3	20	0.185	0.228	0.204	0.432	25	11	0	3	0	0	1
497	133	13	57	27	Peak	24	56	47	4	7	2	0	0	2	0	0	1	17	0.149	0.167	0.191	0.358	2	9	0	8	0	0	0
498	244	13	57	34	Senior	20	43	39	4	7	3	0	0	2	0	0	1	14	0.179	0.2	0.256	0.456	30	10	0	3	0	0	0
499	245	13	57	32	Veteran	29	16	9	1	0	0	0	0	0	0	0	2	6	0	0.182	0	0.182	-42	0	0	5	0	0	0
500	246	13	57	33	Veteran	9	15	13	1	2	0	0	0	1	0	0	0	7	0.154	0.154	0.154	0.308	-12	2	0	2	0	0	0
501	198	13	57	24	Young	15	7	7	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
502	247	13	57	33	Veteran	9	6	6	1	2	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	92	2	0	0	0	0	0
503	248	13	57	39	Senior	56	6	5	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
504	249	13	57	27	Peak	1	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
505	250	13	57	31	Veteran	59	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
506	251	13	57	23	Young	5	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
507	138	13	57	23	Young	8	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
508	106	13	57	26	Peak	64	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
509	252	13	57	28	Peak	46	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
510	229	13	57	23	Young	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
511	253	13	57	32	Veteran	58	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
512	223	13	57	24	Young	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
513	254	13	57	25	Peak	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
514	255	13	57	27	Peak	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
515	197	13	57	31	Veteran	64	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
516	119	13	57	26	Peak	18	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
517	256	13	57	28	Peak	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
518	186	1	56	32	Veteran	115	448	390	43	93	17	1	10	52	0	2	45	78	0.238	0.318	0.364	0.682	93	142	3	4	6	1	11
519	164	2	56	31	Veteran	157	641	583	69	171	32	0	22	100	1	0	47	98	0.293	0.342	0.461	0.803	125	269	1	0	10	6	12
520	257	3	56	36	Senior	126	480	433	46	117	13	2	6	48	4	1	26	74	0.27	0.323	0.351	0.674	91	152	10	6	5	2	5
521	232	4	56	29	Peak	86	336	304	62	105	25	2	20	57	10	2	27	52	0.345	0.402	0.638	1.04	189	194	3	0	2	3	5
522	208	5	56	34	Senior	132	426	388	47	108	22	2	12	50	5	0	30	81	0.278	0.331	0.438	0.769	116	170	2	3	3	3	12
523	187	6	56	31	Veteran	116	469	435	62	123	30	3	6	31	15	4	28	66	0.283	0.329	0.407	0.736	107	177	3	0	2	2	4
524	168	7	56	31	Veteran	142	553	482	54	131	33	2	12	52	4	3	61	95	0.272	0.36	0.423	0.783	121	204	7	0	3	11	9
525	144	8	56	22	Young	104	432	382	66	122	21	2	19	42	11	8	36	97	0.319	0.391	0.534	0.925	159	204	11	0	3	6	6
526	258	10	56	33	Veteran	125	356	319	31	84	16	0	2	30	2	2	28	54	0.263	0.332	0.332	0.665	89	106	5	3	0	0	11
527	259	12	56	35	Senior	116	335	294	34	75	15	0	2	21	3	3	33	67	0.255	0.328	0.327	0.655	86	96	0	6	2	0	4
528	145	7	56	28	Peak	73	290	263	35	71	15	0	6	33	9	0	22	76	0.27	0.328	0.395	0.723	104	104	2	0	3	3	11
529	260	10	56	37	Senior	96	226	204	17	43	7	0	2	22	0	0	14	22	0.211	0.265	0.275	0.539	53	56	2	3	3	0	7
530	234	1	56	25	Peak	56	173	160	12	37	8	0	4	16	0	0	10	56	0.231	0.275	0.356	0.631	77	57	0	2	1	5	5
531	167	6	56	26	Peak	53	152	129	13	31	8	0	7	19	1	1	20	37	0.24	0.342	0.465	0.807	126	60	1	0	2	0	7
532	261	12	56	29	Peak	45	128	118	12	15	2	0	1	6	0	0	5	20	0.127	0.175	0.169	0.344	-2	20	2	2	1	1	3
533	231	4	56	25	Peak	38	106	94	9	22	1	1	1	6	10	2	10	21	0.234	0.314	0.298	0.612	75	28	1	1	0	2	0
534	262	4	56	27	Peak	27	77	69	6	13	1	0	1	2	0	0	5	20	0.188	0.263	0.246	0.51	45	17	2	1	0	0	3
535	263	1	56	37	Senior	17	55	48	4	10	2	0	3	6	1	0	6	7	0.208	0.291	0.438	0.728	103	21	0	0	1	0	6
536	264	12	56	36	Senior	21	53	51	3	16	2	1	0	4	0	0	1	5	0.314	0.321	0.392	0.713	101	20	0	0	1	0	3
537	265	11	56	26	Peak	8	20	19	0	2	0	0	0	0	0	0	1	1	0.105	0.15	0.105	0.255	-26	2	0	0	0	0	0
538	266	11	56	26	Peak	8	18	18	2	3	1	0	1	1	0	0	0	5	0.167	0.167	0.389	0.556	51	7	0	0	0	0	0
539	267	6	56	28	Peak	4	8	8	0	2	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	42	2	0	0	0	0	0
540	233	10	56	29	Peak	4	7	7	0	1	0	0	0	0	0	0	0	4	0.143	0.143	0.143	0.286	-19	1	0	0	0	0	0
541	53	13	56	25	Peak	35	92	77	8	14	3	0	1	10	0	0	5	24	0.182	0.241	0.26	0.501	42	20	1	9	0	0	3
542	215	13	56	29	Peak	29	72	58	5	19	3	0	0	4	2	0	7	10	0.328	0.409	0.379	0.788	125	22	1	6	0	0	0
543	133	13	56	26	Peak	27	66	58	5	12	3	1	0	5	0	0	2	23	0.207	0.233	0.293	0.526	48	17	0	6	0	0	1
544	268	13	56	30	Veteran	15	30	20	2	3	1	0	0	1	0	0	3	7	0.15	0.261	0.2	0.461	33	4	0	7	0	0	1
545	269	13	56	34	Senior	21	29	24	1	1	0	0	0	0	0	0	1	8	0.042	0.08	0.042	0.122	-64	1	0	4	0	0	0
546	249	13	56	26	Peak	11	18	17	0	1	0	0	0	0	0	0	1	12	0.059	0.111	0.059	0.17	-50	1	0	0	0	0	0
547	244	13	56	33	Veteran	7	12	8	0	1	0	0	0	0	0	0	1	3	0.125	0.222	0.125	0.347	2	1	0	3	0	0	1
548	270	13	56	29	Peak	6	9	8	1	1	0	0	0	0	0	0	0	3	0.125	0.125	0.125	0.25	-29	1	0	1	0	0	0
549	271	13	56	23	Young	6	8	7	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	1	0	0	0
550	272	13	56	28	Peak	2	5	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	2	0	0	0
551	273	13	56	37	Senior	4	5	5	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
552	254	13	56	24	Young	23	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
553	229	13	56	22	Young	72	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
554	274	13	56	34	Senior	31	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
555	251	13	56	22	Young	8	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
556	106	13	56	25	Peak	70	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
557	275	13	56	30	Veteran	20	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
558	197	13	56	30	Veteran	61	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
559	276	13	56	30	Veteran	72	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
560	250	13	56	30	Veteran	54	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
561	277	13	56	23	Young	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
562	278	13	56	27	Peak	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
563	253	13	56	31	Veteran	18	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
564	279	13	56	25	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
565	280	13	56	34	Senior	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
566	281	13	56	26	Peak	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
567	186	1	55	31	Veteran	133	505	423	44	114	20	1	13	52	0	0	65	107	0.27	0.373	0.414	0.786	118	175	7	6	4	11	17
568	282	2	55	28	Peak	114	359	334	32	85	18	0	4	33	0	3	23	39	0.254	0.302	0.344	0.646	79	115	0	1	1	7	16
569	257	3	55	35	Senior	110	464	415	62	107	21	1	7	31	5	0	40	70	0.258	0.333	0.364	0.697	93	151	7	2	0	0	5
570	231	4	55	24	Young	87	330	303	38	69	9	2	1	17	32	10	20	62	0.228	0.28	0.281	0.561	56	85	3	2	2	0	5
571	261	5	55	28	Peak	78	296	283	26	84	20	0	6	40	2	1	9	34	0.297	0.322	0.431	0.753	106	122	2	1	1	1	7
572	283	6	55	31	Veteran	53	235	208	26	51	12	2	2	15	15	2	18	31	0.245	0.316	0.351	0.667	85	73	4	4	1	0	1
573	145	7	55	27	Peak	106	449	403	74	122	22	2	23	69	9	4	40	103	0.303	0.367	0.538	0.906	147	217	3	0	3	8	10
574	168	8	55	30	Veteran	149	618	556	79	158	36	1	20	89	2	2	50	124	0.284	0.351	0.46	0.812	123	256	9	0	3	6	13
575	284	10	55	33	Veteran	109	339	312	30	76	14	0	9	47	1	3	18	35	0.244	0.286	0.375	0.661	81	117	3	0	6	1	15
576	285	11	55	29	Peak	103	277	259	29	60	8	4	0	17	13	6	16	52	0.232	0.276	0.293	0.57	58	76	0	2	0	2	6
577	232	4	55	28	Peak	64	272	251	30	68	11	2	10	44	7	3	17	60	0.271	0.324	0.45	0.774	112	113	3	0	1	3	6
578	260	12	55	36	Senior	78	267	238	19	65	13	1	4	26	1	2	23	27	0.273	0.342	0.387	0.729	102	92	3	1	2	2	7
579	286	6	55	38	Senior	92	230	195	28	48	8	1	3	19	6	2	35	51	0.246	0.361	0.344	0.704	97	67	0	0	0	3	6
580	267	10	55	27	Peak	67	214	187	26	47	10	1	1	17	4	2	23	50	0.251	0.34	0.332	0.671	87	62	2	2	0	0	5
581	287	5	55	36	Senior	86	201	168	22	44	8	1	2	16	1	1	23	33	0.262	0.345	0.357	0.702	95	60	1	4	5	1	5
582	208	5	55	33	Veteran	66	179	162	15	31	9	0	2	17	0	1	13	37	0.191	0.258	0.284	0.542	50	46	2	1	1	0	6
583	164	2	55	30	Veteran	36	157	145	12	43	10	1	3	22	2	0	11	29	0.297	0.344	0.441	0.785	116	64	0	0	1	1	1
584	288	1	55	36	Senior	36	122	103	11	18	3	1	2	10	1	1	14	29	0.175	0.281	0.282	0.563	57	29	2	1	2	2	2
585	167	10	55	25	Peak	27	57	54	4	9	2	0	2	7	1	0	2	14	0.167	0.196	0.315	0.511	39	17	0	1	0	0	2
586	262	12	55	26	Peak	19	50	44	6	9	3	1	1	2	0	0	5	14	0.205	0.286	0.386	0.672	84	17	0	1	0	1	0
587	259	12	55	34	Senior	22	43	35	6	10	1	0	0	0	1	0	6	9	0.286	0.39	0.314	0.705	99	11	0	2	0	0	0
588	289	12	55	25	Peak	23	37	33	5	9	3	0	0	4	1	1	3	7	0.273	0.324	0.364	0.688	90	12	0	0	1	0	1
589	266	11	55	25	Peak	16	25	23	3	4	0	1	1	3	0	0	0	8	0.174	0.2	0.391	0.591	59	9	1	0	1	0	0
590	290	10	55	24	Young	9	24	23	2	4	2	0	0	1	0	0	1	9	0.174	0.208	0.261	0.469	29	6	0	0	0	0	0
591	234	1	55	24	Young	3	4	3	0	1	0	0	0	0	0	0	1	2	0.333	0.5	0.333	0.833	138	1	0	0	0	0	0
592	53	13	55	24	Young	32	75	58	2	12	1	0	0	2	0	0	2	19	0.207	0.23	0.224	0.454	27	13	0	14	1	0	2
593	269	13	55	33	Veteran	33	69	54	3	5	2	0	0	3	0	0	1	27	0.093	0.107	0.13	0.237	-35	7	0	13	1	0	0
594	291	13	55	34	Senior	29	63	56	1	4	1	0	0	2	0	0	0	23	0.071	0.071	0.089	0.161	-56	5	0	7	0	0	1
595	272	13	55	27	Peak	23	48	42	1	8	1	0	0	2	0	0	0	18	0.19	0.186	0.214	0.4	11	9	0	5	1	0	0
596	202	13	55	31	Veteran	10	21	16	0	1	0	0	0	0	0	0	0	6	0.063	0.063	0.063	0.125	-65	1	0	5	0	0	0
597	273	13	55	36	Senior	8	20	15	0	1	0	0	0	0	0	0	1	7	0.067	0.125	0.067	0.192	-45	1	0	4	0	0	0
598	244	13	55	32	Veteran	7	17	16	0	0	0	0	0	0	0	0	0	9	0	0	0	0	-100	0	0	1	0	0	0
599	292	13	55	22	Young	8	14	12	0	0	0	0	0	0	0	0	1	8	0	0.077	0	0.077	-76	0	0	1	0	0	0
600	249	13	55	25	Peak	5	8	7	1	2	1	0	0	0	0	0	0	2	0.286	0.286	0.429	0.714	94	3	0	1	0	0	0
601	248	13	55	37	Senior	63	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
602	293	13	55	36	Senior	36	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
603	278	13	55	26	Peak	45	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
604	229	13	55	21	Young	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
605	294	13	55	31	Veteran	20	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
606	279	13	55	24	Young	36	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
607	274	13	55	33	Veteran	16	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
608	295	13	55	23	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
609	106	13	55	24	Young	64	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
610	296	13	55	26	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
611	276	13	55	29	Peak	65	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
612	256	13	55	26	Peak	39	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
613	250	13	55	29	Peak	28	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
614	297	13	55	25	Peak	45	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
615	298	13	55	35	Senior	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
616	281	13	55	25	Peak	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
617	299	1	54	35	Senior	98	337	305	29	70	13	0	16	47	0	0	22	71	0.23	0.287	0.43	0.717	98	131	4	2	3	4	5
618	282	2	54	27	Peak	158	582	531	56	153	30	1	12	65	4	0	42	67	0.288	0.339	0.416	0.755	111	221	1	3	5	7	8
619	300	3	54	37	Senior	146	510	452	52	131	14	6	0	17	10	0	47	58	0.29	0.359	0.347	0.706	99	157	2	8	1	3	3
620	231	4	54	23	Young	56	233	224	34	68	9	2	0	11	24	7	7	27	0.304	0.325	0.362	0.686	92	81	0	2	0	0	1
621	208	5	54	32	Veteran	77	295	270	21	55	12	0	4	28	2	0	17	60	0.204	0.264	0.293	0.557	56	79	6	0	2	2	12
622	285	6	54	28	Peak	136	340	312	37	80	12	6	2	22	22	6	23	61	0.256	0.308	0.353	0.66	85	110	1	2	2	1	2
623	145	7	54	26	Peak	161	689	602	115	195	33	4	39	126	40	11	74	159	0.324	0.399	0.586	0.986	172	353	6	0	7	24	16
624	168	8	54	29	Peak	135	551	487	67	142	30	0	11	62	0	1	58	103	0.292	0.368	0.421	0.789	121	205	3	0	3	9	8
625	301	12	54	34	Senior	136	490	454	49	125	17	3	3	45	4	3	25	49	0.275	0.314	0.346	0.66	85	157	3	3	5	1	11
626	284	6	54	32	Veteran	62	246	219	24	60	12	1	5	46	2	1	21	35	0.274	0.333	0.406	0.74	106	89	1	0	5	0	5
627	302	5	54	37	Senior	63	239	202	32	51	10	1	4	26	1	2	26	50	0.252	0.342	0.371	0.713	100	75	3	5	3	1	9
628	290	11	54	23	Young	61	227	198	20	50	15	0	4	26	3	3	25	51	0.253	0.338	0.389	0.727	103	77	1	2	1	0	5
629	303	1	54	27	Peak	64	202	176	13	34	6	1	5	17	0	0	20	35	0.193	0.276	0.324	0.6	68	57	1	3	2	4	3
630	304	4	54	33	Veteran	37	152	137	15	27	4	0	1	12	5	3	11	21	0.197	0.272	0.248	0.52	47	34	3	1	0	0	0
631	262	14	54	25	Peak	36	139	123	20	25	9	0	1	13	1	0	12	21	0.203	0.283	0.301	0.583	64	37	2	1	1	0	1
632	186	1	54	30	Veteran	31	103	85	8	23	1	1	2	11	0	1	14	16	0.271	0.392	0.376	0.769	117	32	3	1	0	0	2
633	305	11	54	28	Peak	61	91	71	10	14	1	1	2	6	6	0	13	30	0.197	0.322	0.324	0.646	82	23	1	4	2	1	1
634	306	6	54	34	Senior	36	70	66	4	13	1	1	2	7	0	0	4	16	0.197	0.243	0.333	0.576	60	22	0	0	0	0	4
635	307	11	54	34	Senior	24	62	55	5	14	2	0	1	5	0	0	5	14	0.255	0.323	0.345	0.668	88	19	1	0	1	1	0
636	308	15	54	26	Peak	25	58	51	5	8	1	0	2	3	0	0	7	10	0.157	0.259	0.294	0.553	55	15	0	0	0	3	3
637	309	10	54	29	Peak	34	40	37	5	0	0	0	0	1	1	0	2	11	0	0.075	0	0.075	-77	0	1	0	0	0	0
638	289	3	54	24	Young	17	35	32	2	6	0	0	0	1	0	0	2	11	0.188	0.235	0.188	0.423	21	6	0	1	0	0	1
639	234	1	54	23	Young	7	16	13	0	2	0	0	0	1	0	0	2	4	0.154	0.313	0.154	0.466	36	2	1	0	0	0	0
640	310	12	54	39	Senior	7	15	14	2	4	0	0	0	1	0	0	1	4	0.286	0.333	0.286	0.619	76	4	0	0	0	0	0
641	311	11	54	26	Peak	7	11	11	0	3	0	0	0	0	0	0	0	5	0.273	0.273	0.273	0.545	54	3	0	0	0	0	0
642	312	1	54	28	Peak	4	7	7	0	1	0	0	0	0	0	0	0	3	0.143	0.143	0.143	0.286	-19	1	0	0	0	0	0
643	313	6	54	26	Peak	2	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
644	53	13	54	23	Young	32	86	71	10	16	0	0	0	4	0	0	3	13	0.225	0.267	0.225	0.492	40	16	1	11	0	0	1
645	314	13	54	36	Senior	30	71	61	2	7	0	0	0	1	0	0	4	20	0.115	0.169	0.115	0.284	-18	7	0	6	0	0	0
646	272	13	54	26	Peak	30	65	56	4	9	3	0	1	4	0	0	4	23	0.161	0.217	0.268	0.485	35	15	0	5	0	0	0
647	273	13	54	35	Senior	32	63	58	0	5	2	0	0	4	1	1	0	13	0.086	0.086	0.121	0.207	-43	7	0	5	0	0	0
648	295	13	54	22	Young	12	16	14	1	3	0	0	0	0	0	0	1	1	0.214	0.267	0.214	0.481	37	3	0	1	0	0	0
649	315	13	54	31	Veteran	8	16	11	1	0	0	0	0	0	0	0	1	3	0	0.083	0	0.083	-74	0	0	4	0	0	0
650	292	13	54	21	Young	10	12	11	1	1	0	0	0	0	0	0	1	9	0.091	0.167	0.091	0.258	-25	1	0	0	0	0	0
651	316	13	54	27	Peak	5	11	9	0	0	0	0	0	0	0	0	1	7	0	0.1	0	0.1	-69	0	0	1	0	0	0
652	296	13	54	25	Peak	5	4	3	0	0	0	0	0	0	0	1	1	2	0	0.25	0	0.25	-22	0	0	0	0	0	0
653	317	13	54	30	Veteran	8	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
654	278	13	54	25	Peak	45	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
655	318	13	54	28	Peak	16	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
656	274	13	54	32	Veteran	69	1	0	0	0	0	0	0	1	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
657	319	13	54	28	Peak	47	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
658	297	13	54	24	Young	27	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
659	320	13	54	33	Veteran	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
660	321	13	54	29	Peak	38	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
661	106	13	54	23	Young	48	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
662	256	13	54	25	Peak	44	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
663	322	13	54	27	Peak	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
664	298	13	54	34	Senior	67	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
665	125	1	53	27	Peak	97	387	331	45	82	13	0	5	26	6	2	48	61	0.248	0.347	0.332	0.679	88	110	4	1	3	7	7
666	282	2	53	26	Peak	161	648	588	67	157	41	2	10	88	10	5	52	95	0.267	0.329	0.395	0.723	98	232	4	0	4	9	14
667	323	3	53	24	Young	82	292	256	29	69	15	4	1	30	2	2	30	49	0.27	0.352	0.371	0.723	99	95	3	2	1	4	4
668	304	4	53	32	Veteran	97	428	383	66	115	23	7	8	43	22	4	40	60	0.3	0.366	0.46	0.826	125	176	1	2	2	5	5
669	302	5	53	36	Senior	146	571	509	56	126	28	1	17	64	0	4	48	138	0.248	0.32	0.407	0.727	98	207	8	3	3	3	8
670	324	6	53	38	Senior	66	232	196	32	61	15	0	8	40	1	1	32	38	0.311	0.405	0.51	0.915	150	100	1	0	3	4	4
671	145	7	53	25	Peak	162	668	602	82	150	25	6	28	89	19	15	53	170	0.249	0.31	0.45	0.76	106	271	4	0	9	4	14
672	168	8	53	28	Peak	139	585	517	71	151	33	1	23	82	2	1	59	102	0.292	0.364	0.493	0.857	133	255	3	0	6	11	11
673	300	14	53	36	Senior	133	414	351	48	102	15	1	0	23	12	4	51	64	0.291	0.379	0.339	0.718	100	119	2	5	5	3	8
674	325	3	53	30	Veteran	54	228	198	27	48	5	0	1	8	4	3	22	28	0.242	0.323	0.283	0.606	69	56	2	5	1	0	5
675	326	11	53	33	Veteran	102	215	202	24	53	11	2	2	15	2	2	5	50	0.262	0.291	0.366	0.657	79	74	4	2	2	0	3
676	327	12	53	35	Senior	82	185	162	24	35	10	1	2	19	2	2	18	35	0.216	0.295	0.327	0.622	71	53	1	2	2	1	4
677	328	6	53	38	Senior	80	163	155	8	28	6	1	2	12	1	0	5	34	0.181	0.204	0.271	0.475	29	42	0	1	2	1	6
678	329	6	53	34	Senior	39	160	149	17	39	6	1	1	7	5	3	11	26	0.262	0.313	0.336	0.648	78	50	0	0	0	0	5
679	311	11	53	25	Peak	44	133	121	16	28	8	1	0	11	3	1	8	24	0.231	0.277	0.314	0.591	62	38	0	3	1	0	3
680	186	1	53	29	Peak	44	128	108	6	30	5	0	0	16	0	0	14	18	0.278	0.363	0.324	0.687	91	35	1	4	1	1	5
681	307	6	53	33	Veteran	37	80	75	11	21	2	0	5	17	0	1	4	14	0.28	0.313	0.507	0.819	121	38	0	0	1	0	2
682	299	1	53	34	Senior	25	72	64	9	19	3	0	5	13	0	0	5	15	0.297	0.361	0.578	0.939	153	37	2	0	1	3	2
683	330	1	53	41	Senior	21	71	63	4	14	2	0	0	2	0	0	7	15	0.222	0.31	0.254	0.564	58	16	1	0	0	1	3
684	308	10	53	25	Peak	15	43	42	3	6	0	0	2	4	0	0	0	8	0.143	0.14	0.286	0.425	13	12	0	0	1	0	1
685	305	11	53	27	Peak	14	30	23	5	5	1	1	0	1	0	0	4	8	0.217	0.357	0.348	0.705	95	8	1	2	0	0	1
686	331	4	53	26	Peak	14	25	23	2	3	1	0	0	1	1	0	0	5	0.13	0.16	0.174	0.334	-8	4	1	0	1	0	1
687	332	2	53	33	Veteran	11	13	12	0	1	0	0	0	0	0	0	0	3	0.083	0.154	0.083	0.237	-32	1	1	0	0	0	1
688	333	14	53	31	Veteran	5	9	8	0	1	0	0	0	1	0	0	0	2	0.125	0.222	0.125	0.347	-1	1	1	0	0	0	0
689	310	4	53	38	Senior	1	4	3	0	0	0	0	0	0	0	0	1	2	0	0.25	0	0.25	-23	0	0	0	0	0	0
690	53	13	53	22	Young	31	74	55	4	3	0	0	0	1	0	0	1	17	0.055	0.071	0.055	0.126	-65	3	0	18	0	0	3
691	272	13	53	25	Peak	31	72	62	1	9	1	0	0	3	0	0	4	27	0.145	0.197	0.161	0.358	0	10	0	6	0	0	0
692	314	13	53	35	Senior	30	68	55	2	2	0	0	0	0	0	0	2	21	0.036	0.07	0.036	0.107	-70	2	0	11	0	0	1
693	320	13	53	32	Veteran	15	35	26	5	4	1	0	0	2	0	0	2	12	0.154	0.241	0.192	0.434	21	5	1	6	0	0	0
694	296	13	53	24	Young	17	32	27	1	2	0	0	0	1	0	0	1	13	0.074	0.107	0.074	0.181	-49	2	0	4	0	0	0
695	273	13	53	34	Senior	12	26	23	0	1	0	0	0	0	0	0	1	9	0.043	0.083	0.043	0.127	-64	1	0	2	0	0	1
696	334	13	53	24	Young	31	18	14	1	1	0	0	0	0	0	0	0	7	0.071	0.071	0.071	0.143	-61	1	0	4	0	0	0
697	335	13	53	26	Peak	8	9	6	0	0	0	0	0	1	0	0	1	5	0	0.125	0	0.125	-62	0	0	1	1	0	0
698	336	13	53	33	Veteran	42	5	5	0	1	0	0	0	0	0	0	0	3	0.2	0.2	0.2	0.4	11	1	0	0	0	0	0
699	337	13	53	37	Senior	16	5	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	1
700	321	13	53	28	Peak	54	3	1	0	0	0	0	0	0	0	0	1	1	0	0.5	0	0.5	53	0	0	1	0	0	0
701	318	13	53	27	Peak	49	3	2	0	0	0	0	0	1	0	0	1	1	0	0.333	0	0.333	2	0	0	0	0	0	0
702	106	13	53	22	Young	26	2	1	1	1	0	0	0	0	0	0	1	0	1	1	1	2	453	1	0	0	0	0	0
703	338	13	53	33	Veteran	62	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
704	339	13	53	36	Senior	19	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
705	340	13	53	25	Peak	13	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
706	341	13	53	25	Peak	4	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
707	342	13	53	26	Peak	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
708	343	13	53	36	Senior	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
709	344	13	53	32	Veteran	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
710	345	13	53	32	Veteran	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
711	276	13	53	27	Peak	56	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
712	256	13	53	24	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
713	322	13	53	26	Peak	61	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
714	125	1	52	26	Peak	143	588	505	63	126	19	0	7	53	11	6	69	80	0.25	0.352	0.329	0.68	86	166	11	2	1	9	18
715	282	2	52	25	Peak	158	652	576	73	162	25	2	13	90	7	3	70	68	0.281	0.357	0.399	0.756	104	230	0	1	4	10	16
716	346	3	52	31	Veteran	149	631	551	74	156	35	6	9	62	8	1	62	99	0.283	0.357	0.417	0.774	109	230	4	9	5	4	16
717	304	4	52	31	Veteran	150	680	613	92	165	28	5	9	47	12	6	61	89	0.269	0.335	0.375	0.711	92	230	1	3	2	2	11
718	302	5	52	35	Senior	139	565	485	84	136	25	6	18	79	3	4	63	116	0.28	0.363	0.468	0.832	123	227	6	1	10	8	12
719	324	6	52	37	Senior	104	431	352	62	102	24	2	19	63	0	1	71	81	0.29	0.418	0.531	0.949	155	187	7	0	1	21	7
720	145	7	52	24	Young	159	667	606	97	180	25	7	26	101	34	8	52	139	0.297	0.352	0.49	0.842	125	297	3	0	6	6	14
721	168	8	52	27	Peak	160	685	596	92	162	42	3	31	106	6	4	72	116	0.272	0.361	0.508	0.869	132	303	13	0	4	10	19
722	347	6	52	31	Veteran	145	425	380	57	117	16	8	0	31	30	12	27	27	0.308	0.365	0.392	0.757	105	149	8	9	1	3	7
723	348	15	52	37	Senior	107	204	181	19	42	8	0	0	25	1	1	20	21	0.232	0.309	0.276	0.585	60	50	1	0	2	2	6
724	310	14	52	37	Senior	57	121	112	18	31	4	0	1	9	0	0	6	25	0.277	0.311	0.339	0.65	76	38	0	2	1	1	1
725	330	1	52	40	Senior	36	107	95	9	28	4	0	1	9	1	0	5	21	0.295	0.343	0.368	0.712	93	35	2	5	0	0	1
726	327	12	52	34	Senior	24	83	77	13	27	7	0	5	17	1	0	6	16	0.351	0.398	0.636	1.034	174	49	0	0	0	0	3
727	323	12	52	23	Young	31	53	49	4	10	3	0	2	4	0	0	3	7	0.204	0.245	0.388	0.633	68	19	0	0	1	0	2
728	313	8	52	24	Young	14	24	22	2	4	2	0	1	7	0	0	0	5	0.182	0.167	0.409	0.576	49	9	0	0	2	0	2
729	349	2	52	35	Senior	20	20	18	0	6	1	0	0	3	0	0	1	6	0.333	0.4	0.389	0.789	115	7	1	0	0	0	0
730	350	16	52	38	Senior	17	17	17	0	4	0	0	0	3	0	0	0	7	0.235	0.235	0.235	0.471	28	4	0	0	0	0	0
731	311	11	52	24	Young	11	16	14	3	3	1	0	1	1	0	1	2	4	0.214	0.313	0.5	0.813	115	7	0	0	0	0	1
732	351	9	52	31	Veteran	8	15	13	1	4	1	0	0	0	0	0	0	6	0.308	0.4	0.385	0.785	114	5	2	0	0	0	0
733	352	12	52	24	Young	6	11	8	0	2	0	0	0	1	0	1	3	2	0.25	0.455	0.25	0.705	97	2	0	0	0	0	0
734	186	1	52	28	Peak	8	10	10	0	1	0	0	0	1	0	0	0	1	0.1	0.1	0.1	0.2	-46	1	0	0	0	0	0
735	353	11	52	28	Peak	10	7	5	1	0	0	0	0	1	1	0	0	2	0	0.143	0	0.143	-57	0	1	0	1	0	0
736	331	4	52	25	Peak	5	6	5	2	2	1	0	0	2	0	0	0	2	0.4	0.333	0.6	0.933	146	3	0	0	1	0	1
737	354	13	52	32	Veteran	33	81	68	5	11	4	0	1	11	1	0	2	22	0.162	0.194	0.265	0.459	23	18	1	9	1	0	1
738	272	13	52	24	Young	30	67	56	2	10	2	0	1	4	0	0	4	24	0.179	0.233	0.268	0.501	35	15	0	7	0	0	1
739	53	13	52	21	Young	30	59	48	2	5	0	0	0	2	0	0	3	16	0.104	0.157	0.104	0.261	-28	5	0	8	0	0	1
740	314	13	52	34	Senior	19	39	28	1	4	0	0	0	0	0	0	2	11	0.143	0.2	0.143	0.343	-5	4	0	9	0	0	0
741	355	13	52	29	Peak	11	21	15	1	1	0	0	0	2	0	0	3	8	0.067	0.211	0.067	0.277	-20	1	0	2	1	0	0
742	336	13	52	32	Veteran	26	15	13	1	3	0	0	0	0	0	0	0	6	0.231	0.231	0.231	0.462	25	3	0	2	0	0	0
743	320	13	52	31	Veteran	8	14	13	0	3	0	0	0	2	0	0	0	7	0.231	0.231	0.231	0.462	25	3	0	1	0	0	0
744	315	13	52	29	Peak	6	13	12	0	0	0	0	0	0	0	0	0	8	0	0.077	0	0.077	-77	0	1	0	0	0	0
745	356	13	52	33	Veteran	6	11	8	0	0	0	0	0	0	0	0	0	3	0	0.111	0	0.111	-67	0	1	2	0	0	0
746	341	13	52	24	Young	44	10	9	0	0	0	0	0	0	0	0	0	6	0	0	0	0	-100	0	0	1	0	0	1
747	357	13	52	36	Senior	5	7	6	1	1	0	0	0	0	0	0	0	0	0.167	0.167	0.167	0.333	-9	1	0	1	0	0	0
748	318	13	52	26	Peak	68	6	5	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	1	0	0	0
749	335	13	52	25	Peak	6	5	4	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	1	0	0	0
750	256	13	52	23	Young	19	5	5	1	1	1	0	0	1	0	0	0	2	0.2	0.2	0.4	0.6	57	2	0	0	0	0	0
751	276	13	52	26	Peak	66	4	4	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
752	358	13	52	35	Senior	58	4	3	0	1	0	0	0	1	0	0	0	1	0.333	0.333	0.333	0.667	81	1	0	1	0	0	0
753	359	13	52	31	Veteran	21	3	2	0	1	0	0	0	1	0	0	0	1	0.5	0.5	0.5	1	172	1	0	1	0	0	0
754	360	13	52	26	Peak	25	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
755	322	13	52	25	Peak	68	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
756	338	13	52	32	Veteran	30	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
757	361	13	52	31	Veteran	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
758	321	13	52	27	Peak	35	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
759	340	13	52	24	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
760	362	13	52	26	Peak	34	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
761	125	1	51	25	Peak	155	650	553	87	155	25	0	13	69	18	6	90	83	0.28	0.385	0.396	0.781	108	219	5	0	2	8	16
762	282	2	51	24	Young	161	651	595	66	172	35	6	13	90	7	4	45	85	0.289	0.338	0.434	0.772	103	258	3	1	7	6	25
763	363	3	51	40	Senior	121	474	440	42	123	23	1	12	59	0	1	25	52	0.28	0.327	0.418	0.745	96	184	7	0	2	1	13
764	364	4	51	30	Veteran	84	256	226	26	52	13	1	1	16	0	0	20	41	0.23	0.304	0.31	0.614	64	70	4	6	0	4	13
765	323	5	51	22	Young	117	421	368	45	97	13	2	9	52	3	0	45	68	0.264	0.344	0.383	0.728	93	141	3	0	5	9	6
766	347	6	51	30	Veteran	119	406	375	44	106	10	2	1	28	40	12	22	24	0.283	0.327	0.328	0.655	75	123	3	5	1	1	3
767	145	7	51	23	Young	155	657	606	93	176	38	5	18	76	35	11	46	153	0.29	0.34	0.459	0.799	110	278	1	1	3	6	11
768	168	8	51	26	Peak	141	596	525	90	160	38	5	20	77	6	3	59	88	0.305	0.375	0.51	0.885	132	268	4	1	7	0	6
769	365	7	51	31	Veteran	75	238	209	21	33	8	1	3	14	0	1	27	76	0.158	0.256	0.249	0.505	35	52	1	0	1	0	5
770	302	5	51	34	Senior	58	233	211	25	53	12	1	10	23	1	0	16	52	0.251	0.313	0.46	0.773	102	97	4	0	2	5	9
771	324	6	51	36	Senior	53	229	187	36	74	14	0	17	53	2	0	35	38	0.396	0.489	0.743	1.232	221	139	3	0	4	16	5
772	366	4	51	34	Senior	55	181	163	24	43	9	0	8	28	1	1	15	11	0.264	0.326	0.466	0.792	107	76	1	0	2	2	12
773	304	4	51	30	Veteran	36	164	143	34	51	12	2	5	16	8	3	20	17	0.357	0.439	0.573	1.012	166	82	1	0	0	0	3
774	367	10	51	26	Peak	83	143	126	10	31	9	0	1	7	0	0	14	34	0.246	0.321	0.341	0.663	76	43	0	3	0	0	2
775	331	4	51	24	Young	65	129	116	16	21	2	2	0	9	2	0	11	23	0.181	0.252	0.233	0.485	30	27	0	2	0	4	5
776	368	10	51	38	Senior	98	108	92	2	12	3	0	0	5	0	0	15	28	0.13	0.25	0.163	0.413	13	15	0	0	1	0	0
777	369	14	51	28	Peak	45	88	79	7	18	1	0	1	4	0	0	5	11	0.228	0.282	0.278	0.561	50	22	1	3	0	0	5
778	370	5	51	24	Young	27	69	59	6	12	1	0	2	6	0	0	10	7	0.203	0.319	0.322	0.641	71	19	0	0	0	0	5
779	371	1	51	33	Veteran	24	54	51	3	12	1	0	1	4	1	0	2	10	0.235	0.278	0.314	0.592	57	16	1	0	0	0	2
780	372	10	51	33	Veteran	36	33	32	6	7	0	1	1	3	1	1	1	5	0.219	0.242	0.375	0.617	61	12	0	0	0	0	1
781	373	1	51	36	Senior	10	23	21	1	4	1	0	1	4	0	0	2	0	0.19	0.261	0.381	0.642	68	8	0	0	0	0	1
782	353	11	51	27	Peak	22	20	18	0	3	1	0	0	0	1	0	2	9	0.167	0.25	0.222	0.472	27	4	0	0	0	0	0
783	374	6	51	29	Peak	6	5	4	0	1	0	0	0	0	0	0	0	0	0.25	0.4	0.25	0.65	78	1	1	0	0	0	0
784	186	1	51	27	Peak	4	3	3	1	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
785	375	13	51	35	Senior	32	75	65	4	9	0	0	0	5	0	0	3	20	0.138	0.176	0.138	0.315	-15	9	0	7	0	0	0
786	272	13	51	23	Young	35	72	63	1	6	0	0	0	3	0	0	4	36	0.095	0.149	0.095	0.244	-33	6	0	5	0	0	0
787	314	13	51	33	Veteran	30	65	54	2	8	1	0	0	2	0	0	5	16	0.148	0.22	0.167	0.387	5	9	0	6	0	0	1
788	53	13	51	20	Young	21	38	29	1	2	0	0	0	0	0	0	0	13	0.069	0.069	0.069	0.138	-63	2	0	9	0	0	0
789	376	13	51	30	Veteran	18	32	26	2	5	0	0	0	2	0	0	0	7	0.192	0.192	0.192	0.385	3	5	0	6	0	0	0
790	355	13	51	28	Peak	9	18	15	3	2	0	0	0	2	0	0	2	6	0.133	0.222	0.133	0.356	-2	2	0	0	1	0	0
791	321	13	51	26	Peak	41	14	12	1	3	1	0	0	0	0	0	0	4	0.25	0.25	0.333	0.583	53	4	0	2	0	0	0
792	377	13	51	42	Senior	7	13	13	0	1	0	0	0	1	0	0	0	1	0.077	0.077	0.077	0.154	-59	1	0	0	0	0	1
793	378	13	51	35	Senior	53	12	9	0	1	0	0	0	0	0	0	0	5	0.111	0.111	0.111	0.222	-41	1	0	3	0	0	0
794	379	13	51	36	Senior	7	9	6	1	2	0	0	0	1	0	0	0	1	0.333	0.333	0.333	0.667	78	2	0	3	0	0	1
795	380	13	51	34	Senior	16	8	7	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	1	0	0	1
796	322	13	51	24	Young	70	3	2	0	0	0	0	0	0	0	0	1	0	0	0.333	0	0.333	-1	0	0	0	0	0	1
797	381	13	51	38	Senior	43	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
798	382	13	51	30	Veteran	16	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
799	360	13	51	25	Peak	53	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
800	256	13	51	22	Young	10	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
801	383	13	51	31	Veteran	69	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
802	384	13	51	37	Senior	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
803	318	13	51	25	Peak	32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
804	385	13	51	31	Veteran	38	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
805	386	13	51	28	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
806	341	13	51	23	Young	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
807	125	1	50	24	Young	151	620	540	87	158	32	3	19	87	21	9	67	89	0.293	0.374	0.469	0.843	116	253	7	0	6	1	16
808	282	2	50	23	Young	96	375	344	41	114	18	4	15	67	0	1	28	48	0.331	0.381	0.538	0.919	134	185	1	0	2	5	6
809	363	3	50	39	Senior	136	562	494	78	149	36	1	20	79	1	3	57	61	0.302	0.375	0.5	0.875	123	247	5	0	6	4	17
810	304	4	50	29	Peak	138	643	581	87	157	23	4	6	47	25	6	55	68	0.27	0.333	0.355	0.687	78	206	1	2	3	3	11
811	366	5	50	33	Veteran	121	466	431	39	122	17	0	7	59	3	1	31	41	0.283	0.328	0.371	0.7	80	160	0	0	4	5	6
812	387	6	50	39	Senior	139	526	464	70	129	23	2	15	68	6	2	56	56	0.278	0.359	0.433	0.793	104	201	4	0	2	4	11
813	347	7	50	29	Peak	162	729	668	96	196	24	8	0	41	64	15	33	37	0.293	0.331	0.353	0.685	77	236	6	20	2	0	10
814	168	8	50	25	Peak	153	507	447	50	127	32	2	13	64	0	4	46	68	0.284	0.35	0.452	0.802	105	202	4	0	8	12	10
815	145	8	50	22	Young	98	311	292	47	100	12	5	10	42	10	5	16	66	0.342	0.373	0.521	0.894	127	152	0	0	3	0	6
816	388	5	50	25	Peak	84	192	156	22	36	8	0	10	26	0	0	32	49	0.231	0.359	0.474	0.834	113	74	1	0	3	0	1
817	352	12	50	22	Young	59	178	166	19	45	14	1	2	17	0	0	7	21	0.271	0.309	0.404	0.713	82	67	3	0	2	1	5
818	389	12	50	34	Senior	67	147	129	10	25	4	0	0	27	1	0	11	15	0.194	0.248	0.225	0.473	24	29	0	2	5	0	0
819	390	15	50	36	Senior	92	132	110	9	21	5	0	4	18	0	0	16	25	0.191	0.295	0.345	0.641	65	38	2	0	4	0	5
820	370	5	50	23	Young	35	115	93	16	21	5	0	1	10	2	1	20	24	0.226	0.365	0.312	0.677	78	29	1	0	1	5	1
821	391	1	50	35	Senior	38	82	77	6	18	2	0	0	1	0	0	4	11	0.234	0.28	0.26	0.54	41	20	1	0	0	0	2
822	392	10	50	29	Peak	41	80	74	12	16	2	1	0	7	1	0	4	12	0.216	0.263	0.27	0.533	38	20	1	0	1	0	0
823	393	5	50	31	Veteran	20	74	70	6	17	0	2	1	9	0	1	2	12	0.243	0.257	0.343	0.6	53	24	0	0	2	1	3
824	394	11	50	34	Senior	47	66	58	7	13	4	0	0	5	1	2	6	11	0.224	0.308	0.293	0.601	57	17	1	1	0	0	1
825	367	10	50	25	Peak	19	36	34	4	13	1	1	2	3	1	0	2	5	0.382	0.417	0.647	1.064	169	22	0	0	0	0	0
826	368	2	50	37	Senior	30	34	33	2	9	1	0	0	3	0	0	1	11	0.273	0.294	0.303	0.597	55	10	0	0	0	0	0
827	331	4	50	23	Young	12	31	29	5	7	0	1	2	5	0	0	0	8	0.241	0.241	0.517	0.759	88	15	0	2	0	0	0
828	395	12	50	33	Veteran	23	29	26	3	6	0	0	0	2	1	0	3	5	0.231	0.31	0.231	0.541	43	6	0	0	0	0	0
829	396	1	50	32	Veteran	7	9	8	2	1	0	0	0	0	0	0	0	1	0.125	0.222	0.125	0.347	-7	1	1	0	0	0	1
830	376	13	50	29	Peak	31	75	65	7	16	6	0	0	7	0	0	1	23	0.246	0.279	0.338	0.618	59	22	2	7	0	0	0
831	375	13	50	34	Senior	31	71	59	2	7	0	0	0	1	0	0	5	17	0.119	0.185	0.119	0.303	-19	7	0	6	1	0	1
832	272	13	50	22	Young	41	41	36	1	4	1	0	0	2	0	0	1	19	0.111	0.135	0.139	0.274	-29	5	0	4	0	0	2
833	354	13	50	30	Veteran	19	37	30	1	5	2	0	0	2	0	0	4	13	0.167	0.265	0.233	0.498	30	7	0	3	0	0	0
834	397	13	50	34	Senior	31	30	24	0	0	0	0	0	1	0	0	1	16	0	0.04	0	0.04	-88	0	0	5	0	0	0
835	398	13	50	33	Veteran	35	30	27	1	1	1	0	0	1	0	0	2	10	0.037	0.103	0.074	0.178	-53	2	0	1	0	0	0
836	399	13	50	44	Senior	7	15	15	2	4	1	0	0	1	0	0	0	6	0.267	0.267	0.333	0.6	54	5	0	0	0	0	0
837	355	13	50	27	Peak	13	12	12	1	4	2	0	0	0	0	0	0	5	0.333	0.333	0.5	0.833	111	6	0	0	0	0	0
838	379	13	50	35	Senior	5	9	7	0	1	0	0	0	2	0	0	0	2	0.143	0.143	0.143	0.286	-26	1	0	2	0	0	1
839	321	13	50	25	Peak	5	8	6	1	1	0	0	1	1	0	0	0	3	0.167	0.167	0.667	0.833	101	4	0	2	0	0	0
840	357	13	50	34	Senior	6	8	7	1	1	0	0	1	1	0	0	0	4	0.143	0.143	0.571	0.714	72	4	0	1	0	0	0
841	383	13	50	30	Veteran	80	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
842	400	13	50	38	Senior	68	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
843	401	13	50	22	Young	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
844	381	13	50	37	Senior	60	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
845	201	13	50	26	Peak	20	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
846	385	13	50	30	Veteran	31	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
847	386	13	50	27	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
848	402	13	50	27	Peak	18	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
849	403	13	50	27	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
850	246	13	50	42	Senior	22	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
851	322	13	50	23	Young	81	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
852	125	1	49	23	Young	121	468	415	65	117	26	4	10	65	10	5	45	57	0.282	0.355	0.436	0.792	101	181	4	1	3	8	17
853	366	2	49	32	Veteran	122	523	469	82	142	31	2	20	93	3	0	42	30	0.303	0.367	0.505	0.872	120	237	8	0	4	9	15
854	363	3	49	38	Senior	115	473	407	61	119	27	3	14	68	1	2	55	69	0.292	0.385	0.477	0.861	119	194	8	0	3	8	9
855	304	4	49	28	Peak	159	736	654	113	196	32	9	15	63	37	13	73	98	0.3	0.369	0.445	0.814	107	291	1	5	3	3	7
856	388	5	49	24	Young	55	193	174	19	42	7	0	9	24	1	0	17	45	0.241	0.306	0.437	0.742	87	76	0	0	2	3	7
857	168	6	49	24	Young	126	441	396	50	122	20	7	11	55	5	5	34	77	0.308	0.365	0.477	0.842	113	189	5	0	6	2	11
858	404	7	49	39	Senior	129	522	469	79	141	15	12	3	41	32	5	45	42	0.301	0.36	0.403	0.763	95	189	0	6	2	1	16
859	405	8	49	30	Veteran	146	594	494	84	140	34	6	20	100	2	3	89	106	0.283	0.393	0.498	0.891	126	246	4	1	6	8	4
860	406	11	49	32	Veteran	86	273	223	34	52	16	1	5	17	5	1	43	54	0.233	0.353	0.381	0.734	88	85	0	4	3	2	3
861	390	15	49	35	Senior	103	204	179	30	53	15	0	11	48	0	0	14	47	0.296	0.363	0.564	0.927	132	101	7	0	4	1	4
862	389	3	49	33	Veteran	82	194	176	20	49	7	1	2	24	0	0	15	20	0.278	0.339	0.364	0.702	80	64	1	2	0	1	9
863	145	7	49	21	Young	52	166	154	30	39	7	1	7	23	6	0	9	53	0.253	0.289	0.448	0.737	85	69	0	0	3	1	1
864	407	12	49	30	Veteran	49	164	146	16	32	5	1	0	10	6	5	12	29	0.219	0.278	0.267	0.545	41	39	1	2	3	0	2
865	408	5	49	23	Young	43	151	128	15	32	12	0	3	22	1	0	18	17	0.25	0.356	0.414	0.77	97	53	3	2	0	0	5
866	353	7	49	25	Peak	69	150	130	21	33	5	1	3	16	10	4	15	24	0.254	0.345	0.377	0.722	85	49	3	2	0	1	2
867	409	5	49	26	Peak	32	129	119	10	30	7	1	1	12	1	3	7	6	0.252	0.302	0.353	0.655	67	42	2	0	1	3	1
868	410	5	49	35	Senior	32	126	107	12	27	7	0	3	15	1	1	17	9	0.252	0.357	0.402	0.759	94	43	1	0	1	3	1
869	282	2	49	22	Young	48	111	102	20	29	6	5	4	18	1	0	8	10	0.284	0.342	0.559	0.901	125	57	1	0	0	1	8
870	303	1	49	22	Young	25	86	75	5	21	2	0	2	8	1	0	11	18	0.28	0.372	0.387	0.759	95	29	0	0	0	4	1
871	395	6	49	32	Veteran	25	73	64	12	24	3	2	7	15	2	2	7	8	0.375	0.431	0.813	1.243	208	52	0	1	1	0	3
872	411	1	49	40	Senior	27	62	62	3	20	5	0	0	9	0	0	0	7	0.323	0.323	0.403	0.726	84	25	0	0	0	0	3
873	412	1	49	30	Veteran	21	60	57	2	21	4	0	0	8	0	0	2	5	0.368	0.383	0.439	0.822	110	25	0	0	1	2	2
874	413	11	49	32	Veteran	43	55	53	4	13	5	0	1	8	1	0	2	10	0.245	0.273	0.396	0.669	68	21	0	0	0	0	3
875	414	12	49	30	Veteran	29	39	33	6	5	0	1	0	0	0	0	5	5	0.152	0.263	0.212	0.475	24	7	0	1	0	0	0
876	415	5	49	21	Young	8	23	19	2	4	0	0	0	3	0	0	3	2	0.211	0.348	0.211	0.558	48	4	1	0	0	0	3
877	416	8	49	25	Peak	8	14	14	4	7	1	1	2	9	1	0	0	2	0.5	0.5	1.143	1.643	303	16	0	0	0	0	0
878	367	11	49	24	Young	8	5	5	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
879	417	1	49	33	Veteran	3	3	3	0	2	0	0	0	0	0	0	0	0	0.667	0.667	0.667	1.333	244	2	0	0	0	0	0
880	375	13	49	33	Veteran	33	79	64	5	6	2	0	0	3	0	0	4	19	0.094	0.145	0.125	0.27	-30	8	0	10	1	0	1
881	376	13	49	28	Peak	33	70	65	3	12	3	0	0	5	0	0	0	16	0.185	0.185	0.231	0.415	6	15	0	5	0	0	0
882	418	13	49	36	Senior	26	33	26	2	5	1	0	0	0	0	0	1	7	0.192	0.222	0.231	0.453	16	6	0	6	0	0	1
883	397	13	49	33	Veteran	44	31	25	2	3	0	0	0	0	0	0	1	13	0.12	0.154	0.12	0.274	-28	3	0	5	0	0	0
884	377	13	49	40	Senior	12	29	25	1	5	1	0	0	3	1	0	0	5	0.2	0.192	0.24	0.432	10	6	0	3	1	0	0
885	272	13	49	21	Young	16	28	24	2	2	0	0	0	2	0	0	2	15	0.083	0.185	0.083	0.269	-27	2	1	1	0	0	0
886	398	13	49	32	Veteran	17	23	19	1	0	0	0	0	0	0	0	2	14	0	0.095	0	0.095	-72	0	0	2	0	0	0
887	419	13	49	29	Peak	17	20	18	0	2	0	0	0	0	0	0	1	6	0.111	0.158	0.111	0.269	-29	2	0	1	0	0	1
888	420	13	49	28	Peak	19	17	15	3	1	0	0	0	0	0	0	1	1	0.067	0.125	0.067	0.192	-49	1	0	1	0	0	0
889	321	13	49	24	Young	25	11	8	1	1	1	0	0	0	0	0	0	6	0.125	0.125	0.25	0.375	-7	2	0	3	0	0	0
890	355	13	49	26	Peak	6	6	5	1	3	0	0	0	0	0	0	0	1	0.6	0.6	0.6	1.2	209	3	0	1	0	0	0
891	322	13	49	22	Young	65	4	2	0	0	0	0	0	0	0	0	1	2	0	0.333	0	0.333	-3	0	0	1	0	0	0
892	421	13	49	24	Young	12	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
893	383	13	49	29	Peak	59	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
894	422	13	49	29	Peak	33	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
895	423	13	49	35	Senior	19	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
896	424	13	49	30	Veteran	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
897	381	13	49	36	Senior	69	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
898	425	13	49	28	Peak	42	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
899	426	13	49	38	Senior	25	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
900	427	13	49	31	Veteran	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
901	386	13	49	26	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
902	428	1	48	28	Peak	121	434	399	38	95	20	0	10	55	0	1	25	50	0.238	0.287	0.363	0.65	71	145	4	2	4	4	16
903	429	2	48	26	Peak	133	368	320	40	81	15	2	15	42	1	3	34	80	0.253	0.336	0.453	0.789	107	145	8	2	4	1	10
904	363	3	48	37	Senior	149	637	553	100	160	36	0	29	105	6	2	72	85	0.289	0.377	0.512	0.889	133	283	8	0	4	8	19
905	409	4	48	25	Peak	106	478	444	48	114	19	2	2	31	8	8	25	51	0.257	0.302	0.322	0.624	66	143	4	4	1	1	11
906	430	5	48	28	Peak	88	258	239	23	59	9	2	3	15	1	1	16	34	0.247	0.3	0.339	0.639	69	81	2	1	0	0	6
907	413	6	48	31	Veteran	102	266	237	31	66	16	1	7	39	0	0	20	55	0.278	0.335	0.443	0.778	104	105	3	0	6	1	5
908	431	7	48	27	Peak	75	316	283	49	82	14	1	13	38	6	1	25	47	0.29	0.35	0.484	0.835	118	137	2	4	1	1	6
909	405	8	48	29	Peak	72	311	252	48	72	12	1	15	36	1	1	51	50	0.286	0.412	0.52	0.931	145	131	5	0	3	3	3
910	414	12	48	29	Peak	110	399	364	44	99	18	1	5	34	0	8	31	33	0.272	0.332	0.368	0.7	86	134	2	1	1	0	8
911	432	11	48	26	Peak	102	395	337	46	79	22	2	7	43	11	2	48	114	0.234	0.338	0.374	0.711	89	126	6	1	3	2	10
912	390	2	48	34	Senior	109	352	319	39	84	24	0	15	63	0	1	27	63	0.263	0.325	0.48	0.804	110	153	3	0	2	1	12
913	353	11	48	24	Young	129	301	276	43	61	15	3	8	30	5	0	16	80	0.221	0.281	0.384	0.665	74	106	7	2	0	1	7
914	433	12	48	25	Peak	98	287	259	28	77	13	2	3	23	11	4	21	61	0.297	0.36	0.398	0.758	101	103	5	1	1	1	4
915	303	1	48	21	Young	50	199	176	21	48	9	0	3	14	0	0	20	21	0.273	0.354	0.375	0.729	94	66	2	1	0	1	3
916	434	10	48	35	Senior	56	184	147	17	25	4	2	2	14	3	1	31	38	0.17	0.326	0.265	0.591	60	39	4	0	2	2	2
917	406	8	48	31	Veteran	47	179	156	23	47	14	2	6	22	0	1	23	43	0.301	0.391	0.532	0.923	142	83	0	0	0	1	4
918	435	6	48	29	Peak	65	124	112	14	18	0	0	4	12	1	0	10	29	0.161	0.228	0.268	0.495	31	30	0	0	1	1	4
919	408	5	48	22	Young	26	105	86	12	28	8	0	1	10	3	1	18	11	0.326	0.448	0.453	0.901	140	39	1	0	0	0	0
920	436	1	48	33	Veteran	13	47	40	1	10	2	0	0	4	0	0	7	12	0.25	0.362	0.3	0.662	78	12	0	0	0	1	0
921	437	1	48	28	Peak	15	46	43	2	9	2	0	1	1	0	0	3	6	0.209	0.261	0.326	0.586	54	14	0	0	0	0	3
922	438	12	48	31	Veteran	17	41	39	1	5	2	0	0	3	0	0	2	7	0.128	0.171	0.179	0.35	-7	7	0	0	0	0	3
923	416	8	48	24	Young	14	26	25	1	4	1	0	0	1	0	0	1	10	0.16	0.192	0.2	0.392	4	5	0	0	0	0	1
924	439	2	48	28	Peak	19	25	20	2	4	1	0	0	0	0	0	5	8	0.2	0.36	0.25	0.61	66	5	0	0	0	0	0
925	440	6	48	27	Peak	7	8	8	1	2	0	0	0	2	0	0	0	4	0.25	0.25	0.25	0.5	33	2	0	0	0	0	0
926	336	13	48	28	Peak	36	78	70	6	16	2	0	0	7	0	0	2	19	0.229	0.25	0.257	0.507	35	18	0	6	0	0	0
927	375	13	48	32	Veteran	33	76	65	3	10	2	0	0	4	1	0	2	17	0.154	0.179	0.185	0.364	-3	12	0	9	0	0	2
928	376	13	48	27	Peak	27	61	50	1	8	3	0	0	3	0	0	1	17	0.16	0.192	0.22	0.412	9	11	1	9	0	0	0
929	420	13	48	27	Peak	19	42	33	2	4	0	0	0	0	0	0	1	10	0.121	0.147	0.121	0.268	-28	4	0	8	0	0	0
930	402	13	48	25	Peak	34	35	30	1	3	1	0	0	1	0	0	3	18	0.1	0.182	0.133	0.315	-14	4	0	2	0	0	0
931	441	13	48	37	Senior	17	14	13	0	2	0	0	0	0	0	0	0	5	0.154	0.154	0.154	0.308	-18	2	0	1	0	0	0
932	442	13	48	21	Young	10	11	10	0	2	0	0	0	1	0	0	1	2	0.2	0.273	0.2	0.473	28	2	0	0	0	0	0
933	423	13	48	34	Senior	27	10	10	0	0	0	0	0	0	0	0	0	6	0	0	0	0	-100	0	0	0	0	0	0
934	443	13	48	24	Young	4	5	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
935	444	13	48	25	Peak	75	4	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
936	445	13	48	35	Senior	21	3	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
937	421	13	48	23	Young	22	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
938	426	13	48	37	Senior	69	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
939	386	13	48	25	Peak	73	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
940	446	13	48	32	Veteran	44	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
941	447	13	48	25	Peak	48	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
942	424	13	48	29	Peak	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
943	321	13	48	23	Young	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
944	448	13	48	27	Peak	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
945	322	13	48	21	Young	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
946	449	1	47	32	Veteran	91	381	349	41	105	18	1	10	49	2	4	22	27	0.301	0.351	0.444	0.795	109	155	6	2	2	0	15
947	450	2	47	31	Veteran	157	671	590	92	157	28	1	28	86	5	2	71	114	0.266	0.352	0.459	0.811	113	271	8	0	2	6	17
948	451	3	47	28	Peak	138	484	405	47	107	9	4	10	47	3	4	47	41	0.264	0.364	0.38	0.745	98	154	18	12	2	10	9
949	409	4	47	24	Young	159	728	670	90	193	32	9	4	62	25	9	43	70	0.288	0.33	0.381	0.71	88	255	0	12	3	2	6
950	452	5	47	25	Peak	156	657	598	104	200	32	0	48	121	7	2	53	87	0.334	0.388	0.629	1.017	163	376	2	0	4	9	15
951	432	6	47	25	Peak	89	326	290	56	76	11	3	16	47	4	1	30	85	0.262	0.338	0.486	0.825	115	141	4	1	1	0	1
952	431	7	47	26	Peak	141	597	516	72	138	24	0	19	67	15	11	71	123	0.267	0.362	0.424	0.786	108	219	6	3	1	3	12
953	453	8	47	28	Peak	86	350	324	42	76	18	1	13	43	3	3	21	53	0.235	0.289	0.417	0.705	84	135	4	0	1	0	9
954	454	6	47	32	Veteran	68	270	233	45	59	4	7	2	21	33	1	28	31	0.253	0.34	0.356	0.696	85	83	4	2	3	0	2
955	455	7	47	39	Senior	58	250	224	31	59	12	0	13	46	1	3	21	30	0.263	0.324	0.491	0.815	112	110	0	3	2	0	5
956	456	3	47	34	Senior	95	238	211	32	61	12	1	13	29	3	1	26	61	0.289	0.37	0.54	0.91	137	114	1	0	0	6	3
957	435	6	47	28	Peak	113	192	173	18	38	7	0	7	20	0	0	19	50	0.22	0.297	0.382	0.678	78	66	0	0	0	0	4
958	457	1	47	27	Peak	70	190	165	13	28	3	1	5	15	0	0	15	62	0.17	0.253	0.291	0.544	44	48	5	0	5	1	3
959	458	2	47	36	Senior	102	175	152	19	37	3	0	5	28	0	0	22	31	0.243	0.337	0.362	0.699	86	55	0	0	1	1	3
960	390	2	47	33	Veteran	77	128	111	17	31	1	0	8	22	0	0	12	33	0.279	0.352	0.505	0.856	123	56	2	0	3	1	4
961	459	1	47	36	Senior	47	113	96	5	18	0	0	0	5	0	0	14	24	0.188	0.286	0.188	0.473	29	18	0	1	2	4	2
962	429	2	47	25	Peak	31	76	62	5	10	5	0	0	6	0	0	11	18	0.161	0.289	0.242	0.531	43	15	1	0	2	2	2
963	460	3	47	24	Young	17	18	17	1	3	1	1	0	1	0	0	0	5	0.176	0.167	0.353	0.52	32	6	0	0	1	0	0
964	433	14	47	24	Young	13	14	13	5	3	1	0	0	0	1	0	0	5	0.231	0.286	0.308	0.593	57	4	1	0	0	0	0
965	440	6	47	26	Peak	8	10	8	1	0	0	0	0	0	0	0	2	3	0	0.2	0	0.2	-40	0	0	0	0	0	1
966	461	1	47	33	Veteran	9	8	8	1	1	0	0	0	0	0	0	0	3	0.125	0.125	0.125	0.25	-33	1	0	0	0	0	0
967	462	12	47	31	Veteran	9	5	4	0	1	0	0	0	0	0	0	1	2	0.25	0.4	0.25	0.65	78	1	0	0	0	0	0
968	336	13	47	27	Peak	33	78	70	3	15	2	1	0	2	0	0	1	26	0.214	0.225	0.271	0.497	31	19	0	7	0	0	0
969	420	13	47	26	Peak	30	70	62	5	7	2	0	0	2	0	0	2	17	0.113	0.141	0.145	0.286	-24	9	0	6	0	0	2
970	463	13	47	30	Veteran	29	62	55	7	7	0	0	1	6	0	0	1	24	0.127	0.143	0.182	0.325	-15	10	0	6	0	0	1
971	464	13	47	31	Veteran	37	57	48	1	9	0	0	0	2	0	0	1	19	0.188	0.204	0.188	0.392	5	9	0	8	0	0	2
972	445	13	47	34	Senior	39	34	31	4	5	0	0	0	0	0	0	1	14	0.161	0.188	0.161	0.349	-6	5	0	2	0	0	2
973	465	13	47	35	Senior	16	27	26	2	3	0	0	1	1	0	0	0	17	0.115	0.115	0.231	0.346	-11	6	0	1	0	0	0
974	442	13	47	20	Young	7	6	4	0	1	0	0	0	1	0	0	0	1	0.25	0.25	0.25	0.5	33	1	0	2	0	0	0
975	358	13	47	30	Veteran	49	6	6	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
976	444	13	47	24	Young	63	5	4	1	1	1	0	0	2	0	0	0	1	0.25	0.25	0.5	0.75	92	2	0	1	0	0	1
977	376	13	47	26	Peak	3	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
978	423	13	47	33	Veteran	12	4	4	0	1	0	0	0	0	0	0	0	0	0.25	0.25	0.25	0.5	33	1	0	0	0	0	0
979	424	13	47	28	Peak	67	3	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
980	382	13	47	26	Peak	6	3	2	1	0	0	0	0	0	0	0	1	2	0	0.333	0	0.333	0	0	0	0	0	0	0
981	426	13	47	36	Senior	41	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
982	386	13	47	24	Young	31	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
983	466	13	47	32	Veteran	55	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
984	467	13	47	34	Senior	44	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
985	468	13	47	35	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
986	469	13	47	30	Veteran	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
987	470	13	47	35	Senior	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
988	471	13	47	28	Peak	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
989	449	1	46	31	Veteran	147	630	568	64	155	34	2	7	52	0	2	44	54	0.273	0.335	0.377	0.712	91	214	10	7	1	6	21
990	472	2	46	39	Senior	86	329	297	32	74	14	0	13	40	0	0	31	66	0.249	0.322	0.428	0.75	99	127	1	0	0	4	7
991	451	3	46	27	Peak	148	514	477	39	119	24	3	4	34	4	2	16	59	0.249	0.287	0.338	0.625	67	161	10	9	2	3	5
992	409	4	46	23	Young	158	593	558	47	140	21	6	1	40	10	5	25	70	0.251	0.282	0.315	0.597	60	176	0	7	3	8	8
993	452	5	46	24	Young	158	608	559	50	134	30	2	23	80	2	2	37	103	0.24	0.29	0.424	0.714	88	237	5	1	6	4	13
994	473	6	46	34	Senior	61	246	230	25	47	4	0	13	32	4	0	14	57	0.204	0.252	0.391	0.643	69	90	1	0	1	3	1
995	454	7	46	31	Veteran	107	440	388	56	97	6	5	2	16	40	14	43	39	0.25	0.331	0.307	0.638	73	119	4	5	0	1	0
996	450	8	46	30	Veteran	160	691	611	84	171	49	2	19	85	6	2	68	112	0.28	0.355	0.46	0.814	116	281	6	0	6	2	18
997	474	10	46	30	Veteran	128	380	347	43	98	32	2	6	37	6	4	17	62	0.282	0.332	0.438	0.77	104	152	10	3	3	3	10
998	475	6	46	36	Senior	66	253	224	28	67	9	0	6	28	1	1	23	30	0.299	0.372	0.42	0.791	112	94	4	0	2	3	3
999	476	6	46	30	Veteran	88	191	162	25	35	7	0	5	14	1	3	13	38	0.216	0.335	0.352	0.687	85	57	16	0	0	2	8
1000	457	1	46	26	Peak	40	140	124	19	32	7	0	10	18	0	0	13	42	0.258	0.336	0.556	0.892	134	69	2	0	1	0	4
1001	477	15	46	36	Senior	69	137	125	11	30	4	0	4	15	0	0	10	19	0.24	0.299	0.368	0.667	78	46	1	0	1	2	7
1002	458	2	46	35	Senior	49	127	109	11	24	5	1	5	13	0	0	18	25	0.22	0.331	0.422	0.753	100	46	0	0	0	2	3
1003	478	10	46	28	Peak	52	114	109	6	20	1	0	0	9	0	0	3	19	0.183	0.211	0.193	0.403	9	21	1	0	1	0	4
1004	479	6	46	44	Senior	30	84	72	7	15	1	0	2	5	3	0	11	16	0.208	0.321	0.306	0.627	70	22	1	0	0	0	0
1005	480	7	46	24	Young	21	41	41	2	9	2	1	0	2	1	0	0	7	0.22	0.22	0.317	0.537	42	13	0	0	0	0	0
1006	481	1	46	34	Senior	21	41	33	2	6	1	0	2	11	0	1	8	13	0.182	0.341	0.394	0.735	97	13	0	0	0	0	0
1007	482	2	46	28	Peak	30	39	38	2	8	2	0	0	2	0	0	1	9	0.211	0.231	0.263	0.494	32	10	0	0	0	0	0
1008	483	11	46	24	Young	37	37	36	3	3	0	0	0	0	2	0	1	8	0.083	0.108	0.083	0.191	-48	3	0	0	0	0	2
1009	484	6	46	25	Peak	11	27	25	2	4	1	0	0	2	0	0	2	9	0.16	0.222	0.2	0.422	15	5	0	0	0	0	0
1010	485	6	46	26	Peak	9	12	12	0	1	0	0	0	1	0	0	0	3	0.083	0.083	0.083	0.167	-55	1	0	0	0	0	0
1011	460	3	46	23	Young	12	11	10	2	2	0	0	0	0	0	0	1	1	0.2	0.273	0.2	0.473	30	2	0	0	0	0	0
1012	486	16	46	24	Young	3	3	3	0	1	1	0	0	0	0	0	0	2	0.333	0.333	0.667	1	159	2	0	0	0	0	0
1013	440	16	46	25	Peak	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1014	465	13	46	34	Senior	31	74	65	4	9	1	0	1	3	0	0	3	25	0.138	0.176	0.2	0.376	1	13	0	6	0	0	1
1015	487	13	46	38	Senior	30	70	63	4	10	3	0	0	2	0	0	0	28	0.159	0.156	0.206	0.363	-4	13	0	6	1	0	1
1016	420	13	46	25	Peak	28	63	52	3	5	0	0	0	0	0	0	1	14	0.096	0.113	0.096	0.209	-43	5	0	10	0	0	2
1017	463	13	46	29	Peak	25	43	34	1	1	0	1	0	0	0	0	0	16	0.029	0.029	0.088	0.118	-70	3	0	9	0	0	1
1018	445	13	46	33	Veteran	20	31	29	1	5	0	0	0	0	0	0	1	9	0.172	0.2	0.172	0.372	1	5	0	1	0	0	2
1019	466	13	46	31	Veteran	10	19	15	0	2	1	0	0	1	0	0	1	9	0.133	0.188	0.2	0.388	4	3	0	3	0	0	0
1020	488	13	46	35	Senior	20	17	14	0	0	0	0	0	0	0	0	0	8	0	0	0	0	-100	0	0	3	0	0	0
1021	358	13	46	29	Peak	72	9	9	1	2	0	0	1	2	0	0	0	4	0.222	0.222	0.556	0.778	99	5	0	0	0	0	0
1022	442	13	46	19	Young	4	8	6	0	0	0	0	0	0	0	0	1	2	0	0.143	0	0.143	-57	0	0	1	0	0	0
1023	470	13	46	34	Senior	3	4	4	0	1	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	35	1	0	0	0	0	0
1024	489	13	46	32	Veteran	59	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1025	468	13	46	34	Senior	4	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1026	490	13	46	34	Senior	85	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1027	491	13	46	28	Peak	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1028	492	13	46	24	Young	13	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
1029	467	13	46	33	Veteran	77	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1030	493	13	46	30	Veteran	12	1	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	440	1	0	0	0	0	0
1031	424	13	46	27	Peak	72	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1032	494	13	46	26	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1033	449	1	45	30	Veteran	149	632	580	74	163	38	1	10	64	3	1	34	31	0.281	0.33	0.402	0.731	99	233	10	4	4	2	20
1034	495	2	45	34	Senior	142	573	524	52	142	26	1	13	73	4	2	37	74	0.271	0.323	0.399	0.722	96	209	6	0	6	1	11
1035	496	3	45	32	Veteran	150	566	536	56	145	23	0	9	50	4	1	22	89	0.271	0.301	0.364	0.665	81	195	3	1	4	4	17
1036	409	4	45	22	Young	135	468	439	43	102	24	2	1	31	7	7	14	39	0.232	0.253	0.303	0.556	51	133	0	10	5	1	12
1037	452	5	45	23	Young	159	635	587	70	151	26	5	21	75	7	5	37	96	0.257	0.303	0.426	0.729	97	250	4	1	6	4	17
1038	475	6	45	35	Senior	128	515	471	65	134	27	3	18	80	2	2	34	86	0.285	0.338	0.469	0.807	118	221	6	0	4	3	10
1039	454	7	45	30	Veteran	127	479	422	63	117	14	7	3	34	45	10	48	51	0.277	0.353	0.365	0.718	97	154	2	6	1	0	1
1040	450	8	45	29	Peak	158	685	582	110	166	31	1	42	114	8	5	93	112	0.285	0.385	0.558	0.944	154	325	5	0	5	22	26
1041	497	11	45	35	Senior	111	371	343	57	95	21	4	17	60	5	1	22	68	0.277	0.321	0.51	0.831	123	175	2	0	4	2	6
1042	451	14	45	26	Peak	115	293	258	37	75	14	4	5	28	7	2	26	38	0.291	0.371	0.434	0.805	119	112	7	2	0	4	3
1043	498	15	45	33	Veteran	96	135	120	15	35	6	0	2	17	1	0	14	22	0.292	0.363	0.392	0.755	106	47	0	0	1	3	2
1044	499	1	45	37	Senior	41	108	95	8	25	5	0	2	12	1	0	10	31	0.263	0.333	0.379	0.712	94	36	1	0	2	4	3
1045	500	11	45	26	Peak	49	70	65	12	14	3	0	4	9	1	1	5	19	0.215	0.271	0.446	0.718	92	29	0	0	0	0	1
1046	501	15	45	31	Veteran	35	67	65	9	13	5	1	0	7	0	0	2	21	0.2	0.224	0.308	0.532	44	20	0	0	0	0	5
1047	476	10	45	29	Peak	37	60	50	7	19	5	0	2	11	1	0	4	10	0.38	0.483	0.6	1.083	194	30	6	0	0	0	2
1048	502	12	45	38	Senior	38	58	48	3	10	3	0	0	2	0	0	6	13	0.208	0.291	0.271	0.562	55	13	0	3	1	0	1
1049	474	10	45	29	Peak	10	15	12	3	4	1	0	0	1	0	0	2	2	0.333	0.429	0.417	0.845	133	5	0	1	0	0	0
1050	460	3	45	22	Young	8	15	13	1	6	1	0	0	1	0	0	0	1	0.462	0.429	0.538	0.967	162	7	0	1	1	0	0
1051	457	1	45	25	Peak	8	13	10	2	2	1	0	1	2	0	0	2	4	0.2	0.385	0.6	0.985	164	6	1	0	0	0	0
1052	480	7	45	23	Young	12	11	11	2	3	1	0	0	3	0	0	0	2	0.273	0.273	0.364	0.636	72	4	0	0	0	0	0
1053	503	8	45	23	Young	6	9	7	2	1	1	0	0	0	0	0	2	3	0.143	0.333	0.286	0.619	71	2	0	0	0	0	0
1054	440	6	45	24	Young	3	6	5	1	0	0	0	0	0	0	0	1	3	0	0.167	0	0.167	-49	0	0	0	0	0	0
1055	420	13	45	24	Young	30	75	64	5	10	5	0	1	4	0	0	1	13	0.156	0.169	0.281	0.45	20	18	0	10	0	0	0
1056	465	13	45	33	Veteran	33	74	63	3	4	2	0	1	3	0	0	5	32	0.063	0.132	0.143	0.275	-25	9	0	6	0	0	1
1057	488	13	45	34	Senior	27	56	48	5	6	0	0	1	4	0	0	2	23	0.125	0.16	0.188	0.348	-5	9	0	6	0	0	0
1058	463	13	45	28	Peak	26	56	50	1	5	0	0	0	2	0	0	2	21	0.1	0.135	0.1	0.235	-35	5	0	4	0	0	2
1059	504	13	45	30	Veteran	38	48	39	2	6	2	0	1	4	0	0	1	11	0.154	0.175	0.282	0.457	22	11	0	8	0	0	0
1060	487	13	45	37	Senior	17	22	20	2	5	1	0	1	2	0	0	0	11	0.25	0.25	0.45	0.7	86	9	0	2	0	0	0
1061	426	13	45	34	Senior	59	8	6	0	0	0	0	0	0	0	0	1	3	0	0.143	0	0.143	-57	0	0	1	0	0	0
1062	505	13	45	28	Peak	12	6	5	1	2	0	0	0	0	0	0	0	0	0.4	0.4	0.4	0.8	120	2	0	1	0	0	0
1063	358	13	45	28	Peak	40	4	4	1	1	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	37	1	0	0	0	0	0
1064	489	13	45	31	Veteran	28	3	3	0	1	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	83	1	0	0	0	0	0
1065	490	13	45	33	Veteran	83	3	3	0	1	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	83	1	0	0	0	0	0
1066	494	13	45	25	Peak	4	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1067	506	13	45	30	Veteran	10	2	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	175	1	0	0	0	0	0
1068	424	13	45	26	Peak	73	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1069	507	13	45	39	Senior	19	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1070	508	13	45	45	Senior	53	1	0	1	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
1071	509	13	45	28	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1072	510	13	45	37	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1073	511	13	45	31	Veteran	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1074	449	1	44	29	Peak	125	519	460	71	147	28	0	25	90	2	4	39	30	0.32	0.374	0.543	0.917	142	250	6	5	9	2	11
1075	495	2	44	33	Veteran	121	485	438	42	103	22	0	15	63	3	1	41	101	0.235	0.303	0.388	0.691	84	170	3	0	3	2	15
1076	496	3	44	31	Veteran	133	586	539	83	146	21	3	13	55	4	4	28	83	0.271	0.317	0.393	0.711	89	212	11	3	5	0	9
1077	451	4	44	25	Peak	134	449	405	38	88	18	3	4	29	0	2	31	58	0.217	0.285	0.306	0.591	59	124	8	3	2	6	16
1078	452	5	44	22	Young	126	515	475	59	126	22	4	13	60	13	4	28	82	0.265	0.31	0.411	0.72	91	195	5	2	5	1	9
1079	512	6	44	32	Veteran	143	618	515	98	160	28	2	36	100	10	4	94	67	0.311	0.417	0.583	1	164	300	4	0	5	13	12
1080	497	7	44	34	Senior	135	468	448	56	99	17	1	21	60	7	5	16	107	0.221	0.25	0.404	0.654	71	181	2	0	2	0	12
1081	450	8	44	28	Peak	161	701	619	121	184	31	4	49	125	20	4	72	107	0.297	0.372	0.598	0.97	154	370	5	0	5	10	10
1082	513	7	44	32	Veteran	105	312	286	51	66	8	5	4	22	22	8	23	58	0.231	0.286	0.336	0.622	66	96	0	1	2	0	3
1083	502	4	44	37	Senior	94	253	214	35	57	15	2	3	22	0	1	33	48	0.266	0.367	0.397	0.764	105	85	1	5	0	1	3
1084	499	1	44	36	Senior	73	234	191	21	41	11	1	6	17	0	0	41	52	0.215	0.355	0.377	0.732	97	72	1	0	1	2	5
1085	498	15	44	32	Veteran	92	175	140	13	33	10	0	2	20	0	1	32	29	0.236	0.371	0.35	0.721	96	49	0	0	3	5	3
1086	500	10	44	25	Peak	75	143	133	15	31	11	1	2	9	4	1	9	33	0.233	0.287	0.376	0.663	76	50	1	0	0	0	1
1087	514	15	44	35	Senior	66	101	88	8	15	2	0	3	8	0	0	12	25	0.17	0.277	0.295	0.573	54	26	1	0	0	2	2
1088	515	1	44	26	Peak	22	58	54	3	11	1	0	1	2	0	0	1	17	0.204	0.214	0.278	0.492	31	15	0	2	1	0	0
1089	516	7	44	25	Peak	28	55	49	7	16	2	0	1	7	3	2	3	10	0.327	0.4	0.429	0.829	123	21	3	0	0	0	0
1090	517	15	44	32	Veteran	30	53	50	6	12	3	0	2	6	0	0	3	19	0.24	0.283	0.42	0.703	85	21	0	0	0	1	0
1091	518	11	44	29	Peak	21	26	24	3	8	2	0	1	2	0	0	0	5	0.333	0.385	0.542	0.926	145	13	2	0	0	0	0
1092	519	14	44	34	Senior	13	21	21	3	6	0	0	0	0	0	0	0	4	0.286	0.286	0.286	0.571	54	6	0	0	0	0	0
1093	520	12	44	34	Senior	12	17	15	4	5	2	0	2	2	0	0	2	1	0.333	0.412	0.867	1.278	230	13	0	0	0	0	0
1094	521	1	44	33	Veteran	3	4	4	0	1	0	0	0	1	0	0	0	1	0.25	0.25	0.25	0.5	35	1	0	0	0	0	0
1095	378	13	44	28	Peak	34	81	69	6	10	3	0	0	4	0	0	5	22	0.145	0.203	0.188	0.391	6	13	0	7	0	0	1
1096	424	13	44	25	Peak	33	51	44	3	6	2	1	1	2	0	1	1	13	0.136	0.156	0.295	0.451	17	13	0	6	0	0	2
1097	522	13	44	28	Peak	41	48	39	2	2	1	0	0	1	0	0	3	19	0.051	0.116	0.077	0.193	-46	3	0	5	1	0	0
1098	523	13	44	23	Young	28	43	36	1	7	1	0	0	0	0	0	0	13	0.194	0.194	0.222	0.417	12	8	0	7	0	0	0
1099	487	13	44	36	Senior	20	41	36	2	3	0	0	1	2	0	0	0	12	0.083	0.154	0.167	0.321	-14	6	3	2	0	0	0
1100	466	13	44	29	Peak	16	37	33	4	5	2	0	1	2	1	0	1	20	0.152	0.176	0.303	0.48	25	10	0	3	0	0	0
1101	524	13	44	29	Peak	12	27	26	0	2	1	0	0	1	0	0	0	12	0.077	0.077	0.115	0.192	-49	3	0	1	0	0	1
1102	426	13	44	33	Veteran	44	12	12	1	3	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	35	3	0	0	0	0	0
1103	525	13	44	31	Veteran	71	10	9	0	4	0	0	0	1	0	0	0	3	0.444	0.444	0.444	0.889	140	4	0	1	0	0	0
1104	510	13	44	36	Senior	4	7	6	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
1105	507	13	44	38	Senior	19	6	6	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
1106	488	13	44	33	Veteran	3	5	2	1	1	0	0	0	1	0	0	1	0	0.5	0.667	0.5	1.167	221	1	0	2	0	0	0
1107	526	13	44	31	Veteran	17	4	3	1	1	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	80	1	0	1	0	0	0
1108	506	13	44	29	Peak	13	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1109	527	13	44	36	Senior	31	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1110	528	13	44	34	Senior	75	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1111	529	13	44	34	Senior	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1112	530	13	44	22	Young	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1113	508	13	44	44	Senior	32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1114	531	13	44	34	Senior	28	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1115	481	1	43	31	Veteran	90	353	299	49	85	16	0	24	70	0	1	45	69	0.284	0.375	0.579	0.954	143	173	2	1	6	6	5
1116	495	2	43	32	Veteran	155	663	584	84	146	29	0	31	106	4	3	63	122	0.25	0.321	0.459	0.78	100	268	4	0	12	2	18
1117	496	3	43	30	Veteran	148	676	617	101	172	35	6	7	49	12	3	45	81	0.279	0.335	0.389	0.724	88	240	9	2	3	0	16
1118	451	4	43	24	Young	109	394	353	39	84	18	6	4	32	4	1	26	53	0.238	0.302	0.357	0.658	70	126	7	6	2	4	6
1119	452	5	43	21	Young	138	575	510	71	148	30	2	20	85	12	5	56	80	0.29	0.36	0.475	0.835	114	242	2	3	4	2	13
1120	512	6	43	31	Veteran	141	612	501	105	163	24	3	43	109	4	6	101	71	0.325	0.438	0.643	1.081	176	322	4	0	6	7	13
1121	532	7	43	27	Peak	81	293	261	42	61	12	0	8	24	11	4	30	61	0.234	0.314	0.372	0.686	77	97	1	0	1	2	4
1122	450	8	43	27	Peak	162	714	610	98	164	44	4	24	99	24	5	90	121	0.269	0.367	0.472	0.839	116	288	8	0	6	9	18
1123	499	1	43	35	Senior	80	271	212	32	56	13	0	6	28	1	0	54	48	0.264	0.416	0.41	0.827	116	87	2	2	1	0	6
1124	533	4	43	35	Senior	80	259	220	29	50	8	0	14	32	0	0	38	52	0.227	0.341	0.455	0.796	104	100	0	1	0	5	0
1125	513	7	43	31	Veteran	56	229	211	29	53	3	1	1	11	16	3	18	41	0.251	0.31	0.289	0.599	57	61	0	0	0	0	4
1126	534	7	43	32	Veteran	81	177	142	19	28	4	0	1	9	3	2	21	33	0.197	0.322	0.246	0.568	51	35	6	6	2	0	5
1127	535	7	43	37	Senior	47	168	158	26	42	5	1	4	13	3	6	9	30	0.266	0.31	0.386	0.696	79	61	1	0	0	0	3
1128	498	10	43	31	Veteran	102	147	121	18	35	6	2	8	26	0	1	26	32	0.289	0.415	0.57	0.985	153	69	0	0	0	0	3
1129	536	12	43	32	Veteran	40	106	93	9	19	2	1	0	4	1	0	10	15	0.204	0.288	0.247	0.536	41	23	1	2	0	3	3
1130	449	1	43	28	Peak	34	75	65	6	16	2	0	2	8	0	2	6	8	0.246	0.301	0.369	0.671	73	24	0	2	2	0	2
1131	537	10	43	36	Senior	41	68	60	3	12	1	0	1	8	0	0	7	12	0.2	0.294	0.267	0.561	47	16	1	0	0	0	2
1132	514	10	43	34	Senior	27	41	34	8	10	3	0	4	9	0	0	6	7	0.294	0.39	0.735	1.126	183	25	0	0	1	1	3
1133	538	10	43	35	Senior	24	35	31	2	8	0	1	0	5	0	0	4	8	0.258	0.343	0.323	0.665	74	10	0	0	0	1	2
1134	539	11	43	35	Senior	15	23	20	5	3	1	0	1	3	0	0	2	7	0.15	0.227	0.35	0.577	47	7	0	1	0	0	0
1135	518	6	43	28	Peak	9	23	20	2	5	0	0	2	4	0	0	3	8	0.25	0.348	0.55	0.898	128	11	0	0	0	0	0
1136	519	12	43	33	Veteran	18	18	17	3	4	1	0	0	0	0	0	1	6	0.235	0.278	0.294	0.572	49	5	0	0	0	0	1
1137	540	10	43	27	Peak	4	13	12	0	1	0	0	0	0	0	0	1	2	0.083	0.154	0.083	0.237	-36	1	0	0	0	0	0
1138	500	3	43	24	Young	8	10	10	2	3	0	0	0	0	0	0	0	2	0.3	0.3	0.3	0.6	57	3	0	0	0	0	0
1139	541	16	43	28	Peak	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1140	487	13	43	35	Senior	32	84	66	2	5	0	0	0	3	0	0	2	29	0.076	0.129	0.076	0.204	-45	5	2	14	0	0	0
1141	378	13	43	27	Peak	32	78	70	6	15	4	0	2	6	0	0	2	16	0.214	0.236	0.357	0.593	51	25	0	6	0	0	0
1142	466	13	43	28	Peak	30	71	68	5	11	3	0	3	8	0	0	1	25	0.162	0.186	0.338	0.524	32	23	1	1	0	0	0
1143	542	13	43	29	Peak	30	50	43	0	2	1	1	0	3	0	0	0	15	0.047	0.047	0.116	0.163	-60	5	0	7	0	0	1
1144	424	13	43	24	Young	18	34	28	1	4	0	0	0	0	0	0	0	5	0.143	0.143	0.143	0.286	-25	4	0	6	0	0	0
1145	525	13	43	30	Veteran	56	14	13	0	1	0	0	0	0	0	0	0	8	0.077	0.077	0.077	0.154	-60	1	0	1	0	0	0
1146	543	13	43	26	Peak	9	13	11	1	1	0	0	1	1	0	0	0	7	0.091	0.091	0.364	0.455	10	4	0	2	0	0	0
1147	544	13	43	41	Senior	10	7	7	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1148	523	13	43	22	Young	6	6	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
1149	545	13	43	33	Veteran	17	4	3	0	0	0	0	0	1	0	0	1	2	0	0.25	0	0.25	-27	0	0	0	0	0	0
1150	522	13	43	27	Peak	63	3	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
1151	546	13	43	27	Peak	42	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	1
1152	547	13	43	25	Peak	1	2	1	1	1	0	0	0	0	0	0	0	0	1	1	1	2	423	1	0	1	0	0	0
1153	548	13	43	27	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1154	526	13	43	30	Veteran	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1155	527	13	43	35	Senior	49	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1156	528	13	43	33	Veteran	59	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1157	549	13	43	22	Young	28	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1158	550	13	43	26	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1159	531	13	43	33	Veteran	13	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1160	506	13	43	28	Peak	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1161	481	1	42	30	Veteran	114	428	376	49	78	14	0	24	55	3	0	44	113	0.207	0.295	0.436	0.731	87	164	4	1	3	3	5
1162	495	2	42	31	Veteran	153	639	578	74	176	40	0	34	112	8	5	53	119	0.304	0.362	0.55	0.912	133	318	2	0	6	0	18
1163	551	3	42	32	Veteran	119	534	456	73	128	24	2	2	41	51	22	63	26	0.281	0.371	0.355	0.726	91	162	5	6	4	0	12
1164	496	4	42	29	Peak	123	534	488	72	159	23	5	7	46	6	6	31	65	0.326	0.376	0.436	0.812	111	213	10	2	3	1	13
1165	452	5	42	20	Young	152	614	538	84	148	27	5	15	67	18	7	61	105	0.275	0.352	0.428	0.78	102	230	6	4	5	12	4
1166	512	6	42	30	Veteran	152	663	549	103	165	20	0	34	101	11	5	101	64	0.301	0.407	0.523	0.93	140	287	4	0	9	4	10
1167	535	7	42	36	Senior	134	526	474	60	127	20	2	14	68	19	5	39	88	0.268	0.337	0.407	0.744	92	193	11	0	2	2	10
1168	552	8	42	28	Peak	159	680	601	98	152	29	5	33	99	36	9	71	134	0.253	0.332	0.483	0.815	109	290	3	0	5	6	3
1169	536	14	42	31	Veteran	94	298	266	27	67	9	0	1	29	2	1	20	23	0.252	0.304	0.297	0.601	58	79	1	9	2	0	9
1170	532	7	42	26	Peak	92	287	261	39	74	12	2	9	32	5	2	24	61	0.284	0.345	0.448	0.793	104	117	1	0	1	1	2
1171	498	15	42	30	Veteran	100	136	107	14	27	8	1	2	17	0	0	26	20	0.252	0.404	0.402	0.806	111	43	2	0	1	0	2
1172	515	1	42	24	Young	43	135	120	14	25	6	0	4	21	0	1	12	24	0.208	0.276	0.358	0.634	64	43	0	1	2	0	6
1173	553	3	42	28	Peak	50	122	108	20	28	6	0	0	9	1	0	9	14	0.259	0.311	0.315	0.626	64	34	0	3	2	0	1
1174	554	11	42	35	Senior	82	120	105	23	33	5	0	1	13	4	3	13	24	0.314	0.387	0.39	0.777	103	41	0	1	1	1	2
1175	449	1	42	27	Peak	36	110	95	11	22	1	0	3	11	1	2	10	9	0.232	0.312	0.337	0.649	69	32	2	1	2	4	3
1176	555	12	42	31	Veteran	33	57	52	5	10	0	0	2	8	0	0	5	10	0.192	0.263	0.308	0.571	48	16	0	0	0	0	4
1177	451	14	42	23	Young	11	31	30	2	5	1	0	0	3	0	0	0	4	0.167	0.194	0.2	0.394	3	6	1	0	0	0	1
1178	556	11	42	34	Senior	18	17	17	4	5	0	1	0	1	0	0	0	5	0.294	0.294	0.412	0.706	81	7	0	0	0	0	0
1179	557	3	42	27	Peak	5	8	8	1	2	0	0	0	2	0	0	0	1	0.25	0.25	0.25	0.5	31	2	0	0	0	0	0
1180	558	11	42	29	Peak	3	5	5	0	1	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	5	1	0	0	0	0	0
1181	559	1	42	32	Veteran	3	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1182	310	14	42	27	Peak	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1183	487	13	42	34	Senior	34	94	78	1	5	0	0	0	3	0	0	2	24	0.064	0.086	0.064	0.151	-60	5	0	13	1	0	0
1184	378	13	42	26	Peak	32	69	59	4	9	2	0	0	6	0	0	2	26	0.153	0.175	0.186	0.361	-6	11	0	6	2	0	0
1185	543	13	42	25	Peak	30	69	58	1	5	0	0	0	2	1	0	1	18	0.086	0.102	0.086	0.188	-50	5	0	10	0	0	2
1186	466	13	42	27	Peak	29	69	62	7	13	4	0	1	9	1	0	3	23	0.21	0.246	0.323	0.569	47	20	0	4	0	0	2
1187	542	13	42	28	Peak	16	32	27	2	8	2	0	1	2	0	0	2	8	0.296	0.345	0.481	0.826	112	13	0	3	0	0	0
1188	550	13	42	25	Peak	34	11	10	1	2	0	0	0	1	0	0	0	3	0.2	0.2	0.2	0.4	5	2	0	1	0	0	0
1189	424	13	42	23	Young	5	10	10	1	2	0	0	0	1	0	0	0	3	0.2	0.2	0.2	0.4	5	2	0	0	0	0	0
1190	547	13	42	24	Young	7	9	5	0	0	0	0	0	0	0	0	1	1	0	0.167	0	0.167	-51	0	0	3	0	0	0
1191	506	13	42	27	Peak	5	7	5	2	1	0	0	0	0	0	0	1	4	0.2	0.333	0.2	0.533	44	1	0	1	0	0	0
1192	549	13	42	21	Young	50	5	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
1193	560	13	42	27	Peak	9	4	3	0	1	0	0	0	2	0	0	0	2	0.333	0.333	0.333	0.667	74	1	0	1	0	0	0
1194	561	13	42	31	Veteran	68	3	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
1195	562	13	42	31	Veteran	2	3	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	423	1	0	2	0	0	0
1196	545	13	42	32	Veteran	66	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1197	563	13	42	24	Young	6	1	1	1	1	0	0	0	0	0	0	0	0	1	1	1	2	423	1	0	0	0	0	0
1198	525	13	42	29	Peak	17	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1199	564	13	42	37	Senior	47	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1200	546	13	42	26	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1201	528	13	42	32	Veteran	63	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1202	565	13	42	32	Veteran	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1203	566	13	42	28	Peak	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1204	567	1	41	26	Peak	102	376	346	31	75	13	0	12	35	0	1	29	99	0.217	0.279	0.358	0.638	70	124	1	0	0	1	9
1205	495	2	41	30	Veteran	139	564	507	59	150	20	1	23	87	7	2	47	93	0.296	0.355	0.475	0.83	121	241	3	0	7	1	7
1206	551	3	41	31	Veteran	117	513	452	78	129	24	1	8	43	42	13	45	32	0.285	0.355	0.396	0.751	102	179	5	9	2	0	4
1207	536	4	41	30	Veteran	67	267	237	30	62	9	0	3	29	7	3	17	35	0.262	0.311	0.338	0.649	75	80	1	10	2	0	4
1208	452	5	41	19	Young	77	214	195	18	42	9	0	7	22	3	1	14	37	0.215	0.278	0.369	0.648	73	72	3	2	0	0	4
1209	568	6	41	27	Peak	102	257	237	34	56	12	1	12	34	2	1	17	60	0.236	0.289	0.447	0.736	95	106	1	1	1	2	4
1210	552	7	41	27	Peak	148	617	580	85	162	26	5	30	90	16	10	30	112	0.279	0.316	0.497	0.813	115	288	3	0	4	4	8
1211	512	8	41	29	Peak	90	383	301	52	95	16	1	16	57	18	5	69	30	0.316	0.444	0.535	0.979	162	161	6	0	7	11	4
1212	569	11	41	23	Young	105	271	240	33	58	11	1	2	17	8	2	27	57	0.242	0.317	0.321	0.638	73	77	0	3	1	2	1
1213	570	5	41	35	Senior	72	271	236	28	56	6	1	7	30	1	1	29	37	0.237	0.315	0.36	0.675	81	85	0	0	5	3	10
1214	310	14	41	26	Peak	89	246	220	25	43	7	0	2	14	0	0	15	37	0.195	0.245	0.255	0.499	35	56	0	9	2	0	5
1215	554	11	41	34	Senior	94	235	208	29	62	9	1	7	18	9	5	18	46	0.298	0.358	0.452	0.81	117	94	3	3	3	0	5
1216	496	4	41	28	Peak	51	206	193	11	51	6	0	2	21	7	0	5	23	0.264	0.286	0.326	0.612	65	63	2	3	3	1	7
1217	571	3	41	23	Young	64	190	180	21	51	4	3	0	7	5	2	4	33	0.283	0.299	0.339	0.638	72	61	1	3	2	0	3
1218	532	6	41	25	Peak	55	187	175	23	47	6	4	3	20	4	3	9	42	0.269	0.308	0.4	0.708	89	70	1	2	0	0	2
1219	572	5	41	32	Veteran	40	170	158	22	40	6	1	7	27	1	1	10	24	0.253	0.3	0.437	0.737	95	69	1	0	1	0	5
1220	573	1	41	29	Peak	37	161	149	20	42	5	0	9	30	0	0	11	27	0.282	0.329	0.497	0.826	119	74	0	0	1	4	3
1221	574	2	41	22	Young	49	158	144	14	31	1	0	4	16	0	1	10	30	0.215	0.272	0.306	0.578	55	44	2	0	2	0	5
1222	575	6	41	39	Senior	75	140	127	12	25	2	2	0	6	4	0	12	22	0.197	0.266	0.244	0.51	39	31	0	1	0	1	2
1223	576	1	41	33	Veteran	37	92	81	7	15	5	1	0	5	0	0	7	24	0.185	0.267	0.272	0.538	46	22	2	2	0	1	0
1224	577	11	41	33	Veteran	47	79	76	9	14	4	0	2	4	1	0	3	15	0.184	0.215	0.316	0.531	41	24	0	0	0	0	2
1225	451	14	41	22	Young	29	38	33	1	4	0	1	0	0	0	0	2	8	0.121	0.194	0.182	0.376	2	6	1	2	0	0	0
1226	578	11	41	35	Senior	9	16	13	0	4	1	0	0	1	0	1	3	2	0.308	0.438	0.385	0.822	124	5	0	0	0	0	2
1227	449	1	41	26	Peak	6	14	14	2	4	1	0	0	1	0	0	0	1	0.286	0.286	0.357	0.643	72	5	0	0	0	0	0
1228	515	1	41	23	Young	6	13	13	1	3	0	0	0	0	0	0	0	6	0.231	0.231	0.231	0.462	25	3	0	0	0	0	0
1229	579	11	41	24	Young	5	9	9	1	2	0	0	0	2	0	1	0	2	0.222	0.222	0.222	0.444	20	2	0	0	0	0	0
1230	555	16	41	30	Veteran	6	6	6	1	1	0	0	1	1	0	0	0	2	0.167	0.167	0.667	0.833	111	4	0	0	0	0	0
1231	540	3	41	25	Peak	4	1	1	0	0	0	0	0	0	2	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1232	378	13	41	25	Peak	33	80	72	2	14	2	1	0	3	0	0	2	30	0.194	0.216	0.25	0.466	25	18	0	6	0	0	0
1233	543	13	41	24	Young	25	59	48	3	8	1	0	0	2	0	0	3	6	0.167	0.216	0.188	0.403	10	9	0	8	0	0	0
1234	466	13	41	26	Peak	31	56	49	10	11	0	0	1	2	0	0	2	22	0.224	0.255	0.286	0.541	46	14	0	5	0	0	0
1235	562	13	41	30	Veteran	18	43	34	1	2	1	0	0	0	0	0	2	10	0.059	0.111	0.088	0.199	-45	3	0	7	0	0	0
1236	389	13	41	30	Veteran	15	39	34	3	6	1	1	0	1	0	0	0	16	0.176	0.176	0.265	0.441	17	9	0	5	0	0	0
1237	580	13	41	29	Peak	14	35	29	0	6	1	1	0	2	0	0	2	9	0.207	0.258	0.31	0.568	52	9	0	4	0	0	2
1238	542	13	41	27	Peak	11	30	24	2	2	0	0	0	1	0	0	3	13	0.083	0.185	0.083	0.269	-24	2	0	3	0	0	0
1239	465	13	41	29	Peak	12	22	20	1	1	0	0	1	2	0	0	0	6	0.05	0.05	0.2	0.25	-37	4	0	2	0	0	0
1240	581	13	41	21	Young	9	6	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
1241	582	13	41	33	Veteran	32	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1242	546	13	41	25	Peak	50	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1243	583	13	41	27	Peak	18	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1244	584	13	41	27	Peak	12	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1245	585	13	41	32	Veteran	50	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1246	547	13	41	23	Young	7	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1247	586	13	41	27	Peak	11	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1248	587	13	41	24	Young	6	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1249	563	13	41	23	Young	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1250	588	13	41	23	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1251	589	13	41	31	Veteran	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1252	590	13	41	30	Veteran	58	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1253	591	13	41	33	Veteran	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1254	528	13	41	31	Veteran	34	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1255	592	13	41	28	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1256	593	13	41	25	Peak	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1257	573	1	40	28	Peak	152	633	556	104	201	32	1	40	124	5	1	69	77	0.362	0.431	0.638	1.07	185	355	3	0	5	11	19
1258	495	2	40	29	Peak	162	700	628	86	167	28	0	31	104	15	7	61	116	0.266	0.329	0.459	0.787	110	288	2	0	9	2	10
1259	571	3	40	22	Young	111	380	357	39	104	10	9	4	32	6	5	8	52	0.291	0.305	0.403	0.709	90	144	0	13	2	1	7
1260	594	4	40	35	Senior	144	553	514	49	129	20	3	9	57	2	5	31	120	0.251	0.298	0.354	0.652	76	182	4	3	1	4	13
1261	572	5	40	31	Veteran	160	672	575	89	154	17	0	31	90	8	7	85	112	0.268	0.365	0.459	0.824	121	264	6	0	6	7	18
1262	532	6	40	24	Young	106	317	296	39	73	20	2	4	31	5	5	17	60	0.247	0.286	0.368	0.654	75	109	0	2	2	2	8
1263	595	7	40	40	Senior	105	401	343	52	97	8	3	0	18	15	10	42	40	0.283	0.363	0.324	0.686	88	111	1	15	0	0	1
1264	552	8	40	26	Peak	159	670	616	95	191	42	5	30	87	32	15	44	105	0.31	0.36	0.541	0.901	140	333	6	1	3	7	11
1265	569	7	40	22	Young	80	227	194	31	53	10	2	3	17	9	1	25	44	0.273	0.362	0.392	0.753	104	76	3	3	2	2	1
1266	596	7	40	38	Senior	42	191	175	30	48	6	2	1	18	12	2	13	24	0.274	0.323	0.349	0.671	82	61	0	2	1	0	2
1267	551	3	40	30	Veteran	37	175	154	28	42	4	2	2	16	13	2	14	17	0.273	0.347	0.364	0.71	93	56	4	2	1	1	2
1268	597	6	40	26	Peak	71	140	131	12	32	7	0	6	19	0	0	8	46	0.244	0.293	0.435	0.728	94	57	1	0	0	0	2
1269	576	1	40	32	Veteran	47	113	100	17	22	5	0	3	14	0	0	5	15	0.22	0.275	0.36	0.635	70	36	3	4	1	0	2
1270	598	3	40	33	Veteran	76	97	88	10	20	6	0	1	11	0	0	6	12	0.227	0.274	0.33	0.603	62	29	0	2	1	1	1
1271	555	14	40	29	Peak	28	95	86	8	25	3	0	4	20	0	1	6	16	0.291	0.333	0.465	0.798	113	40	0	2	1	3	2
1272	599	6	40	29	Peak	47	86	74	8	18	3	2	2	5	2	0	12	18	0.243	0.349	0.419	0.768	107	31	0	0	0	1	0
1273	600	6	40	29	Peak	26	85	77	7	23	3	1	1	10	3	2	6	17	0.299	0.349	0.403	0.752	103	31	0	2	0	0	1
1274	310	14	40	25	Peak	40	84	75	3	11	3	1	0	4	0	0	7	20	0.147	0.22	0.213	0.433	18	16	0	2	0	1	2
1275	601	11	40	33	Veteran	46	75	65	6	11	2	0	0	4	0	0	10	12	0.169	0.28	0.2	0.48	33	13	0	0	0	0	1
1276	602	6	40	21	Young	15	46	39	5	5	0	0	1	8	0	0	6	14	0.128	0.239	0.205	0.444	22	8	0	0	1	1	0
1277	603	3	40	24	Young	9	24	20	3	4	1	0	0	1	1	0	4	3	0.2	0.333	0.25	0.583	61	5	0	0	0	1	0
1278	604	3	40	26	Peak	9	16	14	1	2	0	0	0	1	0	1	2	3	0.143	0.25	0.143	0.393	10	2	0	0	0	0	0
1279	605	5	40	32	Veteran	14	14	12	0	1	0	0	0	0	0	0	2	4	0.083	0.214	0.083	0.298	-15	1	0	0	0	0	0
1280	606	11	40	26	Peak	12	10	9	2	4	0	0	0	1	1	0	1	3	0.444	0.5	0.444	0.944	158	4	0	0	0	0	0
1281	607	16	40	41	Senior	9	9	7	0	2	0	0	0	3	0	0	2	2	0.286	0.444	0.286	0.73	103	2	0	0	0	0	2
1282	574	15	40	21	Young	6	8	7	0	1	0	0	0	0	0	0	1	2	0.143	0.25	0.143	0.393	10	1	0	0	0	0	1
1283	608	16	40	32	Veteran	8	8	7	0	1	0	0	0	1	0	0	1	1	0.143	0.25	0.143	0.393	10	1	0	0	0	1	0
1284	609	15	40	25	Peak	3	5	5	1	2	0	0	1	1	0	0	0	1	0.4	0.4	1	1.4	263	5	0	0	0	0	0
1285	465	13	40	28	Peak	30	75	69	3	11	5	0	0	2	0	0	1	32	0.159	0.171	0.232	0.403	8	16	0	5	0	0	0
1286	543	13	40	23	Young	28	67	57	0	5	1	0	0	1	1	0	3	17	0.088	0.133	0.105	0.239	-34	6	0	7	0	0	2
1287	378	13	40	24	Young	31	66	51	5	9	4	0	0	2	0	0	4	21	0.176	0.236	0.255	0.491	33	13	0	11	0	0	0
1288	610	13	40	28	Peak	25	51	41	2	6	1	0	0	1	0	0	0	16	0.146	0.146	0.171	0.317	-14	7	0	10	0	0	0
1289	389	13	40	29	Peak	21	47	42	5	8	1	0	0	1	0	0	0	11	0.19	0.19	0.214	0.405	9	9	0	5	0	0	0
1290	611	13	40	40	Senior	41	42	32	0	3	0	0	0	2	0	0	1	10	0.094	0.121	0.094	0.215	-41	3	0	9	0	0	1
1291	581	13	40	20	Young	14	11	9	1	0	0	0	0	0	1	0	1	5	0	0.1	0	0.1	-70	0	0	1	0	0	0
1292	466	13	40	25	Peak	46	7	7	0	1	0	0	0	0	0	0	0	5	0.143	0.143	0.143	0.286	-22	1	0	0	0	0	0
1293	585	13	40	31	Veteran	58	5	4	0	1	0	0	0	0	0	0	0	0	0.25	0.25	0.25	0.5	36	1	0	1	0	0	0
1294	590	13	40	29	Peak	70	4	4	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
1295	612	13	40	30	Veteran	9	3	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	2	0	0	0
1296	546	13	40	24	Young	43	2	2	0	1	0	0	0	0	0	0	0	0	0.5	0.5	0.5	1	172	1	0	0	0	0	0
1297	547	13	40	22	Young	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1298	613	13	40	23	Young	4	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
1299	591	13	40	32	Veteran	59	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1300	614	13	40	37	Senior	62	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1301	573	1	39	27	Peak	148	631	547	87	184	16	0	36	105	0	3	81	93	0.336	0.422	0.563	0.985	166	308	1	0	2	21	21
1302	495	2	39	28	Peak	154	670	608	84	158	29	1	34	111	8	0	53	121	0.26	0.316	0.479	0.795	113	291	1	0	8	2	27
1303	615	3	39	27	Peak	154	642	581	75	130	12	8	5	41	48	11	53	124	0.224	0.288	0.298	0.585	60	173	1	2	5	7	12
1304	594	4	39	34	Senior	128	487	428	48	109	13	2	10	55	4	2	50	93	0.255	0.333	0.364	0.698	90	156	2	4	3	11	6
1305	616	5	39	31	Veteran	92	358	317	31	84	19	2	6	38	0	0	37	77	0.265	0.341	0.394	0.735	100	125	1	0	3	2	11
1306	532	6	39	23	Young	149	526	478	64	139	26	4	12	59	21	6	41	93	0.291	0.348	0.437	0.785	113	209	2	3	2	1	2
1307	601	7	39	32	Veteran	65	208	188	23	51	10	1	1	11	4	2	17	17	0.271	0.333	0.351	0.684	87	66	1	1	1	1	3
1308	552	8	39	25	Peak	157	673	634	98	188	40	7	24	88	14	7	32	122	0.297	0.334	0.495	0.83	123	314	5	0	2	9	6
1309	569	7	39	21	Young	86	238	211	26	52	11	1	2	18	5	1	24	47	0.246	0.326	0.336	0.663	81	71	1	2	0	0	0
1310	604	10	39	25	Peak	103	221	201	34	41	4	1	0	13	7	2	17	31	0.204	0.266	0.234	0.5	38	47	0	3	0	1	1
1311	617	5	39	38	Senior	45	175	162	14	37	3	1	4	22	0	1	12	32	0.228	0.286	0.333	0.619	68	54	1	0	0	0	4
1312	310	4	39	24	Young	70	146	132	16	26	5	3	0	5	1	0	10	27	0.197	0.254	0.28	0.534	46	37	0	4	0	0	3
1313	595	7	39	39	Senior	34	145	131	22	35	1	1	0	8	8	3	9	22	0.267	0.313	0.29	0.603	66	38	1	1	3	0	1
1314	597	6	39	25	Peak	71	133	110	18	22	2	1	9	25	0	0	21	44	0.2	0.331	0.482	0.813	118	53	1	0	1	1	3
1315	618	7	39	27	Peak	43	121	104	20	22	5	0	2	9	2	1	17	15	0.212	0.322	0.317	0.64	75	33	0	0	0	0	1
1316	498	15	39	27	Peak	80	116	104	7	23	1	0	0	6	0	0	11	22	0.221	0.293	0.231	0.524	45	24	0	0	1	1	4
1317	619	5	39	27	Peak	38	88	83	8	18	4	0	4	17	0	0	5	33	0.217	0.261	0.41	0.671	80	34	0	0	0	0	2
1318	576	1	39	31	Veteran	40	77	64	6	19	6	0	1	11	0	0	6	15	0.297	0.365	0.438	0.802	118	28	2	3	2	2	0
1319	620	6	39	37	Senior	48	57	51	2	6	1	0	0	1	1	1	6	10	0.118	0.211	0.137	0.348	-3	7	0	0	0	0	1
1320	621	6	39	33	Veteran	15	18	15	0	3	0	0	0	1	0	0	3	2	0.2	0.333	0.2	0.533	50	3	0	0	0	0	0
1321	622	1	39	29	Peak	13	16	14	1	4	0	0	0	0	0	0	2	2	0.286	0.375	0.286	0.661	84	4	0	0	0	0	0
1322	623	11	39	33	Veteran	16	15	14	2	4	1	0	0	1	1	0	0	2	0.286	0.333	0.357	0.69	89	5	1	0	0	0	1
1323	624	2	39	26	Peak	10	9	8	2	3	1	0	0	1	0	0	1	3	0.375	0.444	0.5	0.944	157	4	0	0	0	0	0
1324	571	16	39	21	Young	5	2	2	1	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1325	602	16	39	20	Young	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1326	465	13	39	27	Peak	33	87	75	1	10	4	0	0	3	0	0	2	38	0.133	0.156	0.187	0.343	-7	14	0	10	0	0	1
1327	543	13	39	22	Young	33	84	70	6	10	1	0	0	2	0	0	1	25	0.143	0.155	0.157	0.312	-15	11	0	13	0	0	1
1328	610	13	39	27	Peak	35	77	68	1	6	0	0	0	3	0	0	1	28	0.088	0.101	0.088	0.19	-48	6	0	8	0	0	0
1329	389	13	39	28	Peak	30	69	59	3	7	0	0	0	2	0	0	2	22	0.119	0.148	0.119	0.266	-26	7	0	8	0	0	0
1330	611	13	39	39	Senior	28	56	45	3	4	0	0	0	2	0	0	0	14	0.089	0.106	0.089	0.195	-46	4	1	9	1	0	1
1331	378	13	39	23	Young	48	23	19	0	1	0	0	0	2	0	0	1	9	0.053	0.1	0.053	0.153	-57	1	0	3	0	0	0
1332	625	13	39	26	Peak	28	6	6	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1333	585	13	39	30	Veteran	66	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1334	546	13	39	23	Young	73	3	1	0	0	0	0	0	1	0	0	1	0	0	0.333	0	0.333	1	0	0	0	1	0	0
1335	466	13	39	24	Young	20	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1336	590	13	39	28	Peak	58	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1337	591	13	39	31	Veteran	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1338	626	13	39	27	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1339	614	13	39	36	Senior	72	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1340	582	13	39	31	Veteran	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1341	573	1	38	26	Peak	112	475	434	82	150	17	0	32	93	1	0	39	80	0.346	0.4	0.606	1.006	172	263	1	0	1	10	10
1342	495	2	38	27	Peak	143	620	551	83	164	29	3	32	105	4	4	61	115	0.298	0.369	0.535	0.905	145	295	4	0	4	4	14
1343	615	3	38	26	Peak	127	493	425	66	109	18	3	8	37	39	14	63	83	0.256	0.353	0.369	0.722	99	157	1	3	1	4	6
1344	627	4	38	26	Peak	119	511	429	69	123	14	6	4	33	2	7	69	67	0.287	0.389	0.375	0.765	112	161	3	10	0	0	5
1345	617	5	38	37	Senior	97	362	327	24	87	22	2	9	38	0	0	27	69	0.266	0.326	0.428	0.754	106	140	4	0	4	4	11
1346	597	6	38	24	Young	81	244	215	17	51	5	0	8	27	0	0	25	88	0.237	0.32	0.372	0.692	90	80	2	0	2	4	8
1347	628	7	38	30	Veteran	112	436	409	47	114	19	2	6	48	15	7	15	65	0.279	0.306	0.379	0.685	87	155	4	0	7	5	10
1348	552	8	38	24	Young	139	580	536	91	153	23	6	26	88	27	4	33	96	0.285	0.328	0.496	0.824	123	266	4	0	7	4	7
1349	604	14	38	24	Young	88	338	308	41	85	6	1	0	16	20	5	23	39	0.276	0.328	0.302	0.63	75	93	1	6	0	1	3
1350	498	5	38	26	Peak	100	211	181	19	52	10	0	1	14	0	0	28	28	0.287	0.384	0.359	0.743	106	65	1	0	1	4	4
1351	595	7	38	38	Senior	39	178	146	24	40	5	2	0	13	11	1	24	9	0.274	0.368	0.336	0.703	95	49	0	4	4	0	1
1352	532	7	38	22	Young	41	115	103	16	24	2	0	5	13	2	1	10	29	0.233	0.304	0.398	0.702	91	41	1	0	1	2	1
1353	622	1	38	28	Peak	45	103	94	3	14	1	0	2	8	0	0	7	25	0.149	0.216	0.223	0.439	21	21	1	1	0	0	5
1354	629	10	38	30	Veteran	67	92	84	8	18	3	2	1	10	0	0	6	23	0.214	0.272	0.333	0.605	65	28	1	0	1	1	5
1355	630	8	38	27	Peak	21	85	80	6	21	4	1	1	10	0	1	5	17	0.263	0.306	0.375	0.681	86	30	0	0	0	2	3
1356	606	10	38	24	Young	44	66	55	5	11	2	0	0	3	3	0	9	8	0.2	0.313	0.236	0.549	54	13	0	2	0	0	0
1357	631	11	38	36	Senior	54	63	56	6	10	1	1	1	3	0	0	4	14	0.179	0.246	0.286	0.532	46	16	1	2	0	1	1
1358	569	11	38	20	Young	40	46	42	4	10	2	0	0	3	1	0	3	10	0.238	0.283	0.286	0.568	57	12	0	0	1	0	1
1359	576	1	38	30	Veteran	18	44	40	3	8	2	1	1	4	0	0	4	10	0.2	0.273	0.375	0.648	76	15	0	0	0	0	0
1360	623	11	38	32	Veteran	27	33	29	3	8	0	0	0	4	1	1	2	4	0.276	0.323	0.276	0.598	67	8	0	2	0	0	1
1361	602	11	38	19	Young	13	20	20	1	4	0	0	0	0	0	0	0	4	0.2	0.2	0.2	0.4	11	4	0	0	0	0	0
1362	619	15	38	26	Peak	13	17	17	3	4	0	0	3	6	0	0	0	7	0.235	0.235	0.765	1	161	13	0	0	0	0	0
1363	632	12	38	32	Veteran	17	17	17	2	2	0	1	0	3	0	0	0	2	0.118	0.118	0.235	0.353	-6	4	0	0	0	0	0
1364	633	11	38	29	Peak	15	13	11	2	1	0	0	0	1	0	0	2	3	0.091	0.231	0.091	0.322	-7	1	0	0	0	0	0
1365	634	12	38	32	Veteran	9	11	10	0	1	0	0	0	0	0	0	1	3	0.1	0.182	0.1	0.282	-20	1	0	0	0	0	0
1366	635	5	38	28	Peak	7	8	8	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
1367	310	12	38	23	Young	11	5	4	0	1	0	0	0	0	0	0	1	1	0.25	0.4	0.25	0.65	84	1	0	0	0	0	0
1368	636	1	38	27	Peak	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1369	389	13	38	27	Peak	30	78	64	2	11	4	0	0	4	0	0	1	19	0.172	0.185	0.234	0.419	14	15	0	13	0	0	0
1370	465	13	38	26	Peak	28	72	66	2	6	0	0	0	4	0	0	0	33	0.091	0.09	0.091	0.18	-50	6	0	5	1	0	1
1371	543	13	38	21	Young	33	70	62	2	6	0	0	0	1	1	0	1	26	0.097	0.111	0.097	0.208	-42	6	0	7	0	0	0
1372	611	13	38	38	Senior	30	63	55	2	6	0	0	0	2	0	0	3	16	0.109	0.155	0.109	0.264	-26	6	0	5	0	0	1
1373	610	13	38	26	Peak	48	27	24	0	3	1	0	0	0	0	0	1	9	0.125	0.16	0.167	0.327	-10	4	0	2	0	0	1
1374	637	13	38	31	Veteran	13	20	17	0	3	1	0	0	2	0	0	0	7	0.176	0.176	0.235	0.412	12	4	0	3	0	0	0
1375	638	13	38	26	Peak	6	11	8	1	1	0	0	0	0	0	0	1	4	0.125	0.3	0.125	0.425	23	1	1	1	0	0	0
1376	626	13	38	26	Peak	35	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1377	639	13	38	22	Young	8	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2	0	0	0
1378	546	13	38	22	Young	39	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1379	640	13	38	24	Young	16	2	2	0	1	0	0	0	0	0	0	0	0	0.5	0.5	0.5	1	176	1	0	0	0	0	0
1380	614	13	38	35	Senior	59	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1381	378	13	38	22	Young	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1382	585	13	38	29	Peak	24	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1383	641	13	38	35	Senior	6	1	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	452	1	0	0	0	0	0
1384	400	13	38	26	Peak	37	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1385	625	13	38	25	Peak	17	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1386	504	13	38	23	Young	28	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1387	642	13	38	22	Young	11	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1388	643	13	38	24	Young	20	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1389	582	13	38	30	Veteran	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1390	573	1	37	25	Peak	107	441	405	64	129	18	0	24	92	1	3	33	65	0.319	0.37	0.541	0.91	140	219	1	0	2	10	11
1391	495	2	37	26	Peak	111	448	406	51	108	21	1	14	46	2	0	29	53	0.266	0.31	0.426	0.736	95	173	2	0	11	1	13
1392	615	3	37	25	Peak	89	376	320	51	80	11	3	2	33	27	7	54	53	0.25	0.357	0.322	0.679	84	103	0	1	1	0	9
1393	627	4	37	25	Peak	72	289	243	27	51	8	4	1	25	2	1	38	38	0.21	0.314	0.288	0.603	63	70	0	6	2	4	6
1394	617	5	37	36	Senior	113	466	414	68	116	21	1	23	78	0	2	46	80	0.28	0.356	0.502	0.859	127	208	4	0	2	2	12
1395	630	6	37	26	Peak	104	330	306	33	82	14	2	8	49	0	1	17	58	0.268	0.307	0.405	0.712	89	124	2	1	4	2	9
1396	595	7	37	37	Senior	111	496	417	79	131	13	9	8	33	27	8	68	52	0.314	0.411	0.446	0.857	130	186	2	7	2	0	2
1397	552	8	37	23	Young	112	454	434	63	133	27	8	16	56	11	8	16	78	0.306	0.333	0.516	0.849	123	224	2	0	2	5	9
1398	644	6	37	31	Veteran	73	171	153	18	36	6	0	6	18	1	0	14	47	0.235	0.3	0.392	0.692	84	60	1	1	2	4	5
1399	645	4	37	28	Peak	40	132	116	2	26	3	1	0	11	0	0	9	5	0.224	0.291	0.267	0.559	51	31	2	5	0	1	4
1400	631	6	37	35	Senior	82	93	84	16	23	4	0	4	12	1	2	8	13	0.274	0.344	0.464	0.808	114	39	1	0	0	1	2
1401	606	3	37	23	Young	26	86	78	10	22	1	0	3	8	0	0	7	22	0.282	0.341	0.41	0.751	101	32	0	1	0	3	3
1402	629	6	37	29	Peak	58	78	71	9	19	0	0	3	13	0	2	7	7	0.268	0.333	0.394	0.728	94	28	0	0	0	0	1
1403	632	12	37	31	Veteran	52	78	67	14	20	3	0	0	5	1	1	5	8	0.299	0.351	0.343	0.695	88	23	1	4	1	0	1
1404	622	1	37	27	Peak	32	65	64	6	14	2	0	2	6	0	0	1	14	0.219	0.231	0.344	0.575	52	22	0	0	0	0	0
1405	498	5	37	25	Peak	40	49	44	3	15	3	0	0	5	0	0	5	5	0.341	0.408	0.409	0.817	120	18	0	0	0	0	0
1406	635	14	37	27	Peak	7	12	10	2	1	0	0	0	0	0	0	1	4	0.1	0.182	0.1	0.282	-21	1	0	1	0	0	0
1407	576	1	37	29	Peak	3	7	6	2	2	0	0	0	1	0	0	1	3	0.333	0.429	0.333	0.762	108	2	0	0	0	0	0
1408	597	6	37	23	Young	2	6	6	0	2	1	0	0	0	0	0	0	2	0.333	0.333	0.5	0.833	120	3	0	0	0	0	0
1409	389	13	37	26	Peak	24	72	66	4	18	3	0	0	3	0	2	1	18	0.273	0.284	0.318	0.602	61	21	0	5	0	0	1
1410	611	13	37	37	Senior	23	58	50	2	7	1	0	0	3	0	0	1	9	0.14	0.157	0.16	0.317	-15	8	0	7	0	0	0
1411	646	13	37	33	Veteran	25	54	47	2	7	0	0	1	3	0	0	3	18	0.149	0.2	0.213	0.413	11	10	0	4	0	0	1
1412	544	13	37	35	Senior	22	52	44	4	9	0	0	0	4	1	0	2	10	0.205	0.245	0.205	0.449	22	9	1	3	2	0	0
1413	610	13	37	25	Peak	23	51	47	2	3	0	0	0	0	0	0	0	22	0.064	0.064	0.064	0.128	-66	3	0	4	0	0	0
1414	543	13	37	20	Young	21	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1415	466	13	37	22	Young	28	2	1	0	1	0	0	0	1	0	0	0	0	1	1	1	2	440	1	0	1	0	0	0
1416	647	13	37	33	Veteran	32	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1417	400	13	37	25	Peak	17	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1418	648	13	37	31	Veteran	19	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1419	378	13	37	21	Young	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1420	504	13	37	22	Young	24	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1421	649	13	37	27	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1422	650	13	37	28	Peak	15	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1423	651	13	37	34	Senior	37	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1424	614	13	37	34	Senior	38	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1425	573	1	36	24	Young	149	602	547	81	174	24	2	35	112	3	4	46	86	0.318	0.37	0.561	0.932	153	307	3	0	6	6	10
1426	495	2	36	25	Peak	158	658	619	74	153	27	2	23	80	0	1	34	82	0.247	0.287	0.409	0.696	89	253	2	0	3	1	17
1427	652	3	36	30	Veteran	132	504	445	48	123	21	2	2	31	1	3	38	40	0.276	0.333	0.346	0.679	88	154	1	17	3	10	16
1428	627	4	36	24	Young	158	696	590	77	159	21	6	1	62	30	13	71	75	0.269	0.346	0.331	0.676	88	195	2	25	8	7	12
1429	617	5	36	35	Senior	133	522	477	42	106	19	1	12	62	0	2	32	70	0.222	0.271	0.342	0.612	68	163	3	1	9	2	10
1430	653	6	36	31	Veteran	108	422	376	57	88	17	0	14	53	33	5	41	88	0.234	0.308	0.391	0.699	91	147	1	0	4	6	8
1431	595	7	36	36	Senior	156	716	607	80	181	21	10	1	42	39	19	86	69	0.298	0.387	0.371	0.758	110	225	5	14	4	1	6
1432	644	8	36	30	Veteran	143	570	516	61	137	33	1	11	56	4	1	47	147	0.266	0.331	0.397	0.728	100	205	4	2	1	3	8
1433	631	6	36	34	Senior	88	192	172	26	42	6	2	2	14	4	6	11	24	0.244	0.293	0.337	0.63	73	58	2	4	3	2	3
1434	630	11	36	25	Peak	76	188	176	20	39	10	0	8	23	1	0	11	39	0.222	0.266	0.415	0.681	84	73	0	0	1	2	1
1435	654	3	36	28	Peak	107	176	160	20	38	6	1	2	11	3	1	15	15	0.238	0.303	0.325	0.628	73	52	0	1	0	4	4
1436	498	5	36	24	Young	84	127	105	13	38	3	0	4	30	0	1	21	13	0.362	0.465	0.505	0.969	167	53	0	0	1	3	0
1437	655	8	36	31	Veteran	32	120	100	12	14	2	0	5	12	1	0	16	19	0.14	0.267	0.31	0.577	58	31	2	0	2	1	1
1438	622	1	36	26	Peak	50	102	99	6	25	5	0	2	7	0	0	2	11	0.253	0.267	0.364	0.631	72	36	0	1	0	0	0
1439	656	12	36	31	Veteran	73	97	90	13	23	4	0	2	10	2	0	5	17	0.256	0.299	0.367	0.666	82	33	1	0	1	0	2
1440	552	11	36	22	Young	42	91	86	13	25	3	1	4	10	4	1	4	16	0.291	0.322	0.488	0.811	120	42	0	1	0	0	1
1441	597	6	36	22	Young	14	39	37	0	9	0	0	0	0	0	0	2	11	0.243	0.282	0.243	0.525	47	9	0	0	0	0	0
1442	513	11	36	24	Young	30	18	17	6	5	1	0	0	1	1	2	1	4	0.294	0.333	0.353	0.686	89	6	0	0	0	0	1
1443	645	14	36	27	Peak	8	18	18	0	9	1	0	0	3	0	0	0	2	0.5	0.5	0.556	1.056	191	10	0	0	0	0	0
1444	657	8	36	26	Peak	9	9	9	2	2	1	0	1	1	0	0	0	2	0.222	0.222	0.667	0.889	134	6	0	0	0	0	0
1445	544	13	36	34	Senior	34	83	73	11	26	4	0	0	6	0	1	2	5	0.356	0.373	0.411	0.784	116	30	0	8	0	0	1
1446	646	13	36	32	Veteran	33	78	64	6	13	2	0	1	7	0	0	5	32	0.203	0.271	0.281	0.553	53	18	1	8	0	0	1
1447	389	13	36	25	Peak	32	78	70	2	9	1	0	0	2	0	0	0	23	0.129	0.127	0.143	0.27	-26	10	0	7	1	0	1
1448	611	13	36	36	Senior	33	70	60	1	8	2	0	0	2	0	0	1	13	0.133	0.148	0.167	0.314	-14	10	0	9	0	0	2
1449	610	13	36	24	Young	31	69	62	4	10	0	0	0	2	0	1	0	26	0.161	0.161	0.161	0.323	-11	10	0	7	0	0	0
1450	658	13	36	21	Young	66	6	4	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	2	0	0	0
1451	659	13	36	24	Young	41	4	4	0	1	0	0	0	0	0	0	0	3	0.25	0.25	0.25	0.5	38	1	0	0	0	0	0
1452	647	13	36	32	Veteran	54	2	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	177	1	0	0	0	0	0
1453	660	13	36	28	Peak	25	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1454	504	13	36	21	Young	47	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
1455	651	13	36	33	Veteran	62	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1456	661	13	36	25	Peak	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1457	662	13	36	28	Peak	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1458	663	13	36	28	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1459	614	13	36	33	Veteran	35	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1460	664	1	35	33	Veteran	117	389	348	19	77	6	3	3	24	3	2	32	31	0.221	0.286	0.282	0.568	63	98	1	5	3	4	9
1461	495	2	35	24	Young	149	589	545	63	140	30	1	20	88	2	4	37	103	0.257	0.304	0.426	0.73	106	232	2	0	5	3	15
1462	654	3	35	27	Peak	135	380	347	28	94	11	0	0	30	19	7	24	24	0.271	0.318	0.303	0.621	78	105	1	6	2	3	10
1463	627	4	35	23	Young	149	598	534	67	139	20	8	1	30	23	16	57	98	0.26	0.331	0.333	0.664	90	178	0	5	2	4	5
1464	498	5	35	23	Young	132	379	341	30	73	11	0	6	22	0	2	34	49	0.214	0.286	0.299	0.585	67	102	1	0	2	3	9
1465	653	6	35	30	Veteran	76	308	267	21	61	8	1	5	32	19	1	36	71	0.228	0.325	0.322	0.647	85	86	3	0	2	2	9
1466	595	7	35	35	Senior	157	676	553	86	171	14	11	3	39	41	21	95	67	0.309	0.413	0.391	0.803	130	216	3	24	1	2	4
1467	655	8	35	30	Veteran	43	177	156	20	37	8	0	5	25	3	1	19	34	0.237	0.322	0.385	0.707	101	60	1	0	1	4	2
1468	656	12	35	30	Veteran	128	372	317	48	95	21	0	3	36	2	2	47	33	0.3	0.387	0.394	0.781	124	125	0	5	3	1	9
1469	665	10	35	29	Peak	121	313	293	24	70	16	2	4	31	2	4	15	54	0.239	0.272	0.348	0.62	76	102	0	0	5	1	6
1470	631	11	35	33	Veteran	135	304	262	33	70	12	5	6	35	11	5	27	49	0.267	0.334	0.42	0.754	114	110	2	8	5	3	1
1471	622	1	35	25	Peak	69	190	173	11	45	4	0	3	17	0	1	11	21	0.26	0.316	0.335	0.651	86	58	4	0	2	1	8
1472	630	8	35	24	Young	53	156	146	11	32	7	0	3	14	0	0	8	30	0.219	0.258	0.329	0.587	66	48	0	1	1	0	2
1473	551	3	35	25	Peak	49	144	132	9	34	1	0	1	11	6	1	8	9	0.258	0.3	0.288	0.588	69	38	0	4	0	0	3
1474	666	3	35	31	Veteran	47	136	122	7	32	3	1	0	15	2	2	7	22	0.262	0.303	0.303	0.606	74	37	1	4	2	3	0
1475	667	6	35	28	Peak	35	116	104	9	24	5	0	2	8	0	0	10	30	0.231	0.302	0.337	0.638	82	35	1	0	1	0	7
1476	597	8	35	21	Young	29	100	95	6	21	5	0	2	6	0	0	5	34	0.221	0.26	0.337	0.597	69	32	0	0	0	0	2
1477	668	5	35	31	Veteran	51	91	84	10	24	4	0	3	8	0	4	4	11	0.286	0.311	0.44	0.752	112	37	0	1	2	0	3
1478	513	6	35	23	Young	57	79	73	15	17	1	1	0	3	7	3	6	10	0.233	0.291	0.274	0.565	62	20	0	0	0	0	0
1479	573	1	35	23	Young	21	74	69	5	16	3	0	1	7	0	0	4	12	0.232	0.284	0.319	0.603	72	22	1	0	0	0	1
1480	669	11	35	28	Peak	56	66	58	6	11	3	0	1	5	1	2	6	11	0.19	0.277	0.293	0.57	63	17	1	1	0	2	0
1481	645	4	35	26	Peak	10	22	20	1	3	1	0	0	0	0	0	1	2	0.15	0.227	0.2	0.427	23	4	1	0	0	0	0
1482	544	13	35	33	Veteran	35	76	68	6	15	5	0	0	5	1	0	1	10	0.221	0.229	0.294	0.523	48	20	0	6	1	0	0
1483	646	13	35	31	Veteran	34	70	63	3	6	1	0	0	0	0	0	4	26	0.095	0.149	0.111	0.26	-25	7	0	3	0	0	0
1484	611	13	35	35	Senior	32	69	56	3	6	1	0	0	1	0	0	1	9	0.107	0.123	0.125	0.248	-29	7	0	12	0	0	5
1485	389	13	35	24	Young	26	55	50	1	6	0	0	0	2	0	0	0	14	0.12	0.12	0.12	0.24	-31	6	0	5	0	0	0
1486	670	13	35	34	Senior	29	55	49	1	5	0	1	0	3	0	0	1	11	0.102	0.12	0.143	0.263	-25	7	0	5	0	0	1
1487	610	13	35	23	Young	11	29	24	2	3	0	0	0	1	0	0	0	14	0.125	0.125	0.125	0.25	-28	3	0	5	0	0	0
1488	671	13	35	31	Veteran	49	7	7	1	2	0	0	0	0	0	0	0	4	0.286	0.286	0.286	0.571	64	2	0	0	0	0	0
1489	647	13	35	31	Veteran	65	7	3	1	0	0	0	0	0	0	0	2	3	0	0.5	0	0.5	55	0	1	1	0	0	0
1490	660	13	35	27	Peak	60	3	3	0	1	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	91	1	0	0	0	0	0
1491	662	13	35	27	Peak	16	3	2	1	2	0	0	0	1	0	0	0	0	1	1	1	2	473	2	0	1	0	0	0
1492	658	13	35	20	Young	2	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1493	651	13	35	32	Veteran	68	2	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	186	1	0	0	0	0	0
1494	672	13	35	38	Senior	50	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
1495	673	13	35	36	Senior	41	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1496	664	1	34	32	Veteran	119	404	345	39	91	16	2	8	40	4	3	47	32	0.264	0.353	0.391	0.745	112	135	3	5	4	3	5
1497	607	2	34	35	Senior	153	639	576	69	150	23	1	19	96	10	3	55	74	0.26	0.321	0.403	0.724	105	232	0	0	8	17	17
1498	666	3	34	30	Veteran	153	659	594	74	161	22	6	12	58	23	8	49	133	0.271	0.328	0.389	0.717	103	231	3	10	3	4	8
1499	674	4	34	33	Veteran	109	385	350	27	85	6	2	0	27	5	4	22	49	0.243	0.286	0.271	0.557	60	95	1	7	5	5	5
1500	654	5	34	26	Peak	145	485	429	59	123	16	1	3	38	12	3	37	32	0.287	0.349	0.35	0.698	100	150	5	12	2	5	16
1501	667	6	34	27	Peak	137	531	461	54	115	15	1	17	73	6	1	63	116	0.249	0.337	0.397	0.734	108	183	1	0	6	4	9
1502	595	7	34	34	Senior	161	730	615	112	182	13	5	2	38	38	28	108	79	0.296	0.401	0.343	0.744	114	211	1	4	2	4	3
1503	655	8	34	29	Peak	139	588	505	86	134	22	4	28	99	10	8	75	125	0.265	0.361	0.491	0.852	140	248	3	0	5	4	8
1504	675	1	34	37	Senior	101	280	248	22	61	14	0	6	26	2	2	22	26	0.246	0.323	0.375	0.698	98	93	7	1	2	1	11
1505	656	5	34	29	Peak	105	252	216	24	60	11	2	2	20	1	3	25	24	0.278	0.355	0.375	0.73	108	81	1	10	0	0	2
1506	669	11	34	27	Peak	121	197	176	21	36	5	3	1	11	7	1	16	36	0.205	0.268	0.284	0.552	57	50	0	3	2	0	4
1507	629	11	34	26	Peak	94	154	139	18	35	5	1	5	22	1	0	10	23	0.252	0.301	0.41	0.711	100	57	1	1	3	1	5
1508	627	4	34	22	Young	52	140	113	10	22	2	0	0	3	3	2	25	32	0.195	0.345	0.212	0.558	63	24	1	1	0	2	5
1509	676	5	34	27	Peak	41	99	94	4	21	4	0	1	14	0	0	4	21	0.223	0.255	0.298	0.553	57	28	0	1	0	0	2
1510	631	11	34	32	Veteran	58	84	74	12	21	5	1	1	10	0	1	9	21	0.284	0.361	0.419	0.78	122	31	0	1	0	0	0
1511	498	5	34	22	Young	53	58	56	3	15	4	0	1	5	1	0	2	12	0.268	0.293	0.393	0.686	94	22	0	0	0	0	2
1512	677	11	34	26	Peak	42	30	28	3	0	0	0	0	0	0	0	2	9	0	0.067	0	0.067	-79	0	0	0	0	0	0
1513	622	1	34	24	Young	15	16	14	1	3	1	0	0	1	1	0	0	5	0.214	0.25	0.286	0.536	52	4	1	0	1	0	2
1514	495	2	34	23	Young	14	15	14	0	1	1	0	0	1	0	0	1	6	0.071	0.133	0.143	0.276	-21	2	0	0	0	0	0
1515	678	1	34	31	Veteran	9	9	9	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1516	513	11	34	22	Young	16	7	7	3	1	0	0	0	0	1	1	0	0	0.143	0.143	0.143	0.286	-18	1	0	0	0	0	0
1517	679	3	34	24	Young	5	4	3	1	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
1518	680	16	34	33	Veteran	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1519	681	13	34	31	Veteran	34	87	76	2	7	0	0	0	3	0	0	1	11	0.092	0.101	0.092	0.193	-45	7	0	8	2	0	1
1520	389	13	34	23	Young	33	86	77	6	9	1	0	1	9	0	0	1	25	0.117	0.128	0.169	0.297	-16	13	0	8	0	0	1
1521	682	13	34	29	Peak	33	74	67	3	8	2	0	0	3	0	0	0	26	0.119	0.119	0.149	0.269	-24	10	0	7	0	0	1
1522	670	13	34	33	Veteran	31	66	56	2	9	0	0	1	3	0	0	3	10	0.161	0.2	0.214	0.414	18	12	0	6	1	0	1
1523	544	13	34	32	Veteran	21	38	31	6	8	2	0	0	2	1	0	3	8	0.258	0.324	0.323	0.646	85	10	0	4	0	0	0
1524	646	13	34	30	Veteran	48	29	25	4	7	1	0	0	3	0	0	2	14	0.28	0.333	0.32	0.653	87	8	0	2	0	0	0
1525	683	13	34	29	Peak	40	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	1
1526	651	13	34	31	Veteran	55	3	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	186	1	0	1	0	0	0
1527	671	13	34	30	Veteran	60	2	1	0	0	0	0	0	0	0	0	1	1	0	0.5	0	0.5	55	0	0	0	0	0	0
1528	684	13	34	28	Peak	20	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
1529	660	13	34	26	Peak	11	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1530	685	13	34	27	Peak	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1531	647	13	34	30	Veteran	34	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1532	673	13	34	35	Senior	44	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1533	686	13	34	24	Young	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1534	672	13	34	37	Senior	59	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1535	664	1	33	31	Veteran	135	498	435	46	115	25	0	12	66	4	1	55	31	0.264	0.348	0.405	0.753	110	176	3	1	4	14	11
1536	607	2	33	34	Senior	155	645	558	96	184	22	3	26	95	8	5	82	64	0.33	0.414	0.52	0.934	159	290	1	0	4	21	19
1537	666	3	33	29	Peak	143	558	492	62	119	24	3	13	52	38	20	51	126	0.242	0.316	0.382	0.699	94	188	5	5	5	5	8
1538	674	4	33	32	Veteran	141	502	461	38	97	11	3	1	35	6	3	29	65	0.21	0.258	0.254	0.512	44	117	2	6	4	11	5
1539	656	5	33	28	Peak	129	415	357	42	106	14	2	3	36	15	6	46	39	0.297	0.376	0.373	0.748	110	133	1	8	3	6	5
1540	667	6	33	26	Peak	130	526	450	81	133	23	1	27	94	4	3	68	104	0.296	0.389	0.531	0.92	155	239	3	2	3	1	9
1541	687	7	33	33	Veteran	89	359	315	59	82	20	0	8	38	26	2	39	65	0.26	0.345	0.4	0.745	108	126	3	0	2	0	4
1542	688	8	33	33	Veteran	153	618	568	74	151	28	1	20	91	2	5	33	108	0.266	0.307	0.424	0.732	102	241	6	0	11	10	13
1543	654	12	33	25	Peak	137	465	431	61	131	16	4	2	29	15	10	29	31	0.304	0.348	0.374	0.722	102	161	1	3	1	2	8
1544	669	7	33	26	Peak	104	321	276	56	84	9	4	3	24	15	7	37	44	0.304	0.384	0.399	0.783	119	110	0	6	2	2	6
1545	629	6	33	25	Peak	101	151	141	19	40	2	1	5	22	0	1	7	28	0.284	0.311	0.418	0.73	102	59	0	0	3	2	2
1546	689	1	33	40	Senior	62	151	128	13	25	5	0	2	15	1	0	23	29	0.195	0.318	0.281	0.599	69	36	0	0	0	0	8
1547	690	10	33	35	Senior	85	141	132	12	28	3	1	0	13	0	0	6	22	0.212	0.248	0.25	0.498	40	33	1	0	2	1	1
1548	691	3	33	35	Senior	26	113	96	15	26	4	0	1	9	1	0	13	9	0.271	0.364	0.344	0.707	99	33	1	3	0	0	3
1549	677	11	33	25	Peak	106	108	99	15	23	5	3	2	8	3	1	6	27	0.232	0.28	0.404	0.684	89	40	1	1	1	1	1
1550	627	4	33	21	Young	29	63	58	7	9	0	0	1	7	1	0	4	14	0.155	0.21	0.207	0.417	17	12	0	1	0	1	0
1551	536	14	33	22	Young	37	55	51	3	14	1	1	0	2	1	1	4	8	0.275	0.327	0.333	0.661	85	17	0	0	0	1	1
1552	676	5	33	26	Peak	7	24	24	1	3	0	0	0	1	0	0	0	3	0.125	0.125	0.125	0.25	-30	3	0	0	0	0	1
1553	692	11	33	32	Veteran	25	24	24	2	6	1	0	0	2	1	0	0	7	0.25	0.25	0.292	0.542	51	7	0	0	0	0	1
1554	622	1	33	23	Young	10	20	20	2	4	1	0	0	1	0	0	0	2	0.2	0.2	0.25	0.45	25	5	0	0	0	0	0
1555	693	2	33	22	Young	9	11	11	0	1	1	0	0	0	0	0	0	4	0.091	0.091	0.182	0.273	-26	2	0	0	0	0	0
1556	498	5	33	21	Young	5	7	7	0	1	0	0	0	1	0	0	0	3	0.143	0.143	0.143	0.286	-20	1	0	0	0	0	0
1557	694	2	33	25	Peak	6	6	6	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1558	678	1	33	30	Veteran	3	5	5	1	1	0	0	1	2	0	0	0	1	0.2	0.2	0.8	1	166	4	0	0	0	0	0
1559	695	1	33	23	Young	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1560	389	13	33	22	Young	33	92	80	2	10	0	0	0	6	0	0	1	32	0.125	0.145	0.125	0.27	-24	10	1	9	1	0	1
1561	681	13	33	30	Veteran	33	78	71	2	8	0	0	0	2	0	0	2	25	0.113	0.137	0.113	0.25	-29	8	0	5	0	0	1
1562	696	13	33	29	Peak	35	78	69	8	21	5	0	1	11	0	0	1	12	0.304	0.31	0.42	0.73	102	29	0	7	1	0	0
1563	682	13	33	28	Peak	24	54	43	5	7	1	0	0	1	0	0	0	15	0.163	0.2	0.186	0.386	9	8	2	9	0	0	1
1564	697	13	33	25	Peak	12	27	25	1	3	0	0	0	2	0	0	2	8	0.12	0.185	0.12	0.305	-13	3	0	0	0	0	0
1565	683	13	33	28	Peak	32	16	13	1	1	0	0	0	0	0	0	0	8	0.077	0.077	0.077	0.154	-57	1	0	3	0	0	0
1566	671	13	33	29	Peak	66	8	7	0	0	0	0	0	1	0	0	0	5	0	0	0	0	-100	0	0	0	1	0	0
1567	686	13	33	23	Young	22	8	7	2	1	0	0	1	3	0	0	0	1	0.143	0.143	0.571	0.714	90	4	0	1	0	0	0
1568	544	13	33	31	Veteran	4	8	7	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
1569	684	13	33	27	Peak	5	7	7	2	2	1	0	0	0	0	0	0	0	0.286	0.286	0.429	0.714	97	3	0	0	0	0	1
1570	698	13	33	26	Peak	5	7	7	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
1571	699	13	33	35	Senior	29	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1572	564	13	33	28	Peak	11	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1573	673	13	33	34	Senior	45	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1574	700	13	33	31	Veteran	7	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1575	701	13	33	24	Young	8	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1576	651	13	33	30	Veteran	50	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1577	702	13	33	35	Senior	32	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1578	703	13	33	24	Young	14	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1579	704	13	33	29	Peak	20	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1580	705	13	33	24	Young	16	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1581	664	1	32	30	Veteran	133	471	408	40	102	16	0	10	44	0	2	52	29	0.25	0.338	0.363	0.701	102	148	3	7	1	14	4
1582	607	2	32	33	Veteran	160	690	594	66	147	29	1	20	88	7	2	87	85	0.247	0.342	0.401	0.743	113	238	2	0	7	24	11
1583	691	3	32	34	Senior	145	633	549	62	155	18	0	2	36	7	6	71	51	0.282	0.366	0.326	0.692	101	179	4	4	5	2	11
1584	674	4	32	31	Veteran	136	547	506	49	125	27	2	0	29	10	7	29	57	0.247	0.287	0.308	0.596	72	156	0	11	1	2	5
1585	676	5	32	25	Peak	151	581	548	45	134	35	1	12	56	0	0	20	71	0.245	0.272	0.378	0.65	85	207	3	4	6	5	10
1586	687	6	32	32	Veteran	71	292	253	35	54	8	2	9	28	12	3	35	55	0.213	0.312	0.368	0.679	95	93	2	0	2	5	5
1587	692	7	32	31	Veteran	108	371	345	28	63	11	1	1	12	10	7	25	92	0.183	0.237	0.229	0.466	35	79	0	0	1	5	6
1588	706	8	32	29	Peak	105	419	377	41	98	21	1	11	42	2	5	33	78	0.26	0.325	0.408	0.733	110	154	5	0	4	4	8
1589	677	11	32	24	Young	95	286	261	31	70	11	2	3	18	9	3	23	53	0.268	0.326	0.36	0.686	98	94	0	1	1	5	2
1590	690	6	32	34	Senior	94	244	224	18	66	9	2	2	25	1	2	13	16	0.295	0.328	0.379	0.707	103	85	1	0	6	3	7
1591	707	8	32	30	Veteran	67	191	173	21	43	7	1	5	19	6	5	16	28	0.249	0.309	0.387	0.696	99	67	0	0	2	1	2
1592	689	1	32	39	Senior	79	183	151	16	27	7	0	4	16	1	0	30	37	0.179	0.319	0.305	0.623	81	46	1	1	0	3	5
1593	668	4	32	28	Peak	87	163	140	15	32	2	0	1	14	2	0	17	26	0.229	0.31	0.264	0.574	67	37	0	5	1	1	1
1594	654	10	32	24	Young	54	159	147	19	37	6	1	1	15	4	3	11	13	0.252	0.308	0.327	0.635	83	48	1	0	0	0	9
1595	708	6	32	28	Peak	69	120	103	11	30	6	0	4	15	3	2	16	27	0.291	0.387	0.466	0.853	145	48	0	1	0	2	3
1596	709	10	32	26	Peak	49	87	84	9	21	5	1	0	8	3	3	0	15	0.25	0.267	0.333	0.601	72	28	2	1	0	0	1
1597	710	11	32	25	Peak	51	76	71	7	14	4	0	0	3	0	2	4	10	0.197	0.25	0.254	0.504	45	18	1	0	0	0	0
1598	629	11	32	24	Young	32	73	68	8	16	4	1	0	7	1	0	2	9	0.235	0.254	0.324	0.577	65	22	0	2	1	0	1
1599	667	6	32	25	Peak	11	46	38	7	13	2	0	2	8	3	0	7	5	0.342	0.435	0.553	0.987	183	21	0	0	1	0	1
1600	656	12	32	27	Peak	27	34	28	2	7	3	0	0	5	0	1	4	7	0.25	0.333	0.357	0.69	99	10	0	1	1	1	1
1601	711	11	32	25	Peak	12	31	25	4	5	1	0	1	2	0	1	3	6	0.2	0.31	0.36	0.67	93	9	1	1	0	0	0
1602	536	4	32	21	Young	7	11	10	2	2	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	16	2	0	1	0	0	0
1603	695	1	32	22	Young	5	9	8	1	4	0	0	1	2	0	0	1	0	0.5	0.556	0.875	1.431	306	7	0	0	0	0	0
1604	712	5	32	26	Peak	4	6	6	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	2
1605	544	13	32	30	Veteran	35	92	77	4	14	4	1	0	2	0	0	4	25	0.182	0.22	0.26	0.479	38	20	0	10	1	0	0
1606	682	13	32	27	Peak	39	83	70	3	7	1	0	0	6	0	0	2	26	0.1	0.137	0.114	0.251	-27	8	1	10	0	0	2
1607	696	13	32	28	Peak	34	73	66	3	12	2	0	0	6	0	0	0	11	0.182	0.182	0.212	0.394	13	14	0	7	0	0	0
1608	681	13	32	29	Peak	40	40	36	1	3	0	0	0	1	0	0	1	12	0.083	0.108	0.083	0.191	-44	3	0	3	0	0	0
1609	389	13	32	21	Young	16	40	37	4	6	1	0	0	3	0	0	1	14	0.162	0.184	0.189	0.373	8	7	0	2	0	0	0
1610	713	13	32	30	Veteran	19	39	33	1	2	0	0	0	0	0	0	0	14	0.061	0.061	0.061	0.121	-65	2	0	6	0	0	1
1611	686	13	32	22	Young	31	26	21	1	3	1	0	0	3	0	0	0	10	0.143	0.143	0.19	0.333	-5	4	0	5	0	0	0
1612	673	13	32	33	Veteran	56	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1613	714	13	32	35	Senior	6	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1614	683	13	32	27	Peak	5	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1615	715	13	32	29	Peak	23	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1616	716	13	32	30	Veteran	53	1	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	478	1	0	0	0	0	0
1617	671	13	32	28	Peak	44	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1618	699	13	32	34	Senior	41	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1619	717	13	32	25	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1620	701	13	32	23	Young	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1621	664	1	31	29	Peak	130	452	408	29	105	18	0	3	35	0	3	38	31	0.257	0.318	0.324	0.642	87	132	0	3	3	12	14
1622	708	2	31	27	Peak	115	273	242	30	54	13	0	8	34	11	3	23	61	0.223	0.288	0.376	0.664	92	91	1	2	5	3	4
1623	718	3	31	28	Peak	160	687	632	70	175	19	4	5	57	42	12	45	51	0.277	0.325	0.343	0.668	95	217	1	7	2	6	11
1624	674	4	31	30	Veteran	95	354	316	39	63	8	3	1	27	7	5	24	30	0.199	0.259	0.253	0.513	50	80	2	11	1	7	3
1625	676	5	31	24	Young	111	327	309	34	73	14	2	6	33	0	2	10	51	0.236	0.268	0.353	0.62	79	109	4	2	2	1	8
1626	687	6	31	31	Veteran	150	632	542	106	157	28	1	25	76	31	4	73	120	0.29	0.377	0.483	0.86	148	262	7	3	7	14	8
1627	692	7	31	30	Veteran	140	545	494	65	130	23	6	10	64	16	5	44	128	0.263	0.32	0.395	0.715	107	195	0	1	6	5	13
1628	706	8	31	28	Peak	144	577	542	63	150	27	2	20	82	4	1	24	93	0.277	0.314	0.445	0.758	118	241	7	0	4	7	17
1629	668	4	31	27	Peak	116	325	285	31	71	10	2	2	20	4	2	32	45	0.249	0.325	0.319	0.644	88	91	1	5	2	4	9
1630	707	11	31	29	Peak	108	310	281	29	55	11	2	2	17	7	3	25	59	0.196	0.26	0.27	0.53	54	76	0	2	2	0	6
1631	719	5	31	32	Veteran	59	246	215	24	64	7	1	5	35	2	1	25	33	0.298	0.374	0.409	0.783	128	88	3	0	3	2	2
1632	690	10	31	33	Veteran	88	202	191	22	56	8	0	1	25	0	0	7	7	0.293	0.322	0.351	0.673	96	67	2	0	2	3	7
1633	689	1	31	38	Senior	77	198	167	25	42	13	0	7	30	1	0	25	44	0.251	0.338	0.455	0.793	129	76	0	0	6	0	4
1634	712	5	31	25	Peak	65	183	173	15	43	4	1	3	15	1	2	7	32	0.249	0.279	0.335	0.614	78	58	1	0	2	1	4
1635	720	10	31	30	Veteran	95	173	149	14	36	2	0	0	11	2	0	22	13	0.242	0.341	0.255	0.596	76	38	1	0	1	0	4
1636	656	12	31	26	Peak	46	64	59	8	16	1	0	0	4	0	1	1	12	0.271	0.29	0.288	0.578	69	17	1	2	1	0	1
1637	578	11	31	25	Peak	30	45	43	4	5	1	0	0	2	0	1	2	10	0.116	0.156	0.14	0.295	-14	6	0	0	0	0	0
1638	677	11	31	23	Young	37	26	24	7	2	1	0	0	0	3	0	2	10	0.083	0.154	0.125	0.279	-18	3	0	0	0	0	0
1639	629	6	31	23	Young	12	12	11	1	2	0	0	0	0	0	0	1	2	0.182	0.25	0.182	0.432	28	2	0	0	0	0	0
1640	721	1	31	24	Young	5	9	9	1	1	0	0	0	0	0	0	0	3	0.111	0.111	0.111	0.222	-35	1	0	0	0	0	0
1641	544	13	31	29	Peak	36	105	85	1	11	2	1	0	6	0	0	1	18	0.129	0.14	0.176	0.316	-9	15	0	19	0	0	1
1642	713	13	31	29	Peak	36	83	67	4	18	3	0	0	9	0	1	1	26	0.269	0.286	0.313	0.599	74	21	1	13	1	0	0
1643	682	13	31	26	Peak	36	61	56	2	4	2	0	1	3	0	0	0	28	0.071	0.071	0.161	0.232	-34	9	0	5	0	0	0
1644	696	13	31	27	Peak	23	52	44	2	8	2	0	0	1	0	0	1	5	0.182	0.2	0.227	0.427	24	10	0	7	0	0	0
1645	722	13	31	43	Senior	16	30	23	1	2	0	0	0	1	0	0	1	6	0.087	0.125	0.087	0.212	-37	2	0	6	0	0	0
1646	723	13	31	23	Young	11	18	15	0	2	0	0	0	0	0	0	1	6	0.133	0.188	0.133	0.321	-5	2	0	2	0	0	0
1647	714	13	31	34	Senior	9	16	13	0	0	0	0	0	0	0	0	1	9	0	0.071	0	0.071	-77	0	0	2	0	0	0
1648	724	13	31	28	Peak	45	11	10	0	0	0	0	0	0	0	0	1	7	0	0.091	0	0.091	-71	0	0	0	0	0	1
1649	389	13	31	20	Young	9	8	7	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
1650	671	13	31	27	Peak	42	6	5	1	1	0	0	0	0	0	0	0	0	0.2	0.2	0.2	0.4	17	1	0	1	0	0	0
1651	716	13	31	29	Peak	60	6	6	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1652	673	13	31	32	Veteran	50	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1653	725	13	31	25	Peak	4	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1654	726	13	31	27	Peak	4	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	1	0	0	1
1655	508	13	31	31	Veteran	55	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1656	727	13	31	28	Peak	9	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1657	728	13	31	30	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1658	715	13	31	28	Peak	12	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1659	664	1	30	28	Peak	142	523	461	44	122	26	1	6	38	7	4	55	23	0.265	0.343	0.364	0.707	90	168	1	4	2	9	13
1660	708	2	30	26	Peak	129	423	386	48	90	16	3	16	52	8	1	31	85	0.233	0.29	0.415	0.705	86	160	1	3	2	9	7
1661	718	3	30	27	Peak	157	663	610	84	171	22	7	6	46	37	11	44	61	0.28	0.331	0.369	0.7	87	225	3	5	1	5	13
1662	709	4	30	24	Young	76	287	261	31	56	8	1	6	18	11	1	17	62	0.215	0.267	0.322	0.589	57	84	2	6	1	1	4
1663	690	5	30	32	Veteran	101	314	287	27	81	19	1	7	42	2	3	20	19	0.282	0.328	0.429	0.757	101	123	1	3	3	4	6
1664	719	6	30	31	Veteran	152	630	545	89	184	25	2	27	89	9	7	74	85	0.338	0.416	0.539	0.955	154	294	4	0	7	18	16
1665	692	7	30	29	Peak	120	518	476	61	132	26	0	21	69	16	6	31	97	0.277	0.317	0.464	0.782	106	221	1	1	9	2	9
1666	706	8	30	27	Peak	104	428	402	45	118	19	0	16	72	0	5	18	79	0.294	0.327	0.46	0.787	108	185	4	0	4	2	13
1667	668	4	30	26	Peak	108	297	265	32	62	12	3	1	13	9	5	24	43	0.234	0.299	0.313	0.612	64	83	1	6	1	1	2
1668	729	8	30	32	Veteran	115	204	182	17	37	4	0	6	23	5	3	16	28	0.203	0.269	0.324	0.593	58	59	1	3	2	2	4
1669	730	1	30	29	Peak	72	156	144	16	32	7	1	3	16	1	0	6	28	0.222	0.271	0.347	0.618	64	50	4	1	1	2	7
1670	731	5	30	38	Senior	70	151	126	14	24	4	0	2	8	5	1	20	24	0.19	0.299	0.27	0.569	54	34	0	4	1	7	3
1671	712	5	30	24	Young	53	148	136	14	31	8	1	1	11	1	1	9	21	0.228	0.284	0.324	0.607	62	44	2	0	1	2	2
1672	732	4	30	28	Peak	40	146	132	10	29	5	0	0	10	0	1	7	23	0.22	0.27	0.258	0.527	42	34	2	5	0	1	4
1673	733	7	30	26	Peak	48	138	125	18	29	4	2	0	12	2	4	10	32	0.232	0.287	0.296	0.583	57	37	0	2	1	0	3
1674	720	10	30	29	Peak	60	107	98	7	16	4	0	0	9	1	0	8	10	0.163	0.226	0.204	0.43	17	20	0	1	0	0	6
1675	676	5	30	23	Young	35	91	83	5	18	3	0	0	1	0	1	7	22	0.217	0.286	0.253	0.539	46	21	1	0	0	2	0
1676	734	11	30	26	Peak	46	81	69	7	17	2	1	2	10	2	1	10	24	0.246	0.346	0.391	0.737	97	27	1	0	1	2	0
1677	735	11	30	32	Veteran	51	72	67	8	16	3	0	1	4	1	1	3	16	0.239	0.282	0.328	0.61	63	22	1	1	0	0	0
1678	736	5	30	36	Senior	21	69	61	5	11	1	0	3	7	0	0	6	5	0.18	0.265	0.344	0.609	62	21	1	1	0	0	4
1679	578	11	30	24	Young	19	58	54	7	12	3	0	0	4	3	1	3	10	0.222	0.263	0.278	0.541	45	15	0	1	0	0	0
1680	633	11	30	26	Peak	39	42	36	6	4	0	0	0	4	1	1	5	9	0.111	0.214	0.111	0.325	-9	4	0	0	1	0	2
1681	656	12	30	25	Peak	10	37	33	7	9	2	0	0	1	0	0	4	5	0.273	0.351	0.333	0.685	85	11	0	0	0	1	1
1682	737	12	30	24	Young	26	35	35	3	9	1	0	0	2	0	0	0	6	0.257	0.257	0.286	0.543	45	10	0	0	0	0	2
1683	629	6	30	22	Young	17	34	32	2	7	1	0	0	2	0	0	1	7	0.219	0.242	0.25	0.492	32	8	0	1	0	0	0
1684	677	11	30	22	Young	19	18	16	2	3	2	0	0	1	5	0	1	2	0.188	0.222	0.313	0.535	41	5	0	0	1	0	0
1685	738	2	30	32	Veteran	16	16	15	0	1	0	0	0	0	0	0	1	4	0.067	0.125	0.067	0.192	-47	1	0	0	0	0	0
1686	739	1	30	25	Peak	7	6	5	1	3	1	0	0	1	0	0	1	1	0.6	0.667	0.8	1.467	291	4	0	0	0	0	0
1687	740	12	30	27	Peak	3	4	4	1	1	0	0	0	1	0	0	0	1	0.25	0.25	0.25	0.5	35	1	0	0	0	0	0
1688	721	1	30	23	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1689	544	13	30	28	Peak	40	102	90	10	19	5	0	0	7	2	1	2	17	0.211	0.228	0.267	0.495	32	24	0	10	0	0	1
1690	696	13	30	26	Peak	38	100	92	4	13	1	0	1	8	0	0	0	11	0.141	0.141	0.185	0.326	-13	17	0	8	0	0	4
1691	741	13	30	30	Veteran	38	98	83	5	13	0	0	0	5	0	0	7	24	0.157	0.222	0.157	0.379	4	13	0	8	0	0	0
1692	742	13	30	33	Veteran	27	35	30	3	7	1	0	0	2	0	0	2	8	0.233	0.281	0.267	0.548	48	8	0	3	0	0	0
1693	713	13	30	28	Peak	39	26	23	1	7	1	0	0	5	0	0	0	5	0.304	0.304	0.348	0.652	74	8	0	3	0	0	0
1694	723	13	30	22	Young	12	17	14	0	0	0	0	0	0	0	0	2	10	0	0.125	0	0.125	-63	0	0	1	0	0	0
1695	716	13	30	28	Peak	37	14	13	0	1	0	0	0	0	0	0	0	5	0.077	0.077	0.077	0.154	-59	1	0	1	0	0	0
1696	682	13	30	25	Peak	6	10	10	0	2	0	0	0	1	0	0	0	4	0.2	0.2	0.2	0.4	8	2	0	0	0	0	0
1697	724	13	30	27	Peak	53	5	5	0	1	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	8	1	0	0	0	0	0
1698	726	13	30	26	Peak	40	4	4	1	1	0	0	0	0	0	0	0	1	0.25	0.25	0.25	0.5	35	1	0	0	0	0	0
1699	743	13	30	28	Peak	47	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1700	671	13	30	26	Peak	20	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1701	727	13	30	27	Peak	31	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1702	744	13	30	31	Veteran	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1703	745	13	30	27	Peak	15	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1704	746	13	30	23	Young	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1705	747	13	30	38	Senior	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1706	728	13	30	29	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1707	664	1	29	27	Peak	122	449	374	36	94	18	1	5	26	3	3	62	23	0.251	0.359	0.345	0.704	102	129	3	6	4	4	11
1708	748	2	29	29	Peak	115	367	325	33	76	13	0	16	52	2	5	37	60	0.234	0.309	0.422	0.73	106	137	0	1	4	5	5
1709	718	3	29	26	Peak	157	704	633	91	210	43	4	6	56	40	17	59	58	0.332	0.39	0.441	0.83	137	279	3	6	3	5	12
1710	709	4	29	23	Young	109	445	407	47	93	7	0	8	30	48	13	30	78	0.229	0.284	0.305	0.589	68	124	2	5	1	1	6
1711	736	5	29	35	Senior	111	421	379	38	106	17	0	10	60	3	3	30	43	0.28	0.336	0.404	0.739	110	153	5	1	6	4	7
1712	708	6	29	25	Peak	132	465	420	55	95	11	1	23	58	7	1	37	107	0.226	0.291	0.421	0.712	101	177	2	4	2	11	9
1713	633	7	29	25	Peak	128	338	303	35	84	14	2	4	32	9	3	23	57	0.277	0.331	0.376	0.708	101	114	2	9	1	9	8
1714	706	8	29	26	Peak	103	362	330	47	77	11	0	19	53	4	4	27	90	0.233	0.298	0.439	0.738	108	145	4	0	1	3	5
1715	729	7	29	31	Veteran	103	310	283	34	74	13	2	4	29	10	5	22	39	0.261	0.313	0.364	0.677	93	103	1	0	4	3	5
1716	749	2	29	36	Senior	107	298	277	27	71	11	0	2	29	10	4	14	26	0.256	0.294	0.318	0.612	75	88	2	2	3	2	5
1717	750	10	29	37	Senior	105	242	216	21	54	11	0	0	18	7	0	15	23	0.25	0.302	0.301	0.603	73	65	2	7	2	2	6
1718	668	12	29	25	Peak	92	241	216	31	53	9	0	1	15	5	1	22	39	0.245	0.314	0.301	0.615	76	65	0	2	1	1	11
1719	730	1	29	28	Peak	89	233	202	31	53	13	0	4	26	0	0	27	35	0.262	0.351	0.386	0.737	110	78	1	2	1	2	6
1720	738	10	29	31	Veteran	91	222	199	26	52	7	0	9	28	2	2	21	47	0.261	0.333	0.432	0.765	117	86	1	0	1	1	3
1721	676	5	29	22	Young	71	151	147	22	33	5	0	5	19	0	0	2	43	0.224	0.232	0.361	0.592	66	53	0	0	2	1	3
1722	677	7	29	21	Young	57	102	93	15	20	5	1	2	6	4	3	7	29	0.215	0.27	0.355	0.625	77	33	0	2	0	0	0
1723	751	6	29	35	Senior	37	87	78	5	18	2	1	0	6	1	1	7	13	0.231	0.294	0.282	0.576	65	22	0	2	0	0	0
1724	734	8	29	25	Peak	27	82	75	15	19	4	2	6	13	0	1	5	25	0.253	0.305	0.6	0.905	152	45	1	0	1	0	1
1725	719	10	29	30	Veteran	31	64	61	7	15	3	0	5	10	0	0	2	19	0.246	0.281	0.541	0.822	129	33	1	0	0	0	1
1726	737	4	29	23	Young	12	31	27	3	3	1	0	0	4	0	0	2	5	0.111	0.2	0.148	0.348	1	4	1	1	0	1	1
1727	752	2	29	26	Peak	13	22	20	1	5	2	0	0	2	0	0	2	7	0.25	0.318	0.35	0.668	91	7	0	0	0	0	0
1728	753	10	29	27	Peak	13	20	13	2	1	0	0	0	2	0	0	6	6	0.077	0.35	0.077	0.427	29	1	0	0	1	1	0
1729	754	6	29	33	Veteran	19	19	14	0	1	0	0	0	0	0	0	5	2	0.071	0.316	0.071	0.387	17	1	0	0	0	2	1
1730	755	11	29	27	Peak	8	11	11	0	1	0	0	0	0	0	0	0	4	0.091	0.091	0.091	0.182	-48	1	0	0	0	0	1
1731	696	13	29	25	Peak	39	116	109	5	24	4	0	0	7	0	0	0	11	0.22	0.218	0.257	0.475	35	28	0	6	1	0	1
1732	741	13	29	29	Peak	35	86	76	2	8	0	0	1	4	0	0	4	23	0.105	0.16	0.145	0.305	-12	11	1	5	0	0	0
1733	544	13	29	27	Peak	37	82	71	4	17	3	0	0	8	0	1	1	17	0.239	0.25	0.282	0.532	51	20	0	10	0	0	1
1734	742	13	29	32	Veteran	32	57	43	3	3	1	0	0	3	0	0	8	11	0.07	0.216	0.093	0.309	-9	4	0	6	0	0	0
1735	747	13	29	37	Senior	19	21	20	0	5	1	0	0	0	0	0	1	6	0.25	0.286	0.3	0.586	67	6	0	0	0	0	0
1736	716	13	29	27	Peak	24	20	17	0	3	0	0	0	1	0	0	0	6	0.176	0.176	0.176	0.353	1	3	0	3	0	0	0
1737	756	13	29	22	Young	27	14	14	1	3	3	0	0	0	0	0	0	6	0.214	0.214	0.429	0.643	79	6	0	0	0	0	0
1738	724	13	29	26	Peak	12	5	5	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1739	726	13	29	25	Peak	62	5	5	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
1740	745	13	29	26	Peak	60	5	4	1	2	0	0	0	2	0	0	0	1	0.5	0.5	0.5	1	186	2	0	1	0	0	0
1741	757	13	29	22	Young	10	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1742	758	13	29	28	Peak	19	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1743	759	13	29	27	Peak	60	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1744	760	13	29	31	Veteran	15	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1745	664	1	28	26	Peak	141	526	429	47	127	26	3	7	53	3	3	77	21	0.296	0.407	0.42	0.826	136	180	5	11	3	9	10
1746	748	2	28	28	Peak	129	496	438	64	110	19	0	21	66	4	2	54	72	0.251	0.332	0.438	0.77	118	192	0	2	2	4	9
1747	718	3	28	25	Peak	136	551	488	62	136	8	4	1	42	27	11	54	43	0.279	0.352	0.318	0.67	93	155	3	3	3	12	15
1748	709	4	28	22	Young	142	620	562	74	137	24	6	6	39	38	8	38	113	0.244	0.293	0.34	0.633	80	191	3	13	4	4	9
1749	668	5	28	24	Young	77	262	221	24	44	6	0	4	18	5	4	35	42	0.199	0.31	0.281	0.591	70	62	1	4	1	3	4
1750	719	6	28	29	Peak	137	581	487	99	156	22	2	33	87	12	4	83	68	0.32	0.422	0.577	0.999	182	281	6	0	5	14	13
1751	729	7	28	30	Veteran	147	527	482	70	129	26	2	12	50	15	5	33	37	0.268	0.311	0.405	0.716	103	195	1	3	8	2	9
1752	706	8	28	25	Peak	135	564	518	72	152	27	2	28	95	3	10	37	137	0.293	0.342	0.515	0.857	141	267	3	2	4	6	8
1753	761	7	28	24	Young	121	235	213	20	48	7	1	5	19	1	1	19	40	0.225	0.288	0.338	0.626	78	72	0	2	1	4	3
1754	762	11	28	26	Peak	73	230	207	22	55	10	4	0	25	6	3	13	31	0.266	0.308	0.353	0.661	88	73	1	5	3	0	3
1755	749	5	28	35	Senior	57	208	192	20	56	11	0	0	22	6	2	14	21	0.292	0.34	0.349	0.689	97	67	0	2	0	1	0
1756	750	10	28	36	Senior	76	192	169	19	44	6	1	0	13	4	0	18	9	0.26	0.333	0.308	0.641	84	52	1	3	1	1	2
1757	763	1	28	36	Senior	53	131	121	4	25	4	1	0	9	0	1	7	24	0.207	0.246	0.256	0.502	44	31	0	1	2	2	3
1758	764	5	28	33	Veteran	74	130	118	8	29	3	1	0	7	1	0	3	5	0.246	0.27	0.288	0.559	60	34	1	8	0	0	3
1759	736	5	28	34	Senior	34	128	114	20	41	4	0	2	15	7	1	10	11	0.36	0.422	0.447	0.869	148	51	3	0	1	0	3
1760	754	11	28	32	Veteran	79	110	104	8	27	7	0	3	16	0	0	6	27	0.26	0.3	0.413	0.713	102	43	0	0	0	1	2
1761	765	6	28	38	Senior	35	85	79	1	20	5	0	0	8	1	0	5	11	0.253	0.294	0.316	0.611	74	25	0	0	1	0	3
1762	738	10	28	30	Veteran	43	76	63	10	14	2	1	3	13	0	1	8	14	0.222	0.307	0.429	0.735	108	27	1	1	3	2	0
1763	766	2	28	24	Young	24	63	53	4	7	0	0	3	6	0	0	7	10	0.132	0.23	0.302	0.531	50	16	0	2	1	3	0
1764	733	14	28	31	Veteran	9	17	15	1	2	1	0	0	0	0	0	2	4	0.133	0.235	0.2	0.435	26	3	0	0	0	0	0
1765	767	16	28	39	Senior	17	16	15	0	2	1	0	0	2	0	0	1	2	0.133	0.188	0.2	0.388	11	3	0	0	0	1	2
1766	677	11	28	20	Young	23	12	11	6	3	2	0	0	0	1	1	1	3	0.273	0.333	0.455	0.788	123	5	0	0	0	0	1
1767	633	11	28	24	Young	22	9	9	4	3	0	0	0	0	1	0	0	4	0.333	0.333	0.333	0.667	91	3	0	0	0	0	0
1768	708	2	28	24	Young	10	9	9	0	2	0	0	0	2	0	0	0	3	0.222	0.222	0.222	0.444	27	2	0	0	0	0	0
1769	734	11	28	24	Young	6	6	6	0	2	0	0	0	1	0	0	0	2	0.333	0.333	0.333	0.667	91	2	0	0	0	0	0
1770	768	11	28	25	Peak	8	5	4	1	0	0	0	0	1	0	0	0	2	0	0	0	0	-100	0	0	0	1	0	0
1771	721	1	28	21	Young	6	3	1	0	0	0	0	0	0	0	0	1	1	0	0.667	0	0.667	107	0	1	0	0	0	0
1772	696	13	28	24	Young	35	103	97	7	21	2	0	1	7	0	1	0	9	0.216	0.214	0.268	0.482	37	26	0	5	1	0	3
1773	544	13	28	26	Peak	37	91	76	5	15	1	0	0	4	1	0	4	20	0.197	0.247	0.211	0.457	32	16	1	10	0	0	0
1774	747	13	28	36	Senior	34	83	74	1	10	0	0	0	7	0	0	2	28	0.135	0.156	0.135	0.291	-16	10	0	6	1	0	1
1775	741	13	28	28	Peak	25	60	50	4	9	1	0	0	4	0	0	3	13	0.18	0.226	0.2	0.426	23	10	0	7	0	0	1
1776	742	13	28	31	Veteran	32	49	38	5	5	1	0	0	1	0	0	3	6	0.132	0.195	0.158	0.353	2	6	0	8	0	0	1
1777	769	13	28	30	Veteran	36	13	10	0	1	0	0	0	0	0	0	1	4	0.1	0.182	0.1	0.282	-17	1	0	2	0	0	0
1778	745	13	28	25	Peak	64	10	9	0	1	0	0	0	0	0	0	0	3	0.111	0.111	0.111	0.222	-36	1	0	1	0	0	0
1779	770	13	28	32	Veteran	12	9	8	0	1	0	0	0	0	0	0	0	1	0.125	0.125	0.125	0.25	-28	1	0	1	0	0	0
1780	756	13	28	21	Young	16	5	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	2	0	0	0
1781	758	13	28	27	Peak	46	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1782	726	13	28	24	Young	56	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
1783	716	13	28	26	Peak	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1784	724	13	28	25	Peak	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1785	771	13	28	27	Peak	19	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1786	664	1	27	25	Peak	114	399	341	29	93	18	0	5	38	2	1	52	26	0.273	0.367	0.37	0.736	110	126	1	1	4	10	10
1787	748	2	27	27	Peak	88	313	271	33	61	6	0	14	34	8	0	39	37	0.225	0.319	0.402	0.722	104	109	0	0	3	3	6
1788	718	3	27	24	Young	145	622	569	70	138	24	4	1	35	34	19	47	53	0.243	0.3	0.304	0.604	72	173	1	2	3	3	12
1789	668	4	27	23	Young	121	433	374	51	94	16	2	3	34	15	5	45	55	0.251	0.331	0.329	0.66	88	123	2	7	5	4	8
1790	719	5	27	28	Peak	144	594	535	85	162	29	4	16	72	9	8	49	105	0.303	0.358	0.462	0.819	131	247	1	1	8	7	7
1791	706	6	27	24	Young	134	541	495	68	127	27	0	21	65	4	3	40	93	0.257	0.315	0.438	0.753	112	217	3	1	2	6	12
1792	729	7	27	29	Peak	134	477	438	39	110	11	5	11	47	10	9	29	35	0.251	0.295	0.374	0.67	89	164	1	3	6	3	7
1793	761	8	27	23	Young	116	278	254	25	68	14	0	5	28	0	3	19	29	0.268	0.318	0.382	0.7	98	97	1	1	3	0	6
1794	750	4	27	35	Senior	89	298	262	25	70	12	1	0	19	4	4	25	24	0.267	0.329	0.321	0.649	85	84	0	9	2	1	7
1795	762	11	27	25	Peak	73	262	240	24	62	12	2	2	24	7	5	14	38	0.258	0.3	0.35	0.65	84	84	1	4	2	0	6
1796	772	5	27	23	Young	94	254	227	20	59	12	2	2	17	1	0	21	30	0.26	0.321	0.357	0.678	93	81	1	2	3	5	15
1797	708	2	27	23	Young	87	245	217	22	42	2	3	8	17	2	2	24	63	0.194	0.273	0.341	0.614	74	74	0	3	1	3	0
1798	763	1	27	35	Senior	74	221	197	16	45	4	0	4	29	1	2	20	38	0.228	0.295	0.31	0.605	72	61	0	1	3	1	2
1799	754	11	27	31	Veteran	87	200	180	15	44	8	0	4	18	1	4	17	35	0.244	0.313	0.356	0.669	90	64	1	2	0	2	5
1800	764	14	27	32	Veteran	65	142	131	11	36	4	0	0	8	3	1	8	1	0.275	0.317	0.305	0.622	78	40	0	3	0	1	3
1801	766	2	27	23	Young	27	58	49	2	9	3	0	0	6	1	0	6	9	0.184	0.263	0.245	0.508	45	12	0	1	2	2	1
1802	773	10	27	38	Senior	31	57	47	4	9	2	0	1	7	0	0	8	16	0.191	0.309	0.298	0.607	73	14	0	2	0	3	0
1803	774	10	27	31	Veteran	53	57	54	10	10	0	0	1	2	2	1	1	6	0.185	0.2	0.241	0.441	25	13	0	2	0	0	1
1804	755	11	27	25	Peak	34	49	46	7	10	0	0	0	4	3	2	2	4	0.217	0.25	0.217	0.467	34	10	0	1	0	0	1
1805	775	11	27	26	Peak	24	41	37	3	4	1	0	1	4	1	0	4	9	0.108	0.195	0.216	0.411	17	8	0	0	0	1	1
1806	753	1	27	25	Peak	12	28	26	2	5	1	0	0	3	0	0	1	6	0.192	0.214	0.231	0.445	27	6	0	0	1	0	3
1807	776	16	27	39	Senior	22	20	19	0	3	0	0	0	0	0	0	1	2	0.158	0.2	0.158	0.358	3	3	0	0	0	1	0
1808	777	6	27	32	Veteran	16	17	16	1	1	0	0	0	2	0	0	1	7	0.063	0.118	0.063	0.18	-47	1	0	0	0	0	0
1809	778	11	27	24	Young	8	13	12	1	2	0	0	0	0	0	0	1	2	0.167	0.231	0.167	0.397	15	2	0	0	0	0	0
1810	721	1	27	20	Young	4	5	5	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
1811	696	13	27	23	Young	35	89	79	5	15	3	0	3	7	0	0	1	11	0.19	0.2	0.342	0.542	51	27	0	9	0	0	2
1812	716	13	27	25	Peak	28	72	66	5	8	3	0	0	1	0	0	2	26	0.121	0.147	0.167	0.314	-11	11	0	4	0	0	1
1813	742	13	27	30	Veteran	29	68	56	1	8	0	0	0	1	1	0	3	17	0.143	0.186	0.143	0.329	-5	8	0	9	0	0	1
1814	544	13	27	25	Peak	45	62	50	4	10	0	0	0	2	0	0	3	14	0.2	0.259	0.2	0.459	32	10	1	8	0	0	0
1815	741	13	27	27	Peak	32	61	51	0	4	0	0	0	3	0	0	2	15	0.078	0.113	0.078	0.192	-45	4	0	8	0	0	1
1816	747	13	27	35	Senior	30	29	24	2	4	1	0	0	2	0	0	3	9	0.167	0.259	0.208	0.468	35	5	0	2	0	0	1
1817	779	13	27	34	Senior	54	17	14	0	1	0	0	0	1	0	0	0	3	0.071	0.071	0.071	0.143	-59	1	0	3	0	0	0
1818	780	13	27	32	Veteran	58	6	6	0	2	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	90	2	0	0	0	0	1
1819	726	13	27	23	Young	32	6	5	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
1820	745	13	27	24	Young	33	4	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
1821	758	13	27	26	Peak	37	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
1822	781	13	27	24	Young	3	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1823	782	13	27	25	Peak	7	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1824	763	1	26	34	Senior	113	366	335	31	68	8	3	15	41	1	1	23	57	0.203	0.256	0.379	0.635	75	127	1	6	1	4	15
1825	748	2	26	26	Peak	146	543	455	64	102	14	2	20	66	5	1	83	81	0.224	0.343	0.396	0.738	106	180	1	0	4	12	13
1826	718	3	26	23	Young	155	692	623	94	175	18	5	5	41	56	30	58	73	0.281	0.342	0.35	0.692	94	218	1	8	2	3	8
1827	750	4	26	34	Senior	131	502	451	47	111	13	1	1	30	13	9	33	31	0.246	0.302	0.286	0.588	65	129	4	12	2	4	5
1828	719	5	26	27	Peak	160	664	584	87	174	28	6	32	103	23	7	72	110	0.298	0.373	0.531	0.904	150	310	2	0	6	12	11
1829	783	6	26	34	Senior	149	616	531	71	138	25	1	15	73	7	1	72	59	0.26	0.346	0.395	0.742	107	210	2	4	7	2	9
1830	729	7	26	28	Peak	141	524	481	63	135	25	3	17	66	30	11	34	52	0.281	0.328	0.451	0.779	115	217	2	2	5	5	9
1831	706	8	26	23	Young	140	518	465	47	132	17	1	17	65	7	3	43	127	0.284	0.347	0.434	0.782	117	202	5	0	5	4	8
1832	784	7	26	32	Veteran	118	227	192	38	48	6	6	2	8	9	3	27	36	0.25	0.345	0.375	0.72	101	72	2	4	2	2	4
1833	773	8	26	37	Senior	99	208	178	21	44	7	1	6	20	0	0	29	42	0.247	0.351	0.399	0.75	109	71	0	0	1	9	3
1834	753	1	26	24	Young	54	167	148	16	37	8	1	2	22	1	0	11	39	0.25	0.3	0.358	0.658	83	53	0	7	1	0	4
1835	785	11	26	26	Peak	81	164	145	12	32	4	0	2	12	3	2	14	26	0.221	0.288	0.29	0.577	62	42	0	4	1	1	5
1836	668	4	26	22	Young	61	131	115	12	19	4	2	1	2	6	3	12	15	0.165	0.244	0.261	0.505	41	30	0	4	0	1	1
1837	761	11	26	22	Young	42	68	62	5	12	1	1	1	6	0	0	5	14	0.194	0.254	0.29	0.544	52	18	0	1	0	0	1
1838	774	10	26	30	Veteran	64	67	64	6	11	1	1	1	1	0	2	3	8	0.172	0.209	0.266	0.475	32	17	0	0	0	0	1
1839	762	11	26	24	Young	24	61	55	5	13	0	0	2	11	5	0	3	11	0.236	0.267	0.345	0.612	70	19	0	1	2	1	1
1840	776	2	26	38	Senior	47	54	53	4	15	3	0	3	8	0	0	1	11	0.283	0.296	0.509	0.806	121	27	0	0	0	0	2
1841	664	1	26	24	Young	12	40	35	3	11	3	0	1	7	0	0	5	2	0.314	0.4	0.486	0.886	146	17	0	0	0	1	1
1842	721	1	26	19	Young	19	32	31	1	5	2	0	0	0	0	0	0	5	0.161	0.188	0.226	0.413	15	7	1	0	0	0	3
1843	772	5	26	22	Young	13	19	17	1	6	1	0	0	0	0	1	2	2	0.353	0.421	0.412	0.833	134	7	0	0	0	0	0
1844	766	2	26	22	Young	15	13	11	0	2	0	0	0	2	0	0	2	2	0.182	0.308	0.182	0.49	40	2	0	0	0	0	1
1845	786	7	26	20	Young	20	12	11	4	3	1	0	0	1	0	0	1	2	0.273	0.333	0.364	0.697	95	4	0	0	0	0	0
1846	787	1	26	24	Young	7	8	8	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1847	788	12	26	27	Peak	10	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1848	696	13	26	22	Young	36	106	91	5	17	3	0	1	9	0	1	1	23	0.187	0.194	0.253	0.446	24	23	0	12	1	0	2
1849	747	13	26	34	Senior	32	83	71	4	20	2	0	0	3	0	0	2	28	0.282	0.301	0.31	0.611	71	22	0	10	0	0	1
1850	741	13	26	26	Peak	31	78	73	2	7	1	0	1	2	0	1	1	22	0.096	0.12	0.151	0.271	-25	11	1	3	0	0	1
1851	716	13	26	24	Young	34	61	60	2	6	0	0	1	4	0	0	0	21	0.1	0.1	0.15	0.25	-31	9	0	1	0	0	2
1852	779	13	26	33	Veteran	33	57	50	5	8	2	0	0	7	0	0	3	15	0.16	0.208	0.2	0.408	14	10	0	4	0	0	1
1853	742	13	26	29	Peak	9	14	12	1	1	0	0	0	1	0	0	0	0	0.083	0.083	0.083	0.167	-53	1	0	2	0	0	0
1854	771	13	26	25	Peak	46	9	8	1	1	0	0	0	0	0	0	1	3	0.125	0.222	0.125	0.347	-1	1	0	0	0	0	0
1855	789	13	26	26	Peak	46	8	7	0	1	0	0	0	1	0	0	0	3	0.143	0.143	0.143	0.286	-20	1	0	1	0	0	0
1856	760	13	26	28	Peak	42	5	5	1	1	0	0	0	0	0	0	0	3	0.2	0.2	0.2	0.4	12	1	0	0	0	0	0
1857	780	13	26	31	Veteran	40	4	4	0	2	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	180	2	0	0	0	0	0
1858	745	13	26	23	Young	66	4	4	1	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1859	790	13	26	20	Young	2	1	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	461	1	0	0	0	0	0
1860	791	13	26	24	Young	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1861	781	13	26	23	Young	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1862	782	13	26	24	Young	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1863	544	13	26	24	Young	8	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1864	664	1	25	23	Young	129	419	365	31	80	11	1	5	38	2	0	44	31	0.219	0.302	0.296	0.598	70	108	1	5	4	11	8
1865	792	2	25	33	Veteran	162	660	625	66	176	35	1	16	86	5	3	20	86	0.282	0.301	0.418	0.718	101	261	1	5	9	10	10
1866	718	3	25	22	Young	150	699	638	88	180	23	7	4	47	49	19	49	53	0.282	0.335	0.359	0.694	97	229	2	10	0	1	10
1867	750	4	25	33	Veteran	153	576	497	64	136	20	2	3	46	10	2	63	30	0.274	0.357	0.34	0.697	99	169	4	8	4	11	14
1868	793	5	25	34	Senior	150	627	556	62	141	23	1	24	79	3	2	57	99	0.254	0.323	0.428	0.751	111	238	4	2	8	6	16
1869	783	6	25	33	Veteran	147	640	570	80	171	19	1	23	88	17	10	56	62	0.3	0.361	0.458	0.818	130	261	3	2	9	5	7
1870	729	7	25	27	Peak	129	518	461	71	131	23	7	7	50	31	10	39	54	0.284	0.341	0.41	0.751	112	189	4	8	6	2	7
1871	719	8	25	26	Peak	150	652	575	87	175	27	5	32	100	22	5	65	89	0.304	0.378	0.536	0.914	156	308	5	4	3	16	7
1872	773	8	25	36	Senior	104	254	210	37	54	6	4	11	42	2	1	39	51	0.257	0.372	0.481	0.852	140	101	1	1	3	6	3
1873	763	1	25	33	Veteran	82	215	196	13	48	5	2	2	18	0	0	13	28	0.245	0.294	0.321	0.615	74	63	1	4	1	3	3
1874	785	11	25	25	Peak	109	170	143	18	37	8	0	1	12	5	0	21	32	0.259	0.359	0.336	0.695	98	48	2	3	1	3	2
1875	794	8	25	31	Veteran	86	129	115	13	25	5	0	2	8	0	1	12	13	0.217	0.295	0.313	0.608	72	36	1	0	1	3	1
1876	706	10	25	22	Young	49	110	95	10	23	3	0	5	9	2	0	13	23	0.242	0.336	0.432	0.768	116	41	1	0	1	1	1
1877	784	3	25	31	Veteran	66	109	98	13	26	2	1	0	2	2	3	10	12	0.265	0.333	0.306	0.639	82	30	0	1	0	1	2
1878	795	4	25	38	Senior	54	57	50	6	12	1	0	0	4	1	0	5	10	0.24	0.309	0.26	0.569	63	13	0	2	0	1	2
1879	776	16	25	37	Senior	35	34	30	1	9	1	0	1	8	0	0	4	8	0.3	0.382	0.433	0.816	131	13	0	0	0	0	1
1880	767	16	25	36	Senior	21	19	13	1	1	1	0	0	2	0	0	5	2	0.077	0.316	0.154	0.47	37	2	0	0	1	1	0
1881	748	2	25	25	Peak	18	18	17	1	2	1	0	0	1	0	0	1	5	0.118	0.167	0.176	0.343	-3	3	0	0	0	1	0
1882	761	11	25	21	Young	6	5	4	0	0	0	0	0	0	0	0	1	2	0	0.2	0	0.2	-39	0	0	0	0	1	0
1883	796	1	25	23	Young	4	4	4	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
1884	788	12	25	26	Peak	11	3	3	1	1	1	0	0	2	0	0	0	1	0.333	0.333	0.667	1	176	2	0	0	0	0	0
1885	797	11	25	25	Peak	8	3	3	1	1	0	0	0	0	0	0	0	0	0.333	0.333	0.333	0.667	89	1	0	0	0	0	0
1886	787	6	25	23	Young	2	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1887	798	16	25	44	Senior	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1888	696	13	25	21	Young	38	110	95	6	16	0	0	1	9	0	0	3	16	0.168	0.19	0.2	0.39	11	19	0	10	2	0	0
1889	741	13	25	25	Peak	38	97	85	5	12	1	0	0	3	0	0	3	32	0.141	0.167	0.153	0.32	-9	13	0	7	2	0	0
1890	747	13	25	33	Veteran	39	95	77	8	17	3	0	0	3	0	0	2	28	0.221	0.241	0.26	0.5	42	20	0	16	0	0	4
1891	789	13	25	25	Peak	45	46	39	3	7	1	0	0	2	0	0	2	14	0.179	0.22	0.205	0.425	21	8	0	5	0	0	0
1892	779	13	25	32	Veteran	21	41	35	3	3	1	0	1	1	0	0	0	5	0.086	0.086	0.2	0.286	-21	7	0	6	0	0	0
1893	799	13	25	39	Senior	15	9	5	0	1	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	14	1	0	4	0	0	0
1894	791	13	25	23	Young	14	8	8	1	1	1	0	0	1	0	0	0	2	0.125	0.125	0.25	0.375	4	2	0	0	0	0	0
1895	771	13	25	24	Young	66	8	7	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
1896	760	13	25	27	Peak	19	8	7	1	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	1	0	0	0
1897	800	13	25	27	Peak	12	7	6	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	1	0	0	0
1898	745	13	25	22	Young	55	4	3	0	0	0	0	0	0	0	0	1	0	0	0.25	0	0.25	-23	0	0	0	0	0	0
1899	801	13	25	30	Veteran	56	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1900	802	13	25	25	Peak	11	1	1	0	1	0	0	0	0	0	0	0	0	1	1	1	2	469	1	0	0	0	0	0
1901	803	13	25	33	Veteran	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1902	716	13	25	23	Young	29	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1903	664	1	24	22	Young	93	335	290	27	80	10	0	2	29	0	2	36	18	0.276	0.353	0.331	0.685	98	96	1	4	4	8	8
1904	792	2	24	32	Veteran	110	461	431	63	122	23	1	10	64	3	5	25	49	0.283	0.322	0.411	0.732	110	177	1	1	3	6	8
1905	804	3	24	36	Senior	58	243	214	35	44	2	0	5	17	20	2	22	35	0.206	0.289	0.285	0.574	66	61	3	4	0	1	7
1906	750	4	24	32	Veteran	82	290	262	20	61	9	2	0	22	2	1	19	20	0.233	0.284	0.282	0.567	64	74	1	5	3	3	13
1907	793	5	24	33	Veteran	85	359	312	42	90	15	2	13	50	0	2	40	55	0.288	0.372	0.474	0.846	143	148	3	1	3	3	7
1908	783	6	24	32	Veteran	103	438	400	48	128	17	3	9	49	10	7	29	43	0.32	0.363	0.445	0.808	132	178	1	3	5	1	9
1909	729	7	24	26	Peak	99	421	390	48	98	16	4	7	41	18	4	25	42	0.251	0.297	0.367	0.664	91	143	1	3	1	3	6
1910	719	8	24	25	Peak	98	387	347	46	104	17	2	12	48	5	9	34	57	0.3	0.365	0.464	0.829	138	161	2	3	1	3	12
1911	784	14	24	30	Veteran	80	252	218	25	54	4	0	4	24	7	2	25	23	0.248	0.322	0.321	0.644	86	70	0	7	2	2	2
1912	773	8	24	35	Senior	66	156	130	24	41	1	2	11	25	1	2	24	42	0.315	0.423	0.608	1.031	194	79	1	0	1	3	0
1913	718	3	24	21	Young	31	127	119	15	33	2	0	2	9	5	7	7	14	0.277	0.317	0.345	0.662	91	41	0	1	0	1	0
1914	763	1	24	32	Veteran	42	92	86	5	18	2	0	3	7	0	0	6	14	0.209	0.261	0.337	0.598	71	29	0	0	0	0	2
1915	767	10	24	35	Senior	61	90	83	8	17	3	0	3	6	0	1	7	13	0.205	0.267	0.349	0.616	77	29	0	0	0	0	3
1916	785	11	24	24	Young	22	54	47	6	11	0	0	0	0	1	1	6	8	0.234	0.321	0.234	0.555	62	11	0	1	0	0	0
1917	805	2	24	36	Senior	41	44	35	5	7	1	0	1	8	0	0	7	8	0.2	0.318	0.314	0.632	83	11	0	0	2	3	4
1918	806	14	24	32	Veteran	25	39	36	6	9	1	0	0	3	0	0	1	3	0.25	0.282	0.278	0.56	62	10	1	0	1	1	0
1919	706	10	24	21	Young	14	27	25	2	5	3	0	0	1	0	0	1	4	0.2	0.259	0.32	0.579	66	8	1	0	0	0	1
1920	807	4	24	25	Peak	14	21	19	2	2	0	0	0	1	0	0	1	4	0.105	0.143	0.105	0.248	-28	2	0	0	1	0	0
1921	808	8	24	34	Senior	17	16	14	2	2	1	0	0	1	0	0	2	5	0.143	0.25	0.214	0.464	35	3	0	0	0	0	0
1922	761	11	24	20	Young	11	12	12	0	1	0	0	0	0	0	0	0	5	0.083	0.083	0.083	0.167	-52	1	0	0	0	0	0
1923	809	3	24	26	Peak	8	11	9	2	2	0	1	0	1	1	1	2	2	0.222	0.364	0.444	0.808	132	4	0	0	0	0	0
1924	810	11	24	26	Peak	10	9	8	0	1	0	0	0	0	0	0	1	4	0.125	0.222	0.125	0.347	2	1	0	0	0	0	0
1925	797	11	24	24	Young	9	6	6	2	1	1	0	0	0	0	0	0	1	0.167	0.167	0.333	0.5	41	2	0	0	0	0	0
1926	811	1	24	38	Senior	2	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	1
1927	696	13	24	20	Young	25	71	64	3	16	0	1	0	7	0	0	1	9	0.25	0.262	0.281	0.543	57	18	0	6	0	0	0
1928	747	13	24	32	Veteran	22	58	51	3	10	0	0	0	3	0	0	0	18	0.196	0.196	0.196	0.392	13	10	0	7	0	0	0
1929	741	13	24	24	Young	23	53	45	3	10	0	1	0	2	0	0	1	16	0.222	0.239	0.267	0.506	46	12	0	7	0	0	0
1930	779	13	24	31	Veteran	23	53	42	3	8	3	0	0	3	0	0	4	13	0.19	0.261	0.262	0.523	51	11	0	7	0	0	0
1931	803	13	24	32	Veteran	26	21	17	0	1	0	0	0	2	0	0	1	9	0.059	0.158	0.059	0.217	-35	1	1	2	0	0	0
1932	812	13	24	25	Peak	14	13	11	2	2	0	0	0	2	0	0	2	3	0.182	0.308	0.182	0.49	44	2	0	0	0	0	0
1933	769	13	24	26	Peak	34	9	9	1	4	2	0	0	1	0	0	0	2	0.444	0.444	0.667	1.111	217	6	0	0	0	0	0
1934	789	13	24	24	Young	32	6	5	2	2	0	1	0	1	0	0	1	0	0.4	0.5	0.8	1.3	270	4	0	0	0	0	0
1935	716	13	24	22	Young	14	6	6	0	0	0	0	0	0	0	0	0	6	0	0	0	0	-100	0	0	0	0	0	0
1936	800	13	24	26	Peak	5	3	3	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
1937	801	13	24	29	Peak	21	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
1938	771	13	24	23	Young	41	2	1	0	0	0	0	0	0	0	0	1	1	0	0.5	0	0.5	54	0	0	0	0	0	0
1939	745	13	24	21	Young	17	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1940	763	1	23	31	Veteran	96	248	227	20	48	8	0	2	20	2	3	20	54	0.211	0.274	0.273	0.547	54	62	0	0	1	6	7
1941	792	2	23	31	Veteran	163	704	658	78	200	27	1	26	106	6	11	36	67	0.304	0.341	0.467	0.808	125	307	3	3	4	6	17
1942	804	3	23	35	Senior	141	625	553	79	139	15	3	10	49	23	7	58	71	0.251	0.321	0.344	0.665	87	190	1	9	4	2	8
1943	750	4	23	31	Veteran	130	500	466	38	123	23	2	3	34	13	2	18	44	0.264	0.295	0.341	0.636	79	159	3	12	1	0	6
1944	793	5	23	32	Veteran	157	630	551	81	140	25	0	28	77	2	2	69	92	0.254	0.342	0.452	0.794	122	249	5	4	1	5	16
1945	783	6	23	31	Veteran	153	638	579	80	170	26	4	29	97	12	10	43	66	0.294	0.339	0.503	0.842	134	291	3	1	12	4	11
1946	813	7	23	23	Young	128	418	388	55	101	5	4	1	23	40	13	23	27	0.26	0.306	0.302	0.608	72	117	3	3	1	1	2
1947	805	8	23	35	Senior	92	362	311	47	100	13	0	15	55	5	6	41	63	0.322	0.392	0.508	0.9	151	158	1	0	9	1	4
1948	784	10	23	29	Peak	117	332	297	32	79	18	3	1	22	7	9	26	48	0.266	0.326	0.357	0.683	92	106	1	7	1	3	5
1949	767	8	23	34	Senior	109	279	251	31	77	15	2	2	20	3	2	24	29	0.307	0.372	0.406	0.778	119	102	2	2	0	1	3
1950	773	11	23	34	Senior	96	223	194	35	52	7	1	10	25	2	2	28	49	0.268	0.363	0.469	0.832	132	91	1	0	0	3	1
1951	808	1	23	33	Veteran	77	214	172	20	41	3	2	9	29	2	2	38	46	0.238	0.371	0.436	0.807	126	75	0	1	3	11	8
1952	719	7	23	24	Young	75	199	183	27	59	9	1	7	31	2	1	12	31	0.322	0.359	0.497	0.856	138	91	0	1	3	3	2
1953	664	1	23	21	Young	54	152	134	8	34	5	1	1	8	1	0	12	9	0.254	0.313	0.328	0.641	81	44	0	5	1	2	2
1954	814	11	23	28	Peak	80	129	111	6	24	3	0	1	12	0	0	17	26	0.216	0.326	0.27	0.596	69	30	1	0	0	3	3
1955	690	10	23	25	Peak	57	90	84	4	19	2	0	1	5	0	2	2	12	0.226	0.244	0.286	0.53	49	24	0	4	0	1	6
1956	809	3	23	25	Peak	14	21	17	2	4	0	0	0	2	3	0	2	1	0.235	0.316	0.235	0.551	57	4	0	2	0	0	1
1957	806	4	23	31	Veteran	14	9	9	1	2	1	0	0	0	0	0	0	0	0.222	0.222	0.333	0.556	54	3	0	0	0	0	1
1958	798	16	23	42	Senior	7	7	7	0	3	0	0	0	2	0	0	0	0	0.429	0.429	0.429	0.857	142	3	0	0	0	0	1
1959	815	2	23	40	Senior	7	6	6	1	1	0	0	0	0	0	0	0	1	0.167	0.167	0.167	0.333	-6	1	0	0	0	0	0
1960	810	11	23	25	Peak	9	4	3	1	1	0	0	0	0	0	0	1	0	0.333	0.5	0.333	0.833	139	1	0	0	0	0	0
1961	807	16	23	24	Young	8	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1962	779	13	23	30	Veteran	34	81	64	4	4	0	0	1	6	0	0	3	15	0.063	0.104	0.109	0.214	-40	7	0	14	0	0	0
1963	747	13	23	31	Veteran	37	78	68	4	6	1	0	1	3	0	0	6	25	0.088	0.162	0.147	0.309	-12	10	0	4	0	0	0
1964	741	13	23	23	Young	34	76	70	1	17	3	0	0	3	0	0	1	13	0.243	0.254	0.286	0.539	51	20	0	5	0	0	0
1965	722	13	23	35	Senior	32	73	64	3	5	0	0	0	1	0	0	1	19	0.078	0.092	0.078	0.17	-52	5	0	8	0	0	4
1966	803	13	23	31	Veteran	35	61	47	1	6	0	0	0	4	0	0	7	23	0.128	0.241	0.128	0.368	7	6	0	7	0	0	0
1967	812	13	23	24	Young	44	32	27	1	4	0	0	0	3	0	0	2	5	0.148	0.207	0.148	0.355	2	4	0	3	0	0	0
1968	771	13	23	22	Young	59	11	11	1	1	0	0	0	0	0	0	0	3	0.091	0.091	0.091	0.182	-49	1	0	0	0	0	0
1969	769	13	23	25	Peak	62	10	9	0	1	0	0	0	0	0	0	0	4	0.111	0.111	0.111	0.222	-37	1	0	1	0	0	0
1970	816	13	23	29	Peak	21	3	2	0	0	0	0	0	0	0	0	1	0	0	0.333	0	0.333	2	0	0	0	0	0	0
1971	760	13	23	25	Peak	38	3	2	0	0	0	0	0	0	0	0	1	1	0	0.333	0	0.333	2	0	0	0	0	0	0
1972	817	13	23	32	Veteran	19	2	2	0	1	0	0	0	1	0	0	0	1	0.5	0.5	0.5	1	182	1	0	0	0	0	0
1973	696	13	23	19	Young	10	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
1974	801	13	23	28	Peak	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
1975	763	1	22	30	Veteran	105	346	310	33	67	9	2	13	41	1	0	29	68	0.216	0.282	0.384	0.665	81	119	0	5	2	8	12
1976	792	2	22	30	Veteran	162	697	648	92	204	32	1	28	110	3	6	37	59	0.315	0.351	0.497	0.848	130	322	2	4	6	16	25
1977	804	3	22	34	Senior	153	692	582	109	154	20	6	28	73	44	4	97	88	0.265	0.372	0.464	0.836	128	270	4	6	3	4	8
1978	750	4	22	30	Veteran	153	670	627	72	170	26	4	7	56	6	9	24	43	0.271	0.297	0.359	0.656	80	225	1	14	4	2	20
1979	793	5	22	31	Veteran	150	579	487	77	137	20	1	28	81	3	3	86	85	0.281	0.389	0.499	0.888	142	243	2	0	4	8	11
1980	783	6	22	30	Veteran	151	616	554	86	152	29	1	23	88	11	4	56	70	0.274	0.34	0.455	0.795	117	252	1	2	3	0	16
1981	784	7	22	28	Peak	141	460	406	47	104	15	4	5	44	18	5	41	49	0.256	0.33	0.35	0.679	87	142	5	5	3	7	9
1982	805	8	22	34	Senior	68	270	234	41	64	13	1	10	32	6	5	31	50	0.274	0.359	0.466	0.825	125	109	2	0	3	3	5
1983	808	10	22	32	Veteran	122	442	363	54	95	14	0	20	69	1	0	70	68	0.262	0.38	0.466	0.845	131	169	2	2	5	6	10
1984	814	11	22	27	Peak	115	362	315	39	78	11	1	14	45	4	2	43	70	0.248	0.339	0.422	0.761	108	133	1	2	1	4	5
1985	818	11	22	31	Veteran	94	149	142	22	40	7	1	3	14	1	1	7	23	0.282	0.315	0.408	0.724	98	58	0	0	0	1	5
1986	819	12	22	31	Veteran	81	117	112	19	30	5	1	0	2	3	2	4	16	0.268	0.293	0.33	0.623	71	37	0	1	0	1	3
1987	690	10	22	24	Young	33	102	93	9	25	4	1	1	5	1	3	7	12	0.269	0.327	0.366	0.692	90	34	1	1	0	0	5
1988	719	10	22	23	Young	25	64	62	7	15	2	0	2	9	2	0	1	14	0.242	0.25	0.371	0.621	68	23	0	0	1	1	1
1989	820	1	22	33	Veteran	26	51	46	4	6	2	0	0	2	0	1	4	1	0.13	0.2	0.174	0.374	4	8	0	1	0	1	0
1990	798	6	22	41	Senior	47	47	42	1	15	0	0	0	3	0	0	3	4	0.357	0.4	0.357	0.757	110	15	0	2	0	0	2
1991	773	11	22	33	Veteran	12	38	33	2	10	0	0	0	2	0	0	5	6	0.303	0.395	0.303	0.698	95	10	0	0	0	0	1
1992	815	6	22	39	Senior	29	29	27	2	7	1	0	0	2	2	0	2	0	0.259	0.31	0.296	0.607	68	8	0	0	0	0	0
1993	812	13	22	23	Young	40	93	85	6	21	3	0	1	17	0	0	1	20	0.247	0.253	0.318	0.571	56	27	0	6	1	0	4
1994	722	13	22	34	Senior	33	86	77	2	11	0	0	0	3	0	0	1	17	0.143	0.154	0.143	0.297	-18	11	0	8	0	0	1
1995	779	13	22	29	Peak	30	84	75	5	11	3	0	0	5	0	0	1	18	0.147	0.158	0.187	0.345	-6	14	0	8	0	0	0
1996	747	13	22	30	Veteran	39	49	42	4	7	1	0	0	1	0	0	3	19	0.167	0.239	0.19	0.43	20	8	1	3	0	0	1
1997	817	13	22	31	Veteran	42	43	38	1	6	1	0	0	2	0	0	0	9	0.158	0.158	0.184	0.342	-6	7	0	5	0	0	0
1998	741	13	22	22	Young	25	23	19	1	3	0	0	0	3	0	0	0	6	0.158	0.2	0.158	0.358	0	3	1	3	0	0	0
1999	821	13	22	33	Veteran	11	23	22	1	2	1	0	0	2	0	0	0	6	0.091	0.091	0.136	0.227	-38	3	0	1	0	0	0
2000	822	13	22	30	Veteran	11	17	14	1	2	1	0	0	0	0	0	2	2	0.143	0.25	0.214	0.464	29	3	0	1	0	0	0
2001	823	13	22	30	Veteran	30	11	11	0	3	0	0	0	2	0	0	0	2	0.273	0.273	0.273	0.545	51	3	0	0	0	0	1
2002	824	13	22	22	Young	37	9	7	0	1	0	0	0	0	0	1	0	2	0.143	0.143	0.143	0.286	-21	1	0	2	0	0	0
2003	760	13	22	24	Young	17	6	5	1	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	1	0	0	0
2004	825	13	22	26	Peak	4	4	4	1	1	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	38	1	0	0	0	0	0
2005	769	13	22	24	Young	19	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2006	826	13	22	30	Veteran	31	3	3	0	1	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	84	1	0	0	0	0	0
2007	827	13	22	25	Peak	7	2	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	176	1	0	0	0	0	0
2008	801	13	22	27	Peak	17	1	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0
2009	828	13	22	26	Peak	12	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2010	763	1	21	29	Peak	94	266	228	19	44	7	0	4	23	0	0	36	41	0.193	0.301	0.276	0.577	64	63	0	0	2	11	3
2011	792	2	21	29	Peak	162	689	639	89	202	36	9	21	113	10	5	40	70	0.316	0.353	0.499	0.852	138	319	1	1	8	9	17
2012	804	3	21	33	Veteran	151	665	587	93	163	25	4	17	58	45	4	71	70	0.278	0.355	0.421	0.776	118	247	0	6	1	3	9
2013	750	4	21	29	Peak	155	672	625	72	179	32	4	3	46	10	6	30	34	0.286	0.32	0.365	0.684	92	228	2	12	3	8	17
2014	793	5	21	30	Veteran	159	667	555	84	150	32	0	23	84	2	5	96	96	0.27	0.38	0.452	0.833	134	251	7	2	7	9	13
2015	783	6	21	29	Peak	149	579	522	62	137	24	1	11	66	12	3	47	66	0.262	0.325	0.375	0.701	97	196	3	4	3	2	10
2016	829	7	21	30	Veteran	110	377	304	54	71	10	0	0	10	27	8	65	48	0.234	0.371	0.266	0.637	82	81	2	5	1	2	4
2017	805	8	21	33	Veteran	128	531	447	82	132	27	2	29	93	12	5	70	90	0.295	0.382	0.559	0.942	162	250	1	0	13	8	5
2018	773	11	21	32	Veteran	119	397	342	54	87	14	1	19	57	2	4	49	100	0.254	0.348	0.468	0.816	128	160	1	3	2	11	4
2019	830	10	21	30	Veteran	103	276	245	29	64	16	4	13	40	7	4	27	30	0.261	0.335	0.518	0.853	137	127	1	1	2	4	4
2020	808	1	21	31	Veteran	67	235	198	20	47	11	0	7	28	1	2	34	41	0.237	0.35	0.399	0.749	111	79	1	1	1	5	9
2021	811	1	21	35	Senior	41	83	70	5	19	5	0	0	9	0	0	10	5	0.271	0.354	0.343	0.697	97	24	0	1	2	1	0
2022	815	10	21	38	Senior	75	81	77	15	24	1	1	1	11	2	1	3	7	0.312	0.333	0.39	0.723	103	30	0	0	1	0	1
2023	820	1	21	32	Veteran	40	80	75	5	23	1	0	0	6	0	1	5	3	0.307	0.35	0.32	0.67	90	24	0	0	0	1	0
2024	819	12	21	30	Veteran	54	61	55	13	14	1	0	1	5	3	2	4	14	0.255	0.317	0.327	0.644	82	18	1	1	0	1	0
2025	798	16	21	40	Senior	37	37	33	2	10	1	0	0	6	0	0	3	4	0.303	0.361	0.333	0.694	97	11	0	1	0	1	0
2026	831	11	21	25	Peak	16	19	19	2	4	0	0	0	2	1	0	0	4	0.211	0.211	0.211	0.421	19	4	0	0	0	0	0
2027	813	11	21	21	Young	11	13	12	2	3	0	0	0	1	3	1	1	2	0.25	0.308	0.25	0.558	59	3	0	0	0	0	0
2028	719	2	21	22	Young	5	8	8	3	5	0	1	0	1	0	0	0	0	0.625	0.625	0.875	1.5	318	7	0	0	0	0	0
2029	832	11	21	26	Peak	10	5	5	1	2	0	0	0	1	0	0	0	2	0.4	0.4	0.4	0.8	126	2	0	0	0	0	0
2030	833	11	21	20	Young	7	5	4	1	2	0	0	0	1	0	1	0	1	0.5	0.5	0.5	1	183	2	0	1	0	0	0
2031	834	1	21	22	Young	3	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2032	835	4	21	29	Peak	4	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2033	779	13	21	28	Peak	32	92	67	4	10	1	0	0	2	0	0	7	15	0.149	0.23	0.164	0.394	13	11	0	18	0	0	2
2034	722	13	21	33	Veteran	34	90	72	1	6	0	0	0	3	0	0	4	22	0.083	0.132	0.083	0.215	-38	6	0	14	0	0	0
2035	836	13	21	35	Senior	33	81	66	2	8	2	0	0	6	0	0	3	13	0.121	0.159	0.152	0.311	-12	10	0	12	0	0	1
2036	822	13	21	29	Peak	30	78	63	3	9	1	0	0	5	0	0	2	13	0.143	0.169	0.159	0.328	-7	10	0	13	0	0	1
2037	837	13	21	25	Peak	30	62	52	5	7	1	0	0	4	0	0	3	14	0.135	0.179	0.154	0.332	-6	8	0	6	1	0	1
2038	741	13	21	21	Young	23	35	29	3	5	1	0	0	1	0	0	0	7	0.172	0.172	0.207	0.379	6	6	0	6	0	0	0
2039	817	13	21	30	Veteran	55	12	12	1	4	1	0	0	2	0	0	0	2	0.333	0.333	0.417	0.75	110	5	0	0	0	0	0
2040	801	13	21	26	Peak	47	9	8	1	4	1	0	0	2	0	0	0	0	0.5	0.5	0.625	1.125	215	5	0	1	0	0	0
2041	769	13	21	23	Young	18	7	7	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2042	828	13	21	25	Peak	43	6	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	2	0	0	0
2043	789	13	21	21	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2044	827	13	21	24	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2045	825	13	21	25	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2046	838	13	21	28	Peak	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2047	812	13	21	22	Young	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2048	763	1	20	28	Peak	125	438	387	53	99	21	2	16	55	1	3	43	84	0.256	0.334	0.444	0.779	108	172	4	1	3	11	7
2049	792	2	20	28	Peak	162	696	646	91	192	25	3	33	115	9	6	38	90	0.297	0.335	0.498	0.834	122	322	1	7	4	10	15
2050	804	3	20	32	Veteran	134	589	502	85	142	19	5	11	53	47	12	73	69	0.283	0.372	0.406	0.779	110	204	2	6	6	3	3
2051	750	4	20	28	Peak	153	674	634	84	176	28	6	4	51	16	7	24	43	0.278	0.304	0.36	0.664	79	228	2	9	4	1	23
2052	793	5	20	29	Peak	153	669	564	77	136	22	3	30	110	3	4	93	106	0.241	0.347	0.45	0.797	114	254	2	3	7	6	11
2053	783	6	20	28	Peak	153	604	533	86	155	26	1	30	86	2	6	58	89	0.291	0.364	0.512	0.876	134	273	6	2	5	6	9
2054	773	7	20	31	Veteran	118	456	392	47	90	13	1	15	48	1	4	60	109	0.23	0.33	0.383	0.713	92	150	0	2	2	6	4
2055	805	8	20	32	Veteran	148	603	488	104	150	27	4	32	87	7	5	104	76	0.307	0.427	0.576	1.003	168	281	3	1	7	11	5
2056	830	10	20	29	Peak	75	180	169	28	45	7	0	6	21	4	0	10	21	0.266	0.306	0.414	0.72	92	70	0	0	1	0	3
2057	831	7	20	24	Young	83	175	169	16	43	8	0	1	13	13	5	5	22	0.254	0.28	0.32	0.6	62	54	1	0	0	1	3
2058	820	1	20	31	Veteran	60	171	156	18	42	4	0	3	11	1	0	11	11	0.269	0.314	0.353	0.666	80	55	0	2	2	4	3
2059	819	3	20	29	Peak	67	143	137	21	41	6	1	1	10	3	4	2	20	0.299	0.309	0.38	0.689	85	52	0	4	0	0	1
2060	839	11	20	23	Young	79	124	108	10	26	4	1	2	11	2	1	15	28	0.241	0.331	0.352	0.682	85	38	0	0	1	1	0
2061	840	15	20	29	Peak	61	69	66	3	11	1	0	1	5	0	1	3	10	0.167	0.203	0.227	0.43	16	15	0	0	0	2	2
2062	841	2	20	35	Senior	50	53	41	0	10	0	0	0	5	0	0	12	9	0.244	0.415	0.244	0.659	83	10	0	0	0	1	0
2063	798	6	20	39	Senior	49	50	38	5	15	1	0	1	4	1	1	10	0	0.395	0.521	0.5	1.021	178	19	0	2	0	3	1
2064	815	11	20	37	Senior	24	48	48	3	15	2	0	0	4	0	0	0	6	0.313	0.313	0.354	0.667	80	17	0	0	0	0	0
2065	811	10	20	34	Senior	18	30	27	3	7	0	0	0	4	0	1	2	5	0.259	0.31	0.259	0.57	56	7	0	1	0	1	2
2066	832	11	20	25	Peak	29	25	23	2	4	0	0	0	1	1	1	2	6	0.174	0.24	0.174	0.414	14	4	0	0	0	0	1
2067	774	14	20	24	Young	15	22	18	6	5	0	0	0	0	2	0	3	2	0.278	0.381	0.278	0.659	82	5	0	1	0	0	1
2068	842	4	20	25	Peak	10	20	19	4	7	0	0	0	1	1	1	0	2	0.368	0.4	0.368	0.768	109	7	1	0	0	0	1
2069	843	11	20	21	Young	11	11	10	1	3	0	1	0	2	0	0	1	4	0.3	0.364	0.5	0.864	131	5	0	0	0	0	1
2070	844	1	20	23	Young	2	3	3	0	1	0	0	0	0	0	0	0	0	0.333	0.333	0.333	0.667	81	1	0	0	0	0	0
2071	722	13	20	32	Veteran	33	91	73	3	11	2	0	0	8	0	0	8	21	0.151	0.235	0.178	0.413	13	13	0	10	0	0	2
2072	836	13	20	34	Senior	31	89	79	3	14	1	0	1	4	0	0	3	14	0.177	0.205	0.228	0.433	17	18	0	6	1	0	0
2073	837	13	20	24	Young	32	84	78	8	18	3	0	3	12	0	0	0	13	0.231	0.231	0.385	0.615	63	30	0	6	0	0	3
2074	779	13	20	27	Peak	32	83	67	1	11	2	0	0	3	0	0	2	15	0.164	0.188	0.194	0.382	4	13	0	14	0	0	0
2075	822	13	20	28	Peak	32	81	71	4	10	1	0	0	2	0	0	5	11	0.141	0.205	0.155	0.36	-1	11	1	3	1	0	2
2076	817	13	20	29	Peak	70	23	22	1	4	0	0	1	2	0	0	1	2	0.182	0.217	0.318	0.536	43	7	0	0	0	0	0
2077	827	13	20	23	Young	5	7	6	1	0	0	0	0	1	0	0	0	4	0	0	0	0	-100	0	0	1	0	0	0
2078	838	13	20	27	Peak	49	7	7	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2079	845	13	20	27	Peak	45	5	4	1	1	0	0	0	0	0	0	0	1	0.25	0.25	0.25	0.5	36	1	0	1	0	0	0
2080	846	13	20	26	Peak	25	2	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	1	0	0	0
2081	847	13	20	36	Senior	12	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2082	769	13	20	22	Young	6	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2083	828	13	20	24	Young	25	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2084	848	13	20	27	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2085	763	1	19	27	Peak	117	399	359	42	77	11	3	11	35	3	1	30	84	0.214	0.286	0.354	0.64	83	127	7	1	2	3	5
2086	792	2	19	27	Peak	162	696	631	85	200	37	4	13	80	19	8	50	69	0.317	0.363	0.45	0.813	133	284	1	5	9	11	20
2087	804	3	19	31	Veteran	117	491	427	72	103	17	7	4	20	63	10	56	49	0.241	0.333	0.342	0.675	94	146	4	2	2	1	8
2088	750	4	19	27	Peak	149	590	554	53	152	17	3	5	65	15	5	21	46	0.274	0.301	0.343	0.644	85	190	3	6	6	9	14
2089	793	5	19	28	Peak	145	600	502	69	139	18	3	23	80	0	4	89	74	0.277	0.386	0.462	0.848	143	232	3	2	4	13	11
2090	849	6	19	26	Peak	154	680	642	76	193	28	4	7	60	28	9	26	26	0.301	0.326	0.389	0.716	105	250	1	6	5	6	8
2091	783	7	19	27	Peak	112	421	384	36	93	13	0	4	39	2	4	31	54	0.242	0.298	0.307	0.605	74	118	1	1	4	3	15
2092	805	8	19	31	Veteran	65	245	225	35	63	8	4	10	26	2	0	18	42	0.28	0.335	0.484	0.819	133	109	1	0	1	4	4
2093	850	3	19	31	Veteran	84	292	266	18	64	8	1	0	18	2	3	15	22	0.241	0.28	0.278	0.558	61	74	0	10	1	1	5
2094	808	8	19	29	Peak	54	213	185	24	41	7	0	6	18	2	0	25	41	0.222	0.318	0.357	0.674	93	66	1	2	0	1	3
2095	830	7	19	28	Peak	53	177	158	17	42	7	1	0	14	1	2	16	13	0.266	0.33	0.323	0.652	88	51	0	1	2	2	7
2096	840	5	19	28	Peak	83	128	118	8	27	4	0	3	17	0	0	8	19	0.229	0.273	0.339	0.612	75	40	0	0	2	2	7
2097	839	8	19	22	Young	44	112	91	4	14	2	1	0	8	4	1	16	14	0.154	0.291	0.198	0.489	42	18	2	2	1	1	0
2098	851	11	19	24	Young	49	98	88	8	16	2	1	4	14	0	2	9	11	0.182	0.258	0.364	0.621	77	32	0	1	0	3	1
2099	852	1	19	30	Veteran	36	90	66	10	14	0	0	0	9	0	0	19	12	0.212	0.4	0.212	0.612	80	14	3	0	2	2	1
2100	853	7	19	30	Veteran	23	76	68	3	15	3	0	0	5	0	1	8	12	0.221	0.303	0.265	0.567	64	18	0	0	0	4	0
2101	798	6	19	38	Senior	50	60	52	1	15	3	0	0	13	0	0	7	5	0.288	0.367	0.346	0.713	106	18	0	0	1	3	1
2102	844	1	19	22	Young	23	56	52	4	12	2	0	0	2	0	0	3	7	0.231	0.273	0.269	0.542	56	14	0	1	0	1	0
2103	854	12	19	26	Peak	36	53	47	7	6	0	0	0	1	0	1	6	6	0.128	0.226	0.128	0.354	4	6	0	0	0	0	3
2104	831	11	19	23	Young	25	51	46	9	11	2	0	0	5	3	2	3	8	0.239	0.3	0.283	0.583	68	13	1	1	0	0	1
2105	855	8	19	28	Peak	23	47	45	1	6	0	1	0	2	0	0	2	9	0.133	0.17	0.178	0.348	0	8	0	0	0	1	1
2106	289	12	19	23	Young	22	47	41	4	7	2	1	0	2	0	1	4	9	0.171	0.244	0.268	0.513	47	11	0	2	0	0	2
2107	832	11	19	24	Young	23	31	30	2	4	1	0	0	0	0	1	1	6	0.133	0.161	0.167	0.328	-6	5	0	0	0	0	0
2108	856	16	19	28	Peak	18	17	15	0	2	0	0	0	2	0	0	1	2	0.133	0.176	0.133	0.31	-10	2	0	0	1	0	0
2109	857	1	19	30	Veteran	6	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2110	722	13	19	31	Veteran	35	99	84	2	7	1	0	0	3	0	0	6	19	0.083	0.144	0.095	0.24	-30	8	0	9	0	0	3
2111	779	13	19	26	Peak	33	81	62	2	6	1	0	0	4	0	0	3	28	0.097	0.147	0.113	0.26	-25	7	1	13	2	0	0
2112	822	13	19	27	Peak	34	76	60	5	9	0	0	0	2	0	0	7	15	0.15	0.235	0.15	0.385	13	9	0	8	1	0	4
2113	836	13	19	33	Veteran	31	76	64	3	7	1	0	0	3	0	0	2	10	0.109	0.136	0.125	0.261	-25	8	0	10	0	0	4
2114	837	13	19	23	Young	27	73	65	6	20	3	0	1	9	0	0	1	12	0.308	0.318	0.4	0.718	105	26	0	7	0	0	1
2115	817	13	19	28	Peak	77	21	21	1	6	2	0	0	4	0	0	0	5	0.286	0.286	0.381	0.667	90	8	0	0	0	0	0
2116	706	13	19	33	Veteran	30	9	5	1	0	0	0	0	1	0	0	3	2	0	0.333	0	0.333	2	0	0	0	1	0	0
2117	847	13	19	35	Senior	17	6	6	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
2118	827	13	19	22	Young	4	5	5	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
2119	846	13	19	25	Peak	31	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2120	845	13	19	26	Peak	24	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
2121	812	13	19	20	Young	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2122	763	1	18	26	Peak	135	515	452	34	103	16	1	12	54	2	5	40	75	0.228	0.298	0.347	0.646	83	157	8	9	6	7	15
2123	792	2	18	26	Peak	160	704	659	85	210	38	6	18	95	11	2	33	66	0.319	0.351	0.476	0.827	134	314	3	3	6	6	19
2124	804	3	18	30	Veteran	155	726	618	108	162	24	6	8	41	77	12	91	93	0.262	0.358	0.359	0.717	104	222	2	13	2	3	4
2125	750	4	18	26	Peak	84	282	252	24	52	9	2	0	14	5	0	23	28	0.206	0.277	0.258	0.535	53	65	2	4	1	6	6
2126	793	5	18	27	Peak	158	662	566	72	160	29	2	25	101	5	2	78	74	0.283	0.372	0.473	0.845	139	268	7	3	8	15	15
2127	849	6	18	25	Peak	92	315	288	30	70	11	2	6	31	8	3	17	15	0.243	0.286	0.358	0.644	82	103	2	4	4	7	11
2128	858	7	18	33	Veteran	130	529	412	80	102	16	0	18	58	7	3	110	77	0.248	0.403	0.417	0.821	134	172	1	1	5	2	8
2129	859	8	18	28	Peak	124	432	373	46	98	15	2	9	46	5	5	49	43	0.263	0.345	0.386	0.731	108	144	0	6	4	11	2
2130	830	10	18	27	Peak	101	336	306	44	96	11	5	7	40	5	9	22	29	0.314	0.356	0.451	0.807	129	138	0	5	3	1	10
2131	808	10	18	28	Peak	66	241	202	15	42	2	1	5	23	2	1	35	47	0.208	0.325	0.302	0.627	79	61	1	1	2	5	4
2132	839	11	18	21	Young	71	238	204	20	43	7	0	6	22	1	2	26	51	0.211	0.303	0.333	0.637	81	68	2	4	2	4	1
2133	854	4	18	25	Peak	85	188	170	18	38	9	0	0	12	3	2	18	22	0.224	0.298	0.276	0.574	64	47	0	0	0	3	8
2134	860	11	18	28	Peak	62	157	145	14	28	8	0	1	5	4	3	11	29	0.193	0.25	0.269	0.519	48	39	0	1	0	1	3
2135	851	11	18	23	Young	53	101	94	8	25	3	1	0	5	1	1	7	6	0.266	0.317	0.319	0.636	81	30	0	0	0	0	0
2136	289	4	18	22	Young	63	99	87	10	16	2	1	0	2	1	2	11	15	0.184	0.276	0.23	0.505	45	20	0	1	0	0	0
2137	798	6	18	37	Senior	52	59	49	3	13	1	0	0	10	0	0	5	1	0.265	0.357	0.286	0.643	85	14	2	3	0	0	3
2138	861	15	18	33	Veteran	39	53	46	4	11	1	1	2	14	0	0	7	12	0.239	0.34	0.435	0.774	119	20	0	0	0	0	1
2139	855	6	18	27	Peak	48	47	43	2	11	4	0	0	2	0	0	3	9	0.256	0.298	0.349	0.647	84	15	0	0	1	1	0
2140	862	10	18	22	Young	13	37	36	2	9	2	1	0	1	1	0	1	3	0.25	0.27	0.361	0.631	78	13	0	0	0	0	1
2141	863	16	18	31	Veteran	15	15	15	0	2	0	0	0	2	0	0	0	3	0.133	0.133	0.133	0.267	-24	2	0	0	0	0	2
2142	864	10	18	27	Peak	8	11	10	2	2	1	0	0	0	0	0	1	2	0.2	0.273	0.3	0.573	63	3	0	0	0	0	1
2143	832	11	18	23	Young	9	6	6	3	2	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	90	2	0	0	0	0	0
2144	865	16	18	23	Young	4	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2145	821	13	18	29	Peak	44	123	108	8	17	4	0	0	9	0	0	7	25	0.157	0.212	0.194	0.406	16	21	1	5	2	0	2
2146	822	13	18	26	Peak	38	102	87	5	17	0	0	0	6	0	0	5	28	0.195	0.239	0.195	0.435	25	17	0	10	0	0	3
2147	722	13	18	30	Veteran	35	96	80	4	11	1	0	0	3	0	0	4	20	0.138	0.179	0.15	0.329	-6	12	0	12	0	0	3
2148	779	13	18	25	Peak	31	87	70	6	9	3	0	1	7	0	0	4	27	0.129	0.176	0.214	0.39	11	15	0	13	0	0	1
2149	837	13	18	22	Young	26	30	28	0	2	0	0	0	1	0	0	1	6	0.071	0.103	0.071	0.175	-50	2	0	1	0	0	0
2150	847	13	18	34	Senior	22	19	16	0	0	0	0	0	1	0	0	2	8	0	0.105	0	0.105	-68	0	0	0	1	0	0
2151	706	13	18	32	Veteran	58	19	15	0	1	0	0	0	0	0	0	0	6	0.067	0.067	0.067	0.133	-62	1	0	4	0	0	0
2152	817	13	18	27	Peak	38	7	6	1	2	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	90	2	0	1	0	0	0
2153	866	13	18	37	Senior	21	3	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2154	867	13	18	37	Senior	2	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2155	868	13	18	28	Peak	5	1	1	0	1	0	0	0	1	0	0	0	0	1	1	1	2	471	1	0	0	0	0	0
2156	827	13	18	21	Young	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2157	869	13	18	29	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2158	846	13	18	24	Young	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2159	763	1	17	25	Peak	94	354	316	41	84	16	1	12	41	2	2	32	77	0.266	0.334	0.437	0.771	119	138	2	1	3	5	7
2160	792	2	17	25	Peak	156	685	642	95	200	32	3	21	111	5	4	31	66	0.312	0.342	0.469	0.811	130	301	3	1	8	4	8
2161	804	3	17	29	Peak	145	613	530	95	141	26	3	10	35	59	18	66	71	0.266	0.35	0.383	0.733	109	203	4	10	3	3	10
2162	750	4	17	25	Peak	160	625	553	61	149	18	6	5	65	14	5	53	53	0.269	0.336	0.351	0.686	96	194	4	11	4	25	18
2163	793	5	17	26	Peak	159	673	577	88	151	20	2	18	97	1	1	76	68	0.262	0.349	0.397	0.746	113	229	7	3	10	13	17
2164	849	6	17	24	Young	145	620	580	83	182	30	3	7	58	31	13	30	24	0.314	0.351	0.412	0.763	117	239	4	4	2	10	13
2165	858	7	17	32	Veteran	150	656	535	104	145	17	4	32	108	18	15	108	104	0.271	0.387	0.497	0.884	151	266	0	2	11	4	7
2166	859	8	17	27	Peak	139	540	468	73	138	23	4	11	61	7	8	64	88	0.295	0.376	0.432	0.808	130	202	0	3	5	9	9
2167	808	10	17	27	Peak	111	430	349	54	88	14	1	16	57	2	2	75	73	0.252	0.38	0.436	0.815	132	152	0	1	5	10	11
2168	860	6	17	27	Peak	85	189	175	23	42	8	6	1	24	1	3	10	32	0.24	0.282	0.371	0.653	85	65	1	1	2	1	3
2169	818	11	17	26	Peak	81	134	124	11	29	5	1	1	16	3	2	7	17	0.234	0.276	0.315	0.591	68	39	1	0	2	5	3
2170	830	3	17	26	Peak	48	83	78	13	22	6	0	0	8	2	0	2	14	0.282	0.293	0.359	0.652	85	28	0	1	2	0	0
2171	854	12	17	24	Young	45	82	73	12	25	0	0	1	4	4	2	8	9	0.342	0.407	0.384	0.791	127	28	0	1	0	0	4
2172	798	6	17	36	Senior	66	72	57	5	16	2	0	0	16	0	0	5	4	0.281	0.328	0.316	0.644	85	18	1	5	4	4	0
2173	861	12	17	32	Veteran	44	63	60	5	15	1	0	3	12	0	0	2	12	0.25	0.274	0.417	0.691	95	25	0	1	0	0	1
2174	870	10	17	31	Veteran	15	21	18	1	4	0	0	0	0	0	0	3	1	0.222	0.333	0.222	0.556	61	4	0	0	0	2	0
2175	863	16	17	30	Veteran	4	4	3	0	1	0	0	0	1	0	0	1	0	0.333	0.5	0.333	0.833	142	1	0	0	0	0	0
2176	839	8	17	20	Young	4	4	4	2	4	1	0	0	2	0	0	0	0	1	1	1.25	2.25	540	5	0	0	0	0	0
2177	289	4	17	21	Young	3	3	3	1	1	0	0	0	0	0	0	0	2	0.333	0.333	0.333	0.667	91	1	0	0	0	0	0
2178	865	6	17	22	Young	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2179	844	1	17	20	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2180	862	10	17	21	Young	6	0	0	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2181	821	13	17	28	Peak	39	113	96	12	23	8	0	1	11	0	0	11	28	0.24	0.312	0.354	0.666	90	34	0	4	2	0	1
2182	722	13	17	29	Peak	40	111	98	7	18	2	0	0	7	0	0	3	22	0.184	0.216	0.204	0.42	20	20	1	9	0	0	3
2183	822	13	17	25	Peak	36	78	64	3	9	0	0	0	4	0	0	6	22	0.141	0.214	0.141	0.355	3	9	0	8	0	0	0
2184	836	13	17	31	Veteran	22	62	51	0	6	2	0	0	2	0	0	2	10	0.118	0.151	0.157	0.308	-12	8	0	9	0	0	1
2185	706	13	17	31	Veteran	106	36	34	2	8	0	0	0	2	0	0	0	3	0.235	0.235	0.235	0.471	35	8	0	2	0	0	0
2186	847	13	17	33	Veteran	21	34	29	3	5	0	0	0	2	0	0	1	11	0.172	0.194	0.172	0.366	5	5	0	3	1	0	1
2187	869	13	17	28	Peak	21	26	23	2	4	0	0	0	0	0	0	0	5	0.174	0.174	0.174	0.348	0	4	0	3	0	0	0
2188	817	13	17	26	Peak	49	16	12	0	0	0	0	0	0	0	0	1	2	0	0.077	0	0.077	-77	0	0	3	0	0	0
2189	866	13	17	36	Senior	24	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2190	837	13	17	21	Young	4	2	2	0	1	0	0	0	0	0	0	0	1	0.5	0.5	0.5	1	186	1	0	0	0	0	0
2191	871	13	17	23	Young	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2192	872	13	17	20	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2193	873	13	17	26	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2194	808	1	16	26	Peak	136	585	487	84	128	26	0	25	88	1	1	87	81	0.263	0.369	0.47	0.839	136	229	1	0	10	9	5
2195	849	2	16	23	Young	140	606	575	68	158	20	0	8	46	12	2	17	34	0.275	0.297	0.351	0.648	83	202	3	6	5	5	15
2196	804	3	16	28	Peak	142	615	535	77	147	13	5	6	37	36	16	62	77	0.275	0.352	0.351	0.703	100	188	5	7	6	6	14
2197	750	4	16	24	Young	162	666	615	55	163	26	3	4	56	15	7	34	63	0.265	0.301	0.337	0.638	80	207	1	9	7	20	9
2198	793	5	16	25	Peak	152	595	507	60	124	18	4	15	80	1	1	74	77	0.245	0.338	0.385	0.723	104	195	2	4	8	7	19
2199	798	6	16	35	Senior	89	327	293	33	92	11	2	0	23	1	3	25	12	0.314	0.368	0.365	0.733	108	107	1	6	2	9	11
2200	874	7	16	33	Veteran	152	641	599	82	171	29	9	16	77	17	5	29	62	0.285	0.32	0.444	0.764	114	266	5	1	7	12	7
2201	859	8	16	26	Peak	145	543	457	75	135	26	2	14	66	12	5	78	91	0.295	0.396	0.453	0.849	140	207	1	3	4	12	6
2202	792	2	16	24	Young	114	366	349	37	106	17	3	8	50	0	2	11	42	0.304	0.328	0.438	0.766	115	153	3	0	3	4	8
2203	860	11	16	26	Peak	96	210	195	26	51	8	0	5	18	3	3	11	35	0.262	0.304	0.379	0.684	92	74	1	3	0	2	8
2204	818	6	16	25	Peak	75	171	159	19	40	4	1	2	17	7	2	8	29	0.252	0.288	0.327	0.615	74	52	1	1	2	2	2
2205	763	1	16	24	Young	54	154	134	18	34	5	0	2	10	1	0	15	33	0.254	0.34	0.336	0.676	92	45	3	1	1	1	4
2206	830	3	16	25	Peak	57	150	135	14	28	2	0	0	8	2	3	15	34	0.207	0.287	0.222	0.509	46	30	0	0	0	1	2
2207	861	5	16	31	Veteran	42	91	85	6	21	5	0	5	18	0	0	6	13	0.247	0.297	0.482	0.779	117	41	0	0	0	1	1
2208	875	1	16	35	Senior	17	25	21	0	4	0	0	0	3	0	0	3	3	0.19	0.28	0.19	0.47	36	4	0	0	1	1	0
2209	862	5	16	20	Young	10	19	19	1	4	0	0	0	2	1	0	0	5	0.211	0.211	0.211	0.421	19	4	0	0	0	0	0
2210	876	16	16	28	Peak	10	10	9	0	2	0	0	0	0	0	0	1	1	0.222	0.3	0.222	0.522	50	2	0	0	0	0	0
2211	865	16	16	21	Young	4	4	4	0	1	1	0	0	0	0	0	0	1	0.25	0.25	0.5	0.75	107	2	0	0	0	0	0
2212	864	6	16	25	Peak	2	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2213	821	13	16	27	Peak	34	99	89	3	15	3	0	0	6	0	0	5	16	0.169	0.213	0.202	0.415	18	18	0	5	0	0	1
2214	722	13	16	28	Peak	33	97	84	6	10	1	0	0	5	0	0	5	17	0.119	0.167	0.131	0.298	-15	11	0	7	1	0	3
2215	877	13	16	33	Veteran	33	88	78	4	12	1	0	0	1	0	0	2	22	0.154	0.175	0.167	0.342	-3	13	0	8	0	0	3
2216	836	13	16	30	Veteran	36	85	74	3	15	1	0	0	7	0	0	4	17	0.203	0.244	0.216	0.46	31	16	0	7	0	0	3
2217	847	13	16	32	Veteran	30	69	57	2	5	2	0	0	3	0	0	5	18	0.088	0.161	0.123	0.284	-19	7	0	7	0	0	1
2218	817	13	16	25	Peak	37	15	14	0	3	0	0	0	1	0	0	0	2	0.214	0.214	0.214	0.429	22	3	0	1	0	0	1
2219	822	13	16	24	Young	31	13	11	0	1	0	0	0	1	0	0	0	2	0.091	0.091	0.091	0.182	-48	1	0	2	0	0	0
2220	866	13	16	35	Senior	56	7	5	0	2	0	0	0	0	0	0	0	2	0.4	0.4	0.4	0.8	127	2	0	2	0	0	0
2221	878	13	16	33	Veteran	39	6	5	1	1	0	0	0	0	0	0	0	2	0.2	0.2	0.2	0.4	13	1	0	1	0	0	0
2222	879	13	16	29	Peak	28	4	4	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2223	869	13	16	27	Peak	6	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2224	873	13	16	25	Peak	7	2	1	1	0	0	0	0	0	0	0	0	1	0	0.5	0	0.5	53	0	1	0	0	0	0
2225	871	13	16	22	Young	4	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2226	880	13	16	21	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2227	875	1	15	34	Senior	73	233	200	14	48	6	0	2	18	0	1	31	38	0.24	0.341	0.3	0.641	86	60	0	1	1	5	4
2228	881	2	15	32	Veteran	130	502	427	45	119	14	3	4	59	3	5	62	43	0.279	0.367	0.354	0.721	108	151	1	6	6	5	13
2229	830	3	15	24	Young	60	266	243	34	63	7	3	0	12	5	3	19	37	0.259	0.312	0.313	0.625	80	76	0	3	1	0	4
2230	750	4	15	23	Young	129	477	434	47	118	19	5	4	34	14	7	34	64	0.272	0.326	0.366	0.693	99	159	2	5	2	9	4
2231	792	5	15	23	Young	96	317	294	36	79	14	2	9	30	4	2	19	36	0.269	0.312	0.422	0.734	109	124	1	0	3	3	8
2232	798	6	15	34	Senior	118	410	371	57	120	16	5	5	48	4	4	27	15	0.323	0.375	0.434	0.809	132	161	5	5	2	6	10
2233	874	7	15	32	Veteran	149	654	615	81	178	22	7	19	79	20	3	27	61	0.289	0.317	0.441	0.758	116	271	1	4	7	4	9
2234	882	8	15	36	Senior	103	405	342	41	86	6	1	19	59	2	3	55	76	0.251	0.353	0.442	0.795	127	151	2	0	6	0	9
2235	883	12	15	22	Young	119	434	391	42	107	11	2	3	32	5	5	27	33	0.274	0.319	0.335	0.654	88	131	2	8	6	2	11
2236	849	10	15	22	Young	105	405	383	47	122	14	3	5	37	10	3	17	13	0.319	0.348	0.41	0.758	117	157	1	3	1	2	13
2237	859	11	15	25	Peak	96	283	243	28	61	7	3	8	27	4	2	35	55	0.251	0.349	0.403	0.752	116	98	2	2	1	3	8
2238	884	3	15	30	Veteran	70	188	169	11	34	8	0	5	24	0	0	17	30	0.201	0.271	0.337	0.609	74	57	0	0	2	6	3
2239	885	1	15	31	Veteran	51	169	151	7	29	7	0	2	11	0	0	17	23	0.192	0.278	0.278	0.556	60	42	1	0	0	3	6
2240	886	12	15	26	Peak	53	166	144	17	24	4	0	4	16	3	0	18	53	0.167	0.265	0.278	0.543	56	40	2	0	2	1	2
2241	887	4	15	39	Senior	71	152	132	16	17	3	1	0	4	1	1	10	18	0.129	0.19	0.167	0.357	3	22	0	10	0	0	3
2242	763	1	15	23	Young	35	124	106	18	29	0	1	4	15	0	0	16	26	0.274	0.374	0.406	0.78	124	43	1	1	0	2	3
2243	888	1	15	30	Veteran	27	70	56	4	9	1	0	1	6	2	0	14	11	0.161	0.329	0.232	0.561	64	13	0	0	0	2	1
2244	804	3	15	27	Peak	11	49	42	6	9	4	0	0	1	4	0	7	6	0.214	0.327	0.31	0.636	84	13	0	0	0	0	1
2245	860	10	15	25	Peak	11	48	47	4	12	4	0	1	6	1	0	1	7	0.255	0.271	0.404	0.675	92	19	0	0	0	0	1
2246	793	5	15	24	Young	11	45	37	3	10	1	0	1	3	0	0	7	10	0.27	0.4	0.378	0.778	125	14	1	0	0	0	0
2247	808	10	15	25	Peak	8	27	24	2	7	3	0	1	5	0	0	2	4	0.292	0.346	0.542	0.888	152	13	0	1	0	0	2
2248	889	2	15	21	Young	9	26	23	2	3	0	0	0	0	0	0	2	8	0.13	0.2	0.13	0.33	-3	3	0	1	0	0	1
2249	722	13	15	27	Peak	33	105	91	4	13	0	0	0	1	0	0	2	24	0.143	0.17	0.143	0.313	-9	13	1	11	0	0	0
2250	877	13	15	32	Veteran	36	100	88	9	24	5	1	1	11	0	0	5	19	0.273	0.319	0.386	0.706	102	34	1	6	0	0	2
2251	847	13	15	31	Veteran	31	73	66	2	8	1	1	0	2	0	0	1	27	0.121	0.134	0.167	0.301	-14	11	0	6	0	0	0
2252	836	13	15	29	Peak	29	70	63	3	10	0	0	0	2	0	0	0	10	0.159	0.159	0.159	0.317	-8	10	0	7	0	0	3
2253	890	13	15	28	Peak	26	63	55	1	4	1	0	0	0	0	0	2	21	0.073	0.105	0.091	0.196	-43	5	0	6	0	0	0
2254	891	13	15	25	Peak	19	14	11	2	2	0	0	0	0	0	0	3	6	0.182	0.357	0.182	0.539	59	2	0	0	0	0	0
2255	822	13	15	23	Young	7	9	7	0	1	0	1	0	1	0	0	1	2	0.143	0.25	0.429	0.679	92	3	0	1	0	0	0
2256	892	13	15	32	Veteran	33	8	7	0	0	0	0	0	0	0	0	1	6	0	0.125	0	0.125	-61	0	0	0	0	0	0
2257	878	13	15	32	Veteran	37	7	6	0	3	0	0	0	0	0	0	0	3	0.5	0.5	0.5	1	188	3	0	1	0	0	0
2258	866	13	15	34	Senior	51	3	1	1	0	0	0	0	0	0	0	1	0	0	0.5	0	0.5	55	0	0	0	0	0	0
2259	893	13	15	49	Senior	16	2	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
2260	817	13	15	24	Young	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2261	894	13	15	29	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2262	895	13	15	36	Senior	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2263	885	1	14	30	Veteran	90	263	230	23	63	7	2	6	25	0	1	30	39	0.274	0.357	0.4	0.757	121	92	1	0	2	7	4
2264	881	2	14	31	Veteran	157	609	533	69	146	24	1	6	62	6	1	63	63	0.274	0.347	0.356	0.704	106	190	1	4	8	5	13
2265	884	3	14	29	Peak	119	437	388	40	95	14	2	12	68	0	2	39	55	0.245	0.314	0.384	0.698	103	149	2	4	4	6	15
2266	887	4	14	38	Senior	149	654	601	73	169	14	3	3	44	15	8	40	44	0.281	0.323	0.329	0.652	91	198	0	7	6	2	8
2267	896	5	14	29	Peak	155	649	549	82	162	24	1	23	90	8	1	93	113	0.295	0.395	0.468	0.863	151	257	1	1	5	13	23
2268	859	6	14	24	Young	114	376	342	64	96	16	6	9	40	5	2	28	49	0.281	0.334	0.442	0.776	124	151	1	1	3	2	6
2269	874	7	14	31	Veteran	158	672	641	84	198	33	10	10	74	20	8	23	47	0.309	0.33	0.438	0.769	122	281	0	3	5	3	17
2270	849	8	14	21	Young	108	383	358	37	99	15	1	5	41	4	1	11	18	0.277	0.306	0.366	0.672	95	131	5	7	2	4	6
2271	883	12	14	21	Young	101	307	281	32	70	10	2	1	25	5	3	15	20	0.249	0.287	0.31	0.597	74	87	2	4	5	0	9
2272	798	11	14	33	Veteran	91	300	269	24	84	13	5	0	34	4	3	20	20	0.312	0.361	0.398	0.759	121	107	1	9	1	5	9
2273	792	5	14	22	Young	81	249	225	27	51	12	1	7	26	1	2	21	33	0.227	0.29	0.382	0.673	95	86	0	1	2	2	6
2274	897	1	14	34	Senior	84	234	202	23	54	5	0	5	32	0	2	25	30	0.267	0.346	0.366	0.712	108	74	2	0	5	8	5
2275	750	10	14	22	Young	91	223	211	29	48	7	4	2	15	6	3	11	39	0.227	0.265	0.327	0.592	72	69	0	0	1	2	2
2276	808	1	14	24	Young	36	115	102	13	22	3	0	2	7	1	0	12	15	0.216	0.304	0.304	0.608	78	31	1	0	0	1	3
2277	898	1	14	25	Peak	41	96	83	10	16	3	0	3	7	0	1	12	22	0.193	0.302	0.337	0.639	86	28	1	0	0	2	4
2278	886	12	14	25	Peak	44	90	71	9	16	5	0	0	6	1	2	19	16	0.225	0.389	0.296	0.685	102	21	0	0	0	0	2
2279	899	8	14	28	Peak	11	22	20	2	5	1	0	1	4	0	0	2	9	0.25	0.318	0.45	0.768	122	9	0	0	0	0	0
2280	818	11	14	23	Young	11	7	7	2	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2281	793	16	14	23	Young	2	2	2	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2282	860	6	14	24	Young	2	2	2	0	1	0	0	0	1	0	0	0	0	0.5	0.5	0.5	1	192	1	0	0	0	0	0
2283	847	13	14	30	Veteran	37	106	92	4	16	2	0	0	10	0	0	6	28	0.174	0.224	0.196	0.42	24	18	0	8	0	0	5
2284	877	13	14	31	Veteran	39	99	86	7	16	3	0	0	7	0	0	4	21	0.186	0.22	0.221	0.441	29	19	0	8	1	0	0
2285	722	13	14	26	Peak	39	95	88	4	19	2	0	0	7	0	0	3	18	0.216	0.242	0.239	0.48	41	21	0	4	0	0	0
2286	890	13	14	27	Peak	31	74	58	1	6	0	0	0	2	0	0	5	24	0.103	0.212	0.103	0.316	-5	6	3	8	0	0	2
2287	900	13	14	20	Young	17	37	33	3	9	0	0	0	2	0	0	3	13	0.273	0.333	0.273	0.606	79	9	0	1	0	0	1
2288	901	13	14	22	Young	14	11	9	0	1	0	0	0	0	0	0	0	0	0.111	0.111	0.111	0.222	-35	1	0	2	0	0	0
2289	902	13	14	28	Peak	28	11	9	0	0	0	0	0	0	0	0	2	6	0	0.182	0	0.182	-43	0	0	0	0	0	0
2290	892	13	14	31	Veteran	41	11	10	0	2	0	0	0	1	0	0	1	4	0.2	0.273	0.2	0.473	40	2	0	0	0	0	0
2291	866	13	14	33	Veteran	55	9	9	0	3	0	0	0	1	0	0	0	2	0.333	0.333	0.333	0.667	95	3	0	0	0	0	0
2292	903	13	14	24	Young	10	6	5	0	0	0	0	0	0	0	0	1	1	0	0.167	0	0.167	-48	0	0	0	0	0	0
2293	894	13	14	28	Peak	21	3	3	1	2	0	0	0	0	0	0	0	1	0.667	0.667	0.667	1.333	290	2	0	0	0	0	0
2294	893	13	14	48	Senior	9	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2295	891	13	14	24	Young	6	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2296	817	13	14	23	Young	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2297	897	1	13	33	Veteran	112	365	325	47	93	16	6	10	47	3	0	32	35	0.286	0.351	0.465	0.815	122	151	2	3	3	7	6
2298	881	2	13	30	Veteran	161	705	614	84	196	47	4	10	111	8	2	79	70	0.319	0.392	0.458	0.85	133	281	0	4	8	18	14
2299	850	3	13	25	Peak	96	376	340	40	104	10	1	1	34	5	1	34	19	0.306	0.367	0.35	0.717	98	119	0	0	2	6	15
2300	887	4	13	37	Senior	132	578	522	77	141	19	3	0	34	28	13	50	34	0.27	0.333	0.318	0.651	80	166	0	5	1	2	10
2301	886	5	13	24	Young	156	640	529	92	153	20	8	17	84	19	9	95	149	0.289	0.399	0.454	0.852	134	240	6	3	7	8	8
2302	798	6	13	32	Veteran	124	481	417	63	127	12	6	3	37	11	6	47	37	0.305	0.377	0.384	0.761	110	160	3	12	2	4	13
2303	874	7	13	30	Veteran	146	637	593	92	181	23	16	8	93	38	14	29	54	0.305	0.335	0.438	0.774	111	260	1	8	6	2	6
2304	859	8	13	23	Young	109	336	299	48	70	8	6	8	40	4	4	33	88	0.234	0.313	0.381	0.694	90	114	2	0	2	4	5
2305	884	12	13	28	Peak	109	351	314	33	79	15	1	4	44	1	1	29	42	0.252	0.314	0.344	0.658	81	108	1	4	3	2	7
2306	898	10	13	24	Young	94	311	269	37	71	11	0	14	44	4	0	35	46	0.264	0.352	0.461	0.813	121	124	3	1	3	4	7
2307	750	11	13	21	Young	81	304	278	30	72	11	9	0	28	9	1	16	28	0.259	0.303	0.363	0.667	82	101	3	4	3	1	5
2308	904	8	13	28	Peak	74	228	224	21	51	12	0	8	27	1	1	1	40	0.228	0.23	0.388	0.618	67	87	0	2	1	0	7
2309	905	1	13	28	Peak	64	150	134	11	31	8	0	1	17	1	1	14	15	0.231	0.3	0.313	0.613	69	42	0	0	2	6	2
2310	818	11	13	22	Young	72	116	109	23	29	1	3	1	8	2	2	6	24	0.266	0.302	0.358	0.66	80	39	0	0	1	2	0
2311	792	5	13	21	Young	34	100	93	8	25	5	0	1	6	1	1	6	17	0.269	0.31	0.355	0.665	82	33	0	0	1	0	3
2312	849	6	13	20	Young	28	71	68	6	13	3	1	0	4	0	1	3	7	0.191	0.225	0.265	0.49	34	18	0	0	0	1	0
2313	906	10	13	30	Veteran	43	44	42	1	8	2	0	0	6	0	0	1	15	0.19	0.205	0.238	0.443	21	10	0	0	1	0	0
2314	907	10	13	25	Peak	7	16	16	2	3	0	2	0	0	1	0	0	1	0.188	0.188	0.438	0.625	66	7	0	0	0	0	2
2315	860	11	13	23	Young	8	10	9	2	2	1	0	0	0	0	0	0	3	0.222	0.3	0.333	0.633	74	3	1	0	0	0	0
2316	808	1	13	23	Young	5	7	4	0	1	0	0	0	1	0	0	2	2	0.25	0.429	0.25	0.679	91	1	0	0	1	0	0
2317	908	1	13	24	Young	4	3	3	1	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2318	722	13	13	25	Peak	40	100	84	6	13	2	1	0	6	1	0	10	22	0.155	0.253	0.202	0.455	27	17	1	5	0	0	1
2319	877	13	13	30	Veteran	39	100	93	10	19	5	0	1	9	0	0	3	20	0.204	0.232	0.29	0.523	43	27	1	1	2	0	0
2320	909	13	13	23	Young	33	78	64	4	7	0	0	0	6	0	0	5	13	0.109	0.171	0.109	0.281	-21	7	0	8	1	0	1
2321	902	13	13	27	Peak	31	45	39	2	6	0	0	0	2	0	0	3	21	0.154	0.214	0.154	0.368	3	6	0	3	0	0	1
2322	903	13	13	23	Young	20	42	37	2	7	1	0	0	2	0	0	1	9	0.189	0.211	0.216	0.427	17	8	0	4	0	0	0
2323	890	13	13	26	Peak	16	41	38	4	5	1	0	0	1	0	0	2	10	0.132	0.175	0.158	0.333	-8	6	0	1	0	0	0
2324	866	13	13	32	Veteran	58	14	12	0	1	0	0	0	1	1	0	1	6	0.083	0.154	0.083	0.237	-33	1	0	1	0	0	0
2325	910	13	13	27	Peak	30	11	7	1	1	0	0	0	0	0	0	2	4	0.143	0.333	0.143	0.476	36	1	0	2	0	0	0
2326	894	13	13	27	Peak	29	10	8	1	1	0	0	0	0	0	0	2	1	0.125	0.3	0.125	0.425	21	1	0	0	0	0	0
2327	891	13	13	23	Young	6	8	8	1	2	0	0	0	2	0	0	0	3	0.25	0.25	0.25	0.5	38	2	0	0	0	0	0
2328	892	13	13	30	Veteran	33	7	6	0	2	0	0	0	1	0	0	0	3	0.333	0.333	0.333	0.667	84	2	0	1	0	0	0
2329	911	13	13	25	Peak	35	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2330	817	13	13	22	Young	8	3	3	0	1	0	0	0	0	0	0	0	0	0.333	0.333	0.333	0.667	84	1	0	0	0	0	0
2331	912	13	13	26	Peak	3	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2332	913	13	13	36	Senior	10	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2333	914	13	13	32	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2334	897	1	12	32	Veteran	134	504	445	46	117	18	3	6	39	0	3	48	58	0.263	0.337	0.357	0.694	101	159	2	8	1	13	4
2335	881	2	12	29	Peak	132	541	471	76	131	23	4	13	68	4	1	56	46	0.278	0.353	0.427	0.78	125	201	2	6	6	6	10
2336	850	3	12	24	Young	159	650	590	69	160	20	5	4	46	5	5	45	40	0.271	0.328	0.342	0.67	94	202	5	9	1	7	11
2337	887	4	12	36	Senior	104	479	434	57	129	7	8	4	39	25	15	39	40	0.297	0.356	0.378	0.734	113	164	1	4	1	2	4
2338	898	5	12	23	Young	132	507	462	50	108	17	5	14	53	3	2	40	94	0.234	0.294	0.383	0.678	95	177	1	1	3	5	9
2339	798	6	12	31	Veteran	85	336	294	35	95	6	4	3	30	5	4	26	25	0.323	0.377	0.401	0.778	125	118	1	12	3	1	6
2340	874	7	12	29	Peak	129	540	498	66	155	23	8	11	59	24	10	33	39	0.311	0.356	0.456	0.811	134	227	4	0	5	5	11
2341	904	8	12	27	Peak	120	453	424	51	105	13	2	19	74	0	1	21	66	0.248	0.282	0.422	0.704	102	179	1	3	4	2	15
2342	859	11	12	22	Young	129	440	389	64	96	17	5	11	41	4	5	49	85	0.247	0.331	0.401	0.732	111	156	0	2	0	3	5
2343	884	12	12	27	Peak	95	330	275	29	65	15	2	4	44	2	1	48	37	0.236	0.349	0.349	0.698	103	96	1	3	3	10	8
2344	750	11	12	20	Young	98	238	212	35	48	6	2	5	15	4	1	22	45	0.226	0.301	0.344	0.645	86	73	1	2	1	1	3
2345	906	8	12	29	Peak	83	194	178	13	48	5	1	1	18	1	2	12	25	0.27	0.313	0.326	0.638	85	58	0	2	2	1	4
2346	905	1	12	27	Peak	51	136	124	7	23	4	0	0	7	1	0	9	17	0.185	0.241	0.218	0.458	34	27	0	3	0	5	0
2347	915	10	12	30	Veteran	30	74	64	3	14	3	2	0	8	0	0	9	6	0.219	0.315	0.328	0.643	87	21	0	1	0	1	1
2348	886	4	12	23	Young	34	70	65	4	6	1	1	0	5	1	0	4	19	0.092	0.145	0.138	0.283	-18	9	0	1	0	1	3
2349	916	2	12	23	Young	16	56	48	2	13	0	0	0	4	0	0	5	7	0.271	0.34	0.271	0.61	79	13	0	3	0	0	1
2350	917	3	12	28	Peak	28	54	50	5	10	0	0	0	4	0	0	1	4	0.2	0.212	0.2	0.412	20	10	0	2	1	0	1
2351	918	10	12	25	Peak	26	40	38	3	8	1	0	1	1	0	0	2	9	0.211	0.25	0.316	0.566	63	12	0	0	0	0	0
2352	919	2	12	38	Senior	25	36	34	0	7	2	0	0	4	0	0	2	7	0.206	0.25	0.265	0.515	49	9	0	0	0	0	2
2353	908	1	12	23	Young	4	10	8	1	3	0	0	0	2	0	1	0	2	0.375	0.375	0.375	0.75	118	3	0	1	0	0	1
2354	818	11	12	21	Young	14	8	8	2	2	0	0	0	0	1	0	0	2	0.25	0.25	0.25	0.5	45	2	0	0	0	0	0
2355	792	16	12	20	Young	3	3	3	0	1	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	94	1	0	0	0	0	0
2356	849	16	12	19	Young	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2357	883	16	12	19	Young	5	0	0	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2358	877	13	12	29	Peak	44	126	111	7	24	1	0	1	12	0	0	5	25	0.216	0.246	0.252	0.498	45	28	0	8	2	0	3
2359	890	13	12	25	Peak	41	118	108	7	11	1	0	0	2	0	0	1	47	0.102	0.118	0.111	0.229	-33	12	1	8	0	0	1
2360	722	13	12	24	Young	41	108	98	6	15	0	0	0	3	0	0	0	28	0.153	0.162	0.153	0.315	-8	15	1	9	0	0	5
2361	909	13	12	22	Young	24	33	27	1	2	0	0	0	1	0	0	3	16	0.074	0.167	0.074	0.241	-28	2	0	3	0	0	0
2362	920	13	12	32	Veteran	12	25	22	1	3	1	0	0	3	0	0	2	11	0.136	0.208	0.182	0.39	14	4	0	1	0	0	1
2363	921	13	12	37	Senior	9	21	18	0	2	0	0	0	1	0	0	0	6	0.111	0.111	0.111	0.222	-35	2	0	3	0	0	1
2364	866	13	12	31	Veteran	59	12	11	0	1	1	0	0	0	0	0	1	4	0.091	0.167	0.182	0.348	1	2	0	0	0	0	0
2365	902	13	12	26	Peak	23	10	10	1	2	0	0	0	1	0	0	0	5	0.2	0.2	0.2	0.4	16	2	0	0	0	0	0
2366	892	13	12	29	Peak	48	7	6	0	1	0	0	0	0	0	0	0	4	0.167	0.167	0.167	0.333	-3	1	0	1	0	0	0
2367	914	13	12	31	Veteran	31	4	3	0	0	0	0	0	0	0	0	1	2	0	0.25	0	0.25	-22	0	0	0	0	0	0
2368	922	13	12	26	Peak	9	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2369	911	13	12	24	Young	10	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2370	899	13	12	26	Peak	6	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2371	923	13	12	26	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2372	897	1	11	31	Veteran	144	534	474	37	135	27	5	4	53	1	4	46	76	0.285	0.345	0.388	0.733	128	184	2	3	9	13	3
2373	881	2	11	28	Peak	135	534	468	42	112	22	2	3	27	4	6	49	87	0.239	0.312	0.314	0.626	96	147	2	12	3	6	3
2374	917	3	11	27	Peak	134	462	418	35	97	8	1	2	25	1	3	29	37	0.232	0.28	0.27	0.551	72	113	1	9	5	2	7
2375	924	4	11	28	Peak	122	436	403	29	79	16	3	2	24	6	4	26	84	0.196	0.244	0.266	0.51	59	107	0	6	1	4	7
2376	925	5	11	25	Peak	105	365	322	24	73	9	3	8	39	1	2	38	69	0.227	0.308	0.348	0.656	104	112	1	1	3	4	8
2377	906	6	11	28	Peak	108	343	304	38	82	16	1	10	35	1	1	32	47	0.27	0.337	0.428	0.765	137	130	0	5	2	4	7
2378	874	7	11	28	Peak	160	686	643	86	161	24	10	7	31	36	10	31	88	0.25	0.284	0.351	0.636	97	226	1	7	4	4	3
2379	915	8	11	29	Peak	141	494	441	32	103	15	1	4	43	0	2	41	61	0.234	0.301	0.299	0.6	88	132	4	2	6	10	11
2380	884	3	11	26	Peak	84	317	286	23	69	12	1	5	31	0	0	26	55	0.241	0.304	0.343	0.646	101	98	1	1	3	4	3
2381	919	15	11	37	Senior	83	243	221	20	60	7	2	6	41	2	2	16	34	0.271	0.317	0.403	0.72	123	89	1	0	5	3	2
2382	859	6	11	21	Young	61	198	175	25	44	12	1	4	14	1	3	20	64	0.251	0.335	0.4	0.735	129	70	2	1	0	0	0
2383	876	11	11	23	Young	99	166	156	17	31	3	3	1	10	1	1	9	32	0.199	0.241	0.276	0.517	61	43	0	0	1	0	2
2384	926	11	11	32	Veteran	61	137	126	7	26	6	1	2	7	1	2	10	20	0.206	0.27	0.317	0.588	83	40	1	0	0	0	7
2385	927	11	11	34	Senior	40	129	113	8	23	3	0	3	11	0	1	15	18	0.204	0.295	0.31	0.604	89	35	0	0	1	1	6
2386	928	12	11	27	Peak	41	115	106	4	16	1	0	2	5	1	1	9	23	0.151	0.217	0.217	0.434	36	23	0	0	0	2	2
2387	898	5	11	22	Young	24	102	87	11	24	4	2	3	12	1	0	15	14	0.276	0.382	0.471	0.854	165	41	0	0	0	1	4
2388	905	1	11	26	Peak	37	100	93	2	15	2	0	0	4	0	0	6	10	0.161	0.212	0.183	0.395	24	17	0	1	0	2	2
2389	929	14	11	28	Peak	39	96	83	6	15	3	0	0	4	0	1	10	13	0.181	0.269	0.217	0.486	53	18	0	3	0	1	5
2390	930	1	11	24	Young	4	12	11	0	1	0	0	0	0	0	0	1	2	0.091	0.167	0.091	0.258	-18	1	0	0	0	0	1
2391	931	6	11	27	Peak	10	10	10	2	2	1	0	0	0	0	0	0	6	0.2	0.2	0.3	0.5	54	3	0	0	0	0	0
2392	932	6	11	28	Peak	2	7	7	0	1	0	0	0	0	0	0	0	2	0.143	0.143	0.143	0.286	-11	1	0	0	0	0	0
2393	877	13	11	28	Peak	40	95	84	4	15	3	0	0	2	0	0	2	26	0.179	0.198	0.214	0.412	29	18	0	9	0	0	3
2394	890	13	11	24	Young	37	89	81	6	12	7	0	0	4	0	0	4	30	0.148	0.198	0.235	0.432	34	19	1	3	0	0	0
2395	920	13	11	31	Veteran	31	84	79	4	14	1	0	0	3	0	0	0	29	0.177	0.188	0.19	0.377	18	15	1	4	0	0	1
2396	722	13	11	23	Young	36	72	62	3	11	0	0	0	3	0	0	2	22	0.177	0.197	0.177	0.374	18	11	0	6	2	0	1
2397	933	13	11	23	Young	25	40	37	3	3	0	0	0	1	0	0	1	9	0.081	0.105	0.081	0.186	-41	3	0	2	0	0	0
2398	934	13	11	32	Veteran	43	31	31	1	4	0	0	1	2	0	0	0	9	0.129	0.129	0.226	0.355	9	7	0	0	0	0	0
2399	866	13	11	30	Veteran	54	10	9	0	2	0	0	0	2	0	0	0	1	0.222	0.222	0.222	0.444	39	2	0	1	0	0	0
2400	902	13	11	25	Peak	3	7	7	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
2401	922	13	11	25	Peak	36	6	6	1	3	0	0	0	0	0	0	0	2	0.5	0.5	0.5	1	213	3	0	0	0	0	0
2402	935	13	11	25	Peak	50	6	3	0	0	0	0	0	0	0	0	1	1	0	0.25	0	0.25	-17	0	0	2	0	0	1
2403	909	13	11	21	Young	3	5	4	0	1	0	0	0	1	0	0	0	2	0.25	0.25	0.25	0.5	56	1	0	1	0	0	0
2404	936	13	11	37	Senior	25	3	3	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2405	937	13	11	31	Veteran	5	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2406	799	13	11	25	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2407	938	1	10	34	Senior	116	380	334	37	91	18	2	4	24	2	4	38	33	0.272	0.348	0.374	0.723	116	125	2	4	2	12	8
2408	881	2	10	27	Peak	139	496	413	56	102	16	5	5	31	10	5	65	83	0.247	0.358	0.346	0.704	111	143	7	10	1	10	10
2409	939	3	10	26	Peak	110	442	388	44	102	17	3	3	33	2	1	39	24	0.263	0.344	0.345	0.689	107	134	10	3	2	3	9
2410	940	4	10	29	Peak	98	245	223	20	45	3	1	0	7	1	3	11	30	0.202	0.246	0.224	0.47	41	50	2	9	0	0	4
2411	884	5	10	25	Peak	136	553	494	51	129	18	5	8	50	1	5	44	64	0.261	0.322	0.366	0.689	105	181	3	7	5	11	10
2412	941	6	10	32	Veteran	104	371	330	39	89	14	1	11	41	4	3	24	52	0.27	0.33	0.418	0.748	122	138	7	7	3	5	9
2413	874	7	10	27	Peak	143	610	569	65	146	27	9	6	41	20	6	29	65	0.257	0.295	0.367	0.662	97	209	3	6	3	5	8
2414	915	8	10	28	Peak	153	554	486	45	107	19	0	10	55	1	4	54	51	0.22	0.295	0.321	0.616	84	156	1	5	8	9	13
2415	932	11	10	27	Peak	122	384	347	41	96	16	1	16	50	0	1	33	73	0.277	0.345	0.467	0.812	140	162	3	1	0	4	5
2416	925	10	10	24	Young	116	372	322	21	73	8	2	4	28	5	5	40	50	0.227	0.31	0.301	0.611	83	97	1	4	5	4	14
2417	634	4	10	32	Veteran	84	268	232	23	50	10	1	2	15	1	2	31	40	0.216	0.307	0.293	0.6	80	68	0	4	1	4	9
2418	906	11	10	27	Peak	90	257	238	20	62	10	3	7	29	3	1	15	41	0.261	0.307	0.416	0.723	114	99	1	3	0	3	4
2419	942	14	10	26	Peak	77	249	232	18	55	6	2	0	7	3	2	13	50	0.237	0.283	0.28	0.564	69	65	2	2	0	0	7
2420	905	1	10	25	Peak	76	213	196	11	42	4	1	2	12	1	3	13	31	0.214	0.265	0.276	0.541	62	54	1	2	1	3	6
2421	943	11	10	30	Veteran	65	114	98	7	16	6	1	0	10	1	1	14	28	0.163	0.268	0.245	0.513	54	24	0	2	0	1	4
2422	930	1	10	23	Young	41	71	62	3	10	1	0	2	2	0	0	9	14	0.161	0.268	0.274	0.542	62	17	0	0	0	1	2
2423	928	3	10	26	Peak	17	63	60	1	14	1	0	0	3	1	1	1	13	0.233	0.242	0.25	0.492	47	15	0	1	1	0	1
2424	944	4	10	21	Young	12	29	28	1	4	1	0	0	2	0	0	0	9	0.143	0.143	0.179	0.321	-4	5	0	1	0	0	0
2425	945	16	10	29	Peak	7	7	7	0	1	0	0	0	0	0	0	0	3	0.143	0.143	0.143	0.286	-14	1	0	0	0	0	0
2426	859	8	10	20	Young	4	5	4	0	1	0	0	0	0	0	0	1	3	0.25	0.4	0.25	0.65	99	1	0	0	0	0	0
2427	877	13	10	27	Peak	42	112	101	9	18	3	1	2	9	0	0	4	22	0.178	0.206	0.287	0.493	46	29	0	5	2	0	4
2428	920	13	10	30	Veteran	38	101	93	2	12	1	0	0	6	0	0	5	26	0.129	0.172	0.14	0.312	-6	13	0	2	1	0	1
2429	722	13	10	22	Young	43	84	75	4	10	2	0	0	4	0	0	2	24	0.133	0.156	0.16	0.316	-5	12	0	7	0	0	0
2430	890	13	10	23	Young	34	71	67	1	6	1	0	0	4	0	0	0	28	0.09	0.09	0.104	0.194	-42	7	0	4	0	0	1
2431	866	13	10	29	Peak	30	23	22	0	1	1	0	0	1	0	0	0	8	0.045	0.045	0.091	0.136	-60	2	0	1	0	0	1
2432	937	13	10	30	Veteran	55	10	10	0	1	0	0	0	0	0	0	0	2	0.1	0.1	0.1	0.2	-40	1	0	0	0	0	2
2433	895	13	10	31	Veteran	70	10	10	0	1	0	0	0	1	0	0	0	7	0.1	0.1	0.1	0.2	-40	1	0	0	0	0	0
2434	946	13	10	28	Peak	52	9	8	0	1	0	0	0	0	0	0	0	3	0.125	0.125	0.125	0.25	-25	1	0	1	0	0	1
2435	909	13	10	20	Young	4	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2436	947	13	10	21	Young	2	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2437	948	13	10	30	Veteran	20	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2438	902	13	10	24	Young	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2439	949	13	10	29	Peak	4	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2440	950	13	10	25	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2441	938	1	9	33	Veteran	142	501	445	47	123	23	2	9	53	3	2	44	51	0.276	0.343	0.398	0.74	113	177	3	4	4	13	11
2442	881	2	9	26	Peak	156	564	475	67	120	17	5	12	51	7	3	69	83	0.253	0.351	0.385	0.737	113	183	5	12	3	9	12
2443	884	3	9	24	Young	152	610	544	69	149	23	3	24	74	1	1	48	72	0.274	0.333	0.46	0.793	126	250	3	10	5	6	10
2444	887	4	9	33	Veteran	143	643	594	60	162	14	2	1	39	38	24	34	60	0.273	0.314	0.308	0.622	81	183	2	13	0	0	6
2445	951	5	9	25	Peak	125	294	274	15	55	9	2	3	24	1	2	10	64	0.201	0.241	0.281	0.522	50	77	5	4	1	1	5
2446	941	6	9	31	Veteran	152	572	526	71	143	20	2	17	73	8	10	21	75	0.272	0.316	0.414	0.731	109	218	14	9	2	4	16
2447	874	7	9	26	Peak	153	653	624	74	177	31	6	11	61	21	10	15	68	0.284	0.302	0.405	0.708	102	253	4	5	5	2	4
2448	915	8	9	27	Peak	117	409	351	53	101	20	0	14	61	3	2	52	38	0.288	0.38	0.464	0.844	142	163	2	1	3	4	9
2449	952	6	9	27	Peak	100	330	313	27	98	11	1	3	27	3	3	16	36	0.313	0.345	0.383	0.729	110	120	0	0	1	4	11
2450	953	5	9	37	Senior	88	273	235	30	51	9	0	1	16	2	1	34	17	0.217	0.315	0.268	0.583	71	63	0	3	1	3	5
2451	942	3	9	25	Peak	80	138	119	17	23	2	0	0	3	3	3	13	17	0.193	0.276	0.21	0.486	43	25	1	4	1	2	4
2452	905	1	9	24	Young	46	133	120	4	27	3	0	1	13	0	0	10	23	0.225	0.278	0.275	0.553	61	33	0	0	3	3	5
2453	932	8	9	26	Peak	63	129	115	15	31	4	0	5	23	0	0	9	35	0.27	0.333	0.435	0.768	120	50	3	0	2	0	3
2454	954	2	9	33	Veteran	38	104	91	4	24	1	0	3	9	0	1	11	17	0.264	0.356	0.374	0.729	111	34	2	0	0	0	3
2455	955	11	9	24	Young	39	92	82	9	23	5	0	0	3	2	0	9	7	0.28	0.352	0.341	0.693	101	28	0	1	0	1	0
2456	634	5	9	31	Veteran	20	83	70	10	18	0	0	0	4	1	1	8	8	0.257	0.35	0.257	0.607	79	18	2	3	0	0	2
2457	956	6	9	34	Senior	37	41	33	1	4	0	1	1	6	0	0	6	5	0.121	0.293	0.273	0.565	65	9	2	0	0	0	1
2458	957	11	9	22	Young	23	18	15	3	1	0	0	0	2	0	0	2	3	0.067	0.176	0.067	0.243	-26	1	0	1	0	2	0
2459	929	4	9	26	Peak	12	5	5	2	1	0	0	0	0	0	0	0	2	0.2	0.2	0.2	0.4	16	1	0	0	0	0	0
2460	916	2	9	20	Young	3	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2461	930	1	9	22	Young	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2462	859	16	9	19	Young	6	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2463	958	13	9	30	Veteran	41	124	118	5	9	3	0	0	5	0	0	5	57	0.076	0.113	0.102	0.215	-37	12	0	0	1	0	1
2464	920	13	9	29	Peak	46	111	106	6	20	2	0	2	8	0	0	3	28	0.189	0.211	0.264	0.475	36	28	0	2	0	0	5
2465	722	13	9	21	Young	38	86	82	4	15	2	0	0	2	0	0	1	27	0.183	0.202	0.207	0.41	19	17	1	2	0	0	1
2466	877	13	9	26	Peak	39	83	76	8	16	1	2	1	6	1	1	5	18	0.211	0.259	0.316	0.575	65	24	0	2	0	0	1
2467	937	13	9	29	Peak	65	26	21	2	3	0	0	0	0	0	0	3	4	0.143	0.25	0.143	0.393	17	3	0	2	0	0	0
2468	902	13	9	23	Young	29	17	12	1	2	0	0	0	0	0	0	2	5	0.167	0.286	0.167	0.452	35	2	0	3	0	0	1
2469	946	13	9	27	Peak	46	15	13	0	1	0	0	0	1	0	0	0	4	0.077	0.077	0.077	0.154	-55	1	0	2	0	0	1
2470	895	13	9	30	Veteran	55	9	8	1	2	1	1	0	1	0	0	0	5	0.25	0.25	0.625	0.875	143	5	0	1	0	0	0
2471	959	13	9	29	Peak	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2472	960	13	9	33	Veteran	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2473	961	13	9	25	Peak	6	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2474	890	13	9	22	Young	3	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2475	866	13	9	28	Peak	13	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2476	938	1	8	32	Veteran	136	480	437	42	102	10	0	8	57	1	6	34	51	0.233	0.289	0.311	0.601	75	136	2	3	4	7	5
2477	881	2	8	25	Peak	154	644	542	80	129	24	7	8	51	13	7	75	95	0.238	0.334	0.352	0.687	100	191	5	19	3	1	6
2478	884	3	8	23	Young	157	631	544	57	136	21	4	12	69	3	5	71	92	0.25	0.337	0.369	0.706	106	201	2	10	4	7	8
2479	887	4	8	32	Veteran	158	711	650	92	186	14	7	0	33	94	31	40	64	0.286	0.33	0.329	0.66	93	214	4	14	2	2	6
2480	953	5	8	36	Senior	111	432	372	54	104	19	4	4	39	9	5	53	31	0.28	0.374	0.384	0.758	121	143	4	1	2	5	1
2481	941	6	8	30	Veteran	131	518	468	57	121	24	1	12	58	15	6	24	81	0.259	0.315	0.391	0.706	104	183	16	7	3	8	7
2482	874	7	8	25	Peak	142	595	558	52	133	24	3	10	57	25	9	14	81	0.238	0.263	0.346	0.609	76	193	7	9	7	3	7
2483	915	8	8	26	Peak	158	654	555	73	152	28	1	9	70	2	0	76	72	0.274	0.361	0.377	0.738	115	209	3	14	6	11	7
2484	962	5	8	30	Veteran	78	216	186	17	40	6	0	1	20	2	6	25	30	0.215	0.313	0.263	0.577	70	49	2	2	1	4	3
2485	905	1	8	23	Young	56	162	150	8	36	5	1	3	13	0	0	10	26	0.24	0.29	0.347	0.637	85	52	1	0	1	4	5
2486	951	5	8	24	Young	104	120	105	12	18	3	0	1	5	1	0	8	33	0.171	0.243	0.229	0.472	38	24	2	5	0	1	3
2487	963	11	8	35	Senior	53	104	89	6	18	3	0	1	11	2	0	13	22	0.202	0.304	0.27	0.574	69	24	0	2	0	3	3
2488	932	8	8	25	Peak	41	91	81	5	17	2	1	1	10	0	0	9	20	0.21	0.297	0.296	0.593	73	24	1	0	0	0	1
2489	964	5	8	31	Veteran	34	83	78	2	20	2	0	0	7	0	1	5	13	0.256	0.301	0.282	0.583	71	22	0	0	0	0	1
2490	952	6	8	26	Peak	17	64	60	3	15	1	1	0	9	2	1	2	4	0.25	0.27	0.3	0.57	66	18	0	1	1	1	5
2491	957	11	8	21	Young	22	41	41	3	7	0	0	1	2	0	0	0	9	0.171	0.171	0.244	0.415	19	10	0	0	0	0	1
2492	859	11	8	18	Young	52	29	27	10	4	0	0	0	0	2	0	2	8	0.148	0.207	0.148	0.355	5	4	0	0	0	0	0
2493	965	1	8	24	Young	9	15	13	1	4	0	0	0	2	0	0	2	3	0.308	0.4	0.308	0.708	109	4	0	0	0	0	0
2494	966	11	8	26	Peak	10	7	6	0	0	0	0	0	1	0	0	0	3	0	0	0	0	-100	0	0	1	0	0	0
2495	945	2	8	27	Peak	4	4	3	1	0	0	0	0	0	0	0	1	2	0	0.25	0	0.25	-20	0	0	0	0	0	1
2496	942	3	8	24	Young	8	2	1	3	1	0	0	0	0	1	0	0	0	1	1	1	2	485	1	0	1	0	0	0
2497	920	13	8	28	Peak	58	138	130	18	39	4	1	7	19	0	0	5	34	0.3	0.331	0.508	0.839	140	66	1	2	0	0	6
2498	958	13	8	29	Peak	43	127	113	4	20	2	0	0	7	0	0	10	44	0.177	0.242	0.195	0.437	29	22	0	3	1	0	2
2499	877	13	8	25	Peak	42	108	99	6	12	0	1	0	2	0	0	3	32	0.121	0.147	0.141	0.288	-15	14	0	6	0	0	0
2500	960	13	8	32	Veteran	27	47	45	1	8	0	0	0	2	0	0	1	8	0.178	0.196	0.178	0.373	10	8	0	1	0	0	0
2501	895	13	8	29	Peak	59	21	19	0	3	0	0	0	0	0	0	2	7	0.158	0.238	0.158	0.396	18	3	0	0	0	0	0
2502	946	13	8	26	Peak	61	18	16	0	0	0	0	0	0	0	0	0	10	0	0.059	0	0.059	-81	0	1	1	0	0	0
2503	959	13	8	28	Peak	38	16	12	0	0	0	0	0	1	0	0	4	10	0	0.25	0	0.25	-20	0	0	0	0	0	1
2504	961	13	8	24	Young	15	13	10	1	4	1	0	0	3	0	0	3	3	0.4	0.538	0.5	1.038	205	5	0	0	0	0	0
2505	866	13	8	27	Peak	20	11	10	0	0	0	0	0	0	0	0	0	2	0	0.091	0	0.091	-71	0	1	0	0	0	0
2506	922	13	8	22	Young	11	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2507	933	13	8	20	Young	5	3	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	1	0	0	0
2508	890	13	8	21	Young	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2509	938	1	7	31	Veteran	134	475	414	42	119	24	1	3	45	3	3	44	61	0.287	0.357	0.372	0.729	113	154	4	7	6	9	7
2510	915	2	7	25	Peak	150	535	454	62	116	19	5	10	74	4	0	65	59	0.256	0.349	0.385	0.734	114	175	2	10	4	6	6
2511	942	3	7	23	Young	99	357	321	28	78	9	0	0	21	7	4	31	57	0.243	0.309	0.271	0.58	71	87	0	4	1	6	11
2512	887	4	7	31	Veteran	158	685	630	81	173	15	5	2	34	53	17	41	73	0.275	0.318	0.324	0.641	87	204	0	11	3	0	6
2513	953	5	7	35	Senior	116	390	334	44	76	8	3	2	27	4	4	42	21	0.228	0.318	0.287	0.605	78	96	3	9	2	2	7
2514	952	6	7	25	Peak	152	631	592	70	163	20	5	14	86	11	8	29	68	0.275	0.311	0.397	0.708	105	235	4	1	5	6	14
2515	874	7	7	24	Young	157	652	613	91	180	23	7	12	77	42	13	22	59	0.294	0.316	0.413	0.729	110	253	1	10	6	1	4
2516	967	8	7	27	Peak	134	492	433	60	98	13	2	24	69	1	0	51	113	0.226	0.303	0.432	0.735	111	187	0	1	7	10	14
2517	962	12	7	29	Peak	106	342	304	31	75	13	4	1	26	3	3	31	61	0.247	0.315	0.326	0.641	87	99	0	6	1	4	2
2518	957	10	7	20	Young	78	254	238	27	69	16	2	4	23	5	1	5	21	0.29	0.307	0.424	0.732	111	101	1	10	0	0	7
2519	881	2	7	24	Young	124	240	214	29	55	7	1	3	10	5	4	14	45	0.257	0.303	0.341	0.644	87	73	1	9	2	3	2
2520	968	1	7	27	Peak	50	135	123	1	22	3	0	0	10	0	0	8	19	0.179	0.226	0.203	0.429	26	25	0	1	2	1	4
2521	963	8	7	34	Senior	68	132	118	8	26	2	1	2	9	1	1	12	22	0.22	0.292	0.305	0.597	74	36	0	2	0	3	4
2522	945	5	7	26	Peak	29	98	83	6	16	2	1	0	8	0	0	13	12	0.193	0.296	0.241	0.537	59	20	0	0	2	0	3
2523	861	15	7	22	Young	24	72	67	3	14	0	0	1	2	0	1	3	7	0.209	0.243	0.254	0.497	45	17	0	2	0	1	3
2524	929	12	7	24	Young	18	66	62	6	17	1	1	0	7	0	0	4	8	0.274	0.318	0.323	0.641	87	20	0	0	0	2	4
2525	905	1	7	22	Young	28	49	43	4	10	1	1	0	4	0	0	3	8	0.233	0.292	0.302	0.594	73	13	1	1	1	1	0
2526	969	10	7	31	Veteran	37	30	28	1	5	1	0	0	3	0	0	2	12	0.179	0.233	0.214	0.448	31	6	0	0	0	0	1
2527	859	8	7	17	Young	10	17	16	3	5	1	0	0	0	1	1	1	7	0.313	0.353	0.375	0.728	112	6	0	0	0	0	0
2528	920	13	7	27	Peak	40	128	110	10	19	2	0	1	8	0	0	4	29	0.173	0.202	0.218	0.42	22	24	0	14	0	0	3
2529	958	13	7	28	Peak	29	81	74	3	7	0	0	0	1	0	0	3	32	0.095	0.141	0.095	0.236	-30	7	1	3	0	0	1
2530	970	13	7	24	Young	35	54	44	1	6	0	0	0	3	0	0	1	24	0.136	0.149	0.136	0.285	-16	6	0	7	2	0	1
2531	902	13	7	21	Young	27	50	45	1	3	0	0	0	0	0	0	1	19	0.067	0.087	0.067	0.154	-54	3	0	4	0	0	0
2532	971	13	7	27	Peak	16	28	26	0	7	0	0	0	2	0	0	0	4	0.269	0.269	0.269	0.538	57	7	0	2	0	0	1
2533	866	13	7	26	Peak	34	23	22	0	6	0	0	0	3	0	0	1	10	0.273	0.304	0.273	0.577	70	6	0	0	0	0	0
2534	946	13	7	25	Peak	74	23	19	1	3	0	0	0	0	0	0	2	7	0.158	0.238	0.158	0.396	18	3	0	2	0	0	0
2535	895	13	7	28	Peak	72	23	19	1	2	0	0	0	0	0	0	1	8	0.105	0.15	0.105	0.255	-24	2	0	3	0	0	0
2536	959	13	7	27	Peak	26	22	20	0	2	0	0	0	1	0	0	2	12	0.1	0.182	0.1	0.282	-15	2	0	0	0	0	0
2537	961	13	7	23	Young	10	14	11	0	0	0	0	0	0	0	0	2	7	0	0.154	0	0.154	-51	0	0	1	0	0	0
2538	878	13	7	24	Young	8	11	11	0	1	0	0	0	1	1	0	0	5	0.091	0.091	0.091	0.182	-47	1	0	0	0	0	0
2539	890	13	7	20	Young	2	6	6	0	1	0	0	0	0	0	0	0	2	0.167	0.167	0.167	0.333	-3	1	0	0	0	0	0
2540	922	13	7	21	Young	3	5	5	0	1	0	0	0	1	0	0	0	1	0.2	0.2	0.2	0.4	17	1	0	0	0	0	0
2541	960	13	7	31	Veteran	2	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0
2542	938	1	6	30	Veteran	135	518	470	50	111	13	7	9	49	7	6	36	50	0.236	0.291	0.351	0.642	91	165	3	2	7	3	9
2543	915	2	6	24	Young	152	564	490	62	133	21	0	12	77	5	2	58	69	0.271	0.347	0.388	0.735	120	190	1	11	4	7	12
2544	953	3	6	34	Senior	148	605	525	77	148	27	4	6	49	19	5	60	28	0.282	0.354	0.383	0.737	121	201	2	12	6	2	11
2545	887	4	6	30	Veteran	134	580	527	83	159	19	3	0	34	40	19	44	48	0.302	0.355	0.349	0.704	112	184	1	5	3	0	3
2546	861	5	6	21	Young	79	259	233	16	55	9	0	5	28	1	2	20	46	0.236	0.297	0.339	0.636	90	79	1	3	2	2	9
2547	952	6	6	24	Young	146	597	556	69	181	19	3	16	88	15	10	29	59	0.326	0.359	0.457	0.816	142	254	4	1	7	5	17
2548	874	7	6	23	Young	156	555	515	60	126	19	8	9	60	25	11	25	61	0.245	0.281	0.365	0.646	92	188	3	6	6	6	9
2549	967	8	6	26	Peak	123	459	417	58	114	16	1	28	64	1	2	33	116	0.273	0.33	0.518	0.848	150	216	4	2	3	4	7
2550	963	11	6	33	Veteran	122	398	343	41	90	13	2	8	48	5	5	45	43	0.262	0.345	0.382	0.727	117	131	1	4	5	5	12
2551	972	2	6	32	Veteran	89	256	237	19	48	8	0	4	19	0	1	13	49	0.203	0.252	0.287	0.539	61	68	3	2	1	4	10
2552	962	4	6	28	Peak	104	240	217	23	49	2	1	1	10	2	3	19	39	0.226	0.287	0.258	0.545	64	56	0	3	1	1	3
2553	942	3	6	22	Young	65	178	163	23	39	2	3	1	9	3	4	13	25	0.239	0.298	0.307	0.605	81	50	1	0	1	0	3
2554	968	1	6	26	Peak	49	130	117	9	19	1	1	3	10	0	0	11	22	0.162	0.234	0.265	0.499	49	31	0	2	0	6	4
2555	969	10	6	30	Veteran	64	94	86	12	20	1	0	3	11	0	0	7	25	0.233	0.29	0.349	0.639	90	30	0	1	0	1	4
2556	932	11	6	23	Young	21	52	44	2	7	0	0	1	1	0	0	6	9	0.159	0.275	0.227	0.502	52	10	1	1	0	0	0
2557	973	3	6	29	Peak	20	40	36	6	6	0	0	0	1	1	0	2	5	0.167	0.211	0.167	0.377	14	6	0	2	0	0	0
2558	974	12	6	32	Veteran	22	26	23	4	5	1	0	1	2	0	0	3	10	0.217	0.308	0.391	0.699	108	9	0	0	0	0	1
2559	975	5	6	34	Senior	7	13	9	0	1	0	0	0	0	0	0	3	2	0.111	0.333	0.111	0.444	40	1	0	1	0	0	1
2560	976	2	6	23	Young	7	11	8	2	1	0	0	1	1	0	0	3	3	0.125	0.364	0.5	0.864	156	4	0	0	0	1	1
2561	957	3	6	19	Young	1	2	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2562	977	16	6	20	Young	8	1	1	3	1	1	0	0	0	0	0	0	0	1	1	2	3	774	2	0	0	0	0	0
2563	958	13	6	27	Peak	40	124	110	3	7	0	0	1	7	0	0	6	51	0.064	0.111	0.091	0.202	-39	10	0	7	1	0	2
2564	920	13	6	26	Peak	42	114	96	5	16	1	1	0	5	0	0	9	35	0.167	0.241	0.198	0.439	33	19	1	6	2	0	3
2565	960	13	6	30	Veteran	37	71	64	6	9	2	0	1	8	0	0	1	11	0.141	0.147	0.219	0.366	8	14	0	3	3	0	0
2566	946	13	6	24	Young	42	65	57	1	4	0	0	0	2	0	0	2	24	0.07	0.1	0.07	0.17	-48	4	0	5	1	0	0
2567	895	13	6	27	Peak	69	28	24	1	3	0	0	0	0	0	0	2	15	0.125	0.192	0.125	0.317	-3	3	0	2	0	0	0
2568	878	13	6	23	Young	20	25	22	1	4	1	0	0	1	0	0	1	9	0.182	0.217	0.227	0.445	33	5	0	2	0	0	0
2569	978	13	6	27	Peak	36	12	9	1	1	1	0	0	0	0	0	2	3	0.111	0.273	0.222	0.495	50	2	0	1	0	0	0
2570	961	13	6	22	Young	8	11	10	2	3	1	0	0	0	0	0	0	1	0.3	0.3	0.4	0.7	108	4	0	1	0	0	0
2571	979	13	6	19	Young	21	6	6	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
2572	980	13	6	29	Peak	14	5	5	0	0	0	0	0	0	0	0	0	3	0	0	0	0	-100	0	0	0	0	0	0
2573	981	13	6	31	Veteran	29	4	4	1	1	0	0	0	0	0	0	0	0	0.25	0.25	0.25	0.5	50	1	0	0	0	0	0
2574	982	13	6	27	Peak	4	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2575	970	13	6	23	Young	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2576	983	13	6	30	Veteran	9	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2577	938	1	5	29	Peak	128	457	389	45	97	16	7	7	55	12	3	50	60	0.249	0.341	0.38	0.722	99	148	7	5	5	11	8
2578	915	2	5	23	Young	147	555	460	80	128	15	7	14	71	1	1	75	59	0.278	0.379	0.433	0.811	124	199	3	11	6	6	10
2579	953	3	5	33	Veteran	160	702	588	83	159	24	1	4	43	17	7	93	35	0.27	0.37	0.335	0.705	96	197	2	15	4	0	10
2580	887	4	5	29	Peak	165	759	695	130	208	13	10	6	48	104	13	51	57	0.299	0.347	0.373	0.72	99	259	2	7	4	1	7
2581	975	5	5	33	Veteran	77	191	157	24	37	5	1	2	12	0	0	32	31	0.236	0.365	0.318	0.684	91	50	0	2	0	4	7
2582	952	6	5	23	Young	163	711	665	120	230	27	9	27	153	18	6	33	65	0.346	0.374	0.535	0.91	148	356	2	3	8	6	17
2583	874	7	5	22	Young	157	666	600	103	171	18	10	21	85	32	7	42	72	0.285	0.334	0.453	0.787	115	272	6	10	8	10	14
2584	967	8	5	25	Peak	141	538	493	80	146	25	6	31	119	1	0	39	108	0.296	0.346	0.56	0.906	146	276	1	1	4	10	18
2585	963	2	5	32	Veteran	95	278	244	36	59	9	1	4	31	5	2	30	33	0.242	0.326	0.336	0.662	83	82	1	2	1	3	6
2586	984	3	5	24	Young	115	276	249	35	51	6	5	4	30	4	3	21	67	0.205	0.264	0.317	0.581	60	79	0	3	3	5	5
2587	985	11	5	35	Senior	80	196	158	28	44	11	3	5	30	2	0	36	32	0.278	0.418	0.481	0.899	148	76	2	0	0	6	5
2588	986	5	5	30	Veteran	53	130	111	12	26	5	1	2	13	0	0	16	23	0.234	0.333	0.351	0.685	90	39	1	1	1	1	1
2589	969	10	5	29	Peak	60	121	109	9	29	3	1	0	17	1	0	10	21	0.266	0.325	0.312	0.637	77	34	0	1	1	0	2
2590	968	1	5	25	Peak	45	102	88	16	25	5	2	4	22	0	0	12	21	0.284	0.366	0.523	0.889	143	46	0	1	1	1	4
2591	987	1	5	30	Veteran	35	97	88	7	16	2	0	3	16	0	0	6	17	0.182	0.24	0.307	0.546	50	27	1	1	1	0	2
2592	988	2	5	24	Young	92	73	62	9	16	2	0	2	7	1	0	10	20	0.258	0.37	0.387	0.757	110	24	1	0	0	1	0
2593	861	6	5	20	Young	6	11	11	0	3	0	0	0	0	0	0	0	3	0.273	0.273	0.273	0.545	51	3	0	0	0	0	0
2594	962	4	5	27	Peak	15	4	2	3	0	0	0	0	0	0	0	2	0	0	0.5	0	0.5	52	0	0	0	0	0	0
2595	920	13	5	25	Peak	43	126	111	9	22	4	1	0	14	0	1	5	29	0.198	0.246	0.252	0.498	38	28	2	8	0	0	4
2596	960	13	5	29	Peak	40	96	88	6	14	2	0	1	5	0	0	2	8	0.159	0.187	0.216	0.403	11	19	1	5	0	0	1
2597	958	13	5	26	Peak	28	73	69	1	6	0	0	1	4	0	0	2	42	0.087	0.113	0.13	0.243	-33	9	0	2	0	0	3
2598	989	13	5	25	Peak	40	69	66	4	5	0	0	2	3	0	0	2	33	0.076	0.103	0.167	0.27	-27	11	0	1	0	0	1
2599	902	13	5	19	Young	19	34	33	1	7	0	0	0	0	0	0	0	17	0.212	0.212	0.212	0.424	18	7	0	1	0	0	0
2600	981	13	5	30	Veteran	64	28	28	1	6	0	0	0	3	0	0	0	5	0.214	0.214	0.214	0.429	19	6	0	0	0	0	0
2601	878	13	5	22	Young	19	27	25	0	2	0	0	0	0	0	0	1	9	0.08	0.115	0.08	0.195	-45	2	0	1	0	0	0
2602	978	13	5	26	Peak	58	19	17	0	2	0	0	0	0	0	0	1	5	0.118	0.167	0.118	0.284	-20	2	0	1	0	0	1
2603	895	13	5	26	Peak	70	16	14	0	1	0	0	0	0	0	0	1	8	0.071	0.133	0.071	0.205	-42	1	0	1	0	0	0
2604	970	13	5	22	Young	24	7	7	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	0	0	0	0
2605	982	13	5	26	Peak	8	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2606	990	13	5	27	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2607	938	1	4	28	Peak	128	462	394	59	99	16	6	18	59	6	4	56	62	0.251	0.346	0.459	0.805	106	181	4	2	6	8	1
2608	991	2	4	30	Veteran	97	312	282	29	76	16	1	5	38	0	0	24	22	0.27	0.326	0.387	0.712	83	109	1	2	3	7	11
2609	992	3	4	30	Veteran	108	377	341	40	80	6	1	10	48	3	2	30	49	0.235	0.297	0.346	0.643	66	118	1	3	2	6	7
2610	887	4	4	28	Peak	148	687	613	105	173	12	10	1	31	35	15	59	50	0.282	0.346	0.339	0.685	78	208	1	13	1	2	6
2611	975	5	4	32	Veteran	60	217	189	27	46	7	0	8	27	0	1	20	35	0.243	0.327	0.407	0.735	89	77	4	3	1	1	5
2612	963	6	4	31	Veteran	134	561	463	79	152	25	3	17	88	7	5	89	79	0.328	0.434	0.505	0.94	142	234	1	4	4	9	9
2613	874	7	4	21	Young	128	380	339	56	86	19	6	12	45	12	5	27	46	0.254	0.316	0.451	0.767	95	153	5	6	3	4	5
2614	967	8	4	24	Young	92	292	267	36	79	10	2	15	45	0	1	21	50	0.296	0.347	0.517	0.864	120	138	1	1	2	3	12
2615	953	12	4	32	Veteran	144	531	439	74	107	26	3	4	32	8	4	79	34	0.244	0.358	0.344	0.702	83	151	0	12	1	2	7
2616	952	10	4	22	Young	132	508	460	60	128	13	2	15	58	10	4	32	53	0.278	0.325	0.413	0.738	89	190	2	9	5	4	16
2617	915	10	4	22	Young	111	301	245	42	79	15	2	10	48	0	0	48	22	0.322	0.434	0.522	0.956	146	128	1	6	1	0	3
2618	985	11	4	34	Senior	85	266	233	35	69	8	3	16	56	1	1	29	43	0.296	0.375	0.562	0.937	138	131	1	2	1	3	6
2619	993	2	4	37	Senior	109	245	215	25	52	4	0	8	31	3	1	24	43	0.242	0.313	0.372	0.685	76	80	0	2	4	1	5
2620	987	1	4	29	Peak	47	130	121	10	31	2	0	5	21	0	0	9	30	0.256	0.308	0.397	0.704	81	48	0	0	0	2	7
2621	994	12	4	23	Young	47	62	58	7	14	3	0	0	2	0	0	4	12	0.241	0.29	0.293	0.583	52	17	0	0	0	0	2
2622	995	11	4	27	Peak	34	37	33	10	8	2	1	2	6	0	1	4	3	0.242	0.324	0.545	0.87	120	18	0	0	0	1	1
2623	996	11	4	26	Peak	15	33	29	3	5	0	0	1	2	0	0	3	6	0.172	0.25	0.276	0.526	36	8	0	1	0	0	2
2624	968	1	4	24	Young	13	31	30	3	4	0	0	3	4	0	0	1	9	0.133	0.161	0.433	0.595	47	13	0	0	0	0	1
2625	997	12	4	23	Young	9	25	24	4	6	1	0	2	3	0	0	1	6	0.25	0.28	0.542	0.822	106	13	0	0	0	0	0
2626	998	11	4	24	Young	19	13	11	2	1	0	0	0	1	0	0	2	3	0.091	0.231	0.091	0.322	-12	1	0	0	0	0	1
2627	988	2	4	23	Young	5	11	8	4	4	2	0	0	0	1	0	3	1	0.5	0.636	0.75	1.386	257	6	0	0	0	0	0
2628	999	12	4	31	Veteran	19	11	9	0	1	0	0	0	1	0	0	1	1	0.111	0.2	0.111	0.311	-16	1	0	1	0	0	2
2629	920	13	4	24	Young	40	95	83	9	16	1	0	5	12	0	0	6	24	0.193	0.244	0.386	0.63	60	32	0	5	1	0	4
2630	958	13	4	25	Peak	42	94	77	3	5	0	0	0	2	0	1	9	35	0.065	0.163	0.065	0.228	-38	5	0	8	0	0	0
2631	989	13	4	24	Young	41	91	78	3	13	2	0	0	5	0	0	7	39	0.167	0.235	0.192	0.428	12	15	0	6	0	0	1
2632	960	13	4	28	Peak	32	76	69	3	16	2	0	0	7	0	0	2	8	0.232	0.25	0.261	0.511	33	18	0	4	1	0	2
2633	1000	13	4	31	Veteran	40	33	27	3	4	1	0	0	0	0	0	3	12	0.148	0.233	0.185	0.419	10	5	0	3	0	0	0
2634	1001	13	4	27	Peak	50	21	18	0	0	0	0	0	0	0	0	0	5	0	0	0	0	-100	0	0	3	0	0	1
2635	978	13	4	25	Peak	53	15	13	2	2	0	0	0	1	0	0	1	2	0.154	0.267	0.154	0.421	13	2	1	0	0	0	0
2636	895	13	4	25	Peak	53	14	12	2	1	0	0	0	0	0	0	2	8	0.083	0.214	0.083	0.298	-19	1	0	0	0	0	0
2637	970	13	4	21	Young	4	4	4	0	1	0	0	0	0	0	0	0	2	0.25	0.25	0.25	0.5	30	1	0	0	0	0	0
2638	1002	13	4	25	Peak	28	3	3	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2639	981	13	4	29	Peak	5	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2640	1003	13	4	28	Peak	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2641	938	1	3	27	Peak	103	340	287	22	61	15	3	8	42	7	6	44	53	0.213	0.323	0.369	0.693	85	106	4	3	2	6	1
2642	991	2	3	29	Peak	133	493	440	56	142	26	3	5	78	1	0	36	24	0.323	0.368	0.43	0.798	113	189	1	7	9	2	9
2643	992	3	3	29	Peak	139	547	477	60	122	23	2	8	40	5	5	48	75	0.256	0.321	0.363	0.684	83	173	1	14	7	2	18
2644	887	4	3	27	Peak	148	559	516	75	152	15	2	0	27	50	12	35	47	0.295	0.342	0.331	0.673	81	171	3	3	2	8	11
2645	953	5	3	31	Veteran	151	670	557	96	138	20	2	5	40	12	9	96	28	0.248	0.359	0.318	0.677	83	177	3	9	4	1	6
2646	963	6	3	30	Veteran	138	547	469	74	140	21	6	13	69	6	10	67	53	0.299	0.383	0.452	0.835	123	212	1	4	6	4	21
2647	952	7	3	21	Young	110	374	352	43	97	18	1	11	44	6	2	13	35	0.276	0.302	0.426	0.728	93	150	2	3	4	2	6
2648	967	8	3	23	Young	117	487	448	54	120	15	2	23	77	0	1	32	108	0.268	0.32	0.464	0.784	107	208	3	2	2	1	8
2649	985	11	3	33	Veteran	101	285	235	38	57	13	5	14	36	1	0	46	54	0.243	0.366	0.519	0.885	134	122	1	1	2	8	7
2650	993	2	3	36	Senior	101	231	197	22	39	8	1	8	30	0	1	26	37	0.198	0.291	0.371	0.661	76	73	1	4	3	1	5
2651	996	7	3	25	Peak	64	181	168	23	46	7	1	9	29	0	1	8	34	0.274	0.306	0.488	0.794	109	82	1	1	3	1	1
2652	987	1	3	28	Peak	47	154	138	22	39	4	1	8	19	0	0	12	29	0.283	0.353	0.5	0.853	126	69	3	1	0	3	2
2653	1004	1	3	30	Veteran	58	106	90	11	21	4	0	2	9	1	1	15	17	0.233	0.343	0.344	0.687	85	31	0	1	0	2	0
2654	874	7	3	20	Young	22	94	88	12	28	6	1	2	10	3	5	4	12	0.318	0.348	0.477	0.825	119	42	0	2	0	2	1
2655	1005	6	3	28	Peak	52	88	79	8	17	3	0	3	11	0	0	8	24	0.215	0.284	0.367	0.651	73	29	0	0	1	1	0
2656	997	5	3	22	Young	18	66	60	2	10	1	1	0	5	0	0	1	15	0.167	0.172	0.217	0.389	3	13	0	2	3	0	0
2657	999	12	3	30	Veteran	48	64	60	6	16	4	0	0	6	2	0	2	6	0.267	0.29	0.333	0.624	67	20	0	2	0	1	2
2658	994	12	3	22	Young	21	56	55	1	10	1	0	1	6	1	0	0	6	0.182	0.196	0.255	0.451	20	14	1	0	0	0	1
2659	915	11	3	21	Young	14	45	37	6	4	0	3	1	3	0	0	7	12	0.108	0.25	0.351	0.601	59	13	0	1	0	0	1
2660	968	1	3	23	Young	6	26	24	4	8	2	0	1	3	0	0	1	4	0.333	0.385	0.542	0.926	145	13	1	0	0	0	0
2661	1006	16	3	35	Senior	26	26	25	1	5	0	0	1	1	0	0	1	8	0.2	0.231	0.32	0.551	46	8	0	0	0	0	1
2662	1007	11	3	30	Veteran	9	17	14	1	2	0	0	0	0	0	0	3	2	0.143	0.294	0.143	0.437	22	2	0	0	0	1	0
2663	1008	8	3	38	Senior	8	10	10	1	2	0	1	0	1	0	0	0	2	0.2	0.2	0.4	0.6	56	4	0	0	0	0	0
2664	1009	8	3	31	Veteran	4	5	5	0	1	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	8	1	0	0	0	0	1
2665	920	13	3	23	Young	41	99	83	3	13	6	2	0	4	0	0	6	32	0.157	0.211	0.277	0.488	30	23	0	9	1	0	0
2666	960	13	3	27	Peak	34	83	66	3	9	0	0	0	3	0	0	5	15	0.136	0.205	0.136	0.342	-6	9	1	10	1	0	0
2667	989	13	3	23	Young	38	74	64	7	9	1	0	2	7	0	0	3	35	0.141	0.179	0.25	0.429	14	16	0	7	0	0	1
2668	958	13	3	24	Young	37	64	57	1	7	0	0	0	1	0	0	3	28	0.123	0.167	0.123	0.289	-21	7	0	4	0	0	1
2669	1000	13	3	30	Veteran	21	43	36	2	2	0	0	0	2	0	0	4	16	0.056	0.15	0.056	0.206	-42	2	0	3	0	0	1
2670	978	13	3	24	Young	57	41	37	1	6	0	1	1	2	0	0	1	7	0.162	0.184	0.297	0.482	26	11	0	3	0	0	2
2671	981	13	3	28	Peak	58	29	24	3	4	1	0	0	1	0	0	1	8	0.167	0.2	0.208	0.408	10	5	0	4	0	0	1
2672	1010	13	3	27	Peak	24	13	10	2	2	0	0	0	0	0	0	1	6	0.2	0.273	0.2	0.473	29	2	0	2	0	0	0
2673	1003	13	3	27	Peak	22	7	7	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2674	1011	13	3	25	Peak	9	6	6	0	2	0	0	0	0	0	0	0	1	0.333	0.333	0.333	0.667	79	2	0	0	0	0	0
2675	1002	13	3	24	Young	1	3	3	1	1	1	0	0	0	0	0	0	1	0.333	0.333	0.667	1	160	2	0	0	0	0	0
2676	1012	13	3	33	Veteran	13	2	2	1	1	1	0	0	0	0	0	0	1	0.5	0.5	1	1.5	290	2	0	0	0	0	0
2677	970	13	3	20	Young	3	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2678	938	1	2	26	Peak	118	461	397	39	92	14	7	10	38	7	5	52	69	0.232	0.322	0.378	0.7	81	150	3	5	4	11	7
2679	993	2	2	35	Senior	124	480	413	57	114	19	2	25	80	3	2	58	92	0.276	0.367	0.513	0.88	125	212	3	3	3	6	13
2680	992	3	2	28	Peak	151	686	616	103	177	30	11	19	83	17	6	43	86	0.287	0.337	0.464	0.802	106	286	4	21	1	2	22
2681	974	4	2	28	Peak	97	292	249	21	41	7	1	4	28	3	1	37	56	0.165	0.274	0.249	0.523	37	62	1	4	1	7	8
2682	953	5	2	30	Veteran	145	655	553	91	156	18	4	3	34	23	10	96	25	0.282	0.387	0.345	0.732	92	191	0	3	3	4	3
2683	963	6	2	29	Peak	145	637	543	93	164	26	11	19	74	15	6	81	64	0.302	0.394	0.495	0.89	129	269	3	8	2	1	9
2684	996	7	2	24	Young	139	401	371	55	95	11	1	18	70	5	6	16	87	0.256	0.294	0.437	0.731	87	162	6	3	5	1	7
2685	985	8	2	32	Veteran	126	435	370	59	114	11	2	23	88	1	5	58	71	0.308	0.4	0.535	0.935	140	198	0	5	2	13	8
2686	991	10	2	28	Peak	108	351	311	37	90	14	1	8	49	0	1	26	25	0.289	0.344	0.418	0.762	97	130	2	8	4	1	12
2687	915	11	2	20	Young	118	284	244	27	58	12	1	4	23	0	4	31	29	0.238	0.324	0.344	0.668	74	84	1	6	2	2	3
2688	887	4	2	26	Peak	83	258	242	27	63	5	2	0	7	7	3	13	27	0.26	0.298	0.298	0.596	55	72	0	3	0	5	3
2689	1004	1	2	29	Peak	52	166	139	17	33	4	1	1	11	1	0	21	15	0.237	0.346	0.302	0.648	70	42	2	4	0	2	2
2690	1009	11	2	30	Veteran	53	109	94	11	24	4	0	2	14	0	1	13	23	0.255	0.343	0.362	0.704	83	34	0	1	1	2	3
2691	1008	8	2	37	Senior	50	103	93	8	27	4	0	0	13	0	0	7	11	0.29	0.333	0.333	0.667	74	31	0	1	2	2	5
2692	1013	5	2	27	Peak	21	59	52	8	8	1	0	2	4	0	0	6	12	0.154	0.241	0.288	0.53	37	15	0	1	0	0	1
2693	999	4	2	29	Peak	30	51	48	7	11	2	0	0	2	0	0	3	4	0.229	0.275	0.271	0.545	42	13	0	0	0	1	0
2694	1005	11	2	27	Peak	24	50	46	6	14	6	0	1	5	0	0	4	11	0.304	0.36	0.5	0.86	120	23	0	0	0	1	1
2695	1014	5	2	30	Veteran	11	38	33	4	10	1	0	2	5	1	0	4	7	0.303	0.395	0.515	0.91	134	17	1	0	0	0	3
2696	967	11	2	22	Young	9	23	21	2	3	0	1	1	6	0	0	2	9	0.143	0.217	0.381	0.598	51	8	0	0	0	0	0
2697	1015	11	2	28	Peak	9	9	8	2	2	0	0	0	0	1	0	1	3	0.25	0.333	0.25	0.583	55	2	0	0	0	0	0
2698	1007	16	2	29	Peak	5	5	5	1	1	0	0	0	1	0	0	0	1	0.2	0.2	0.2	0.4	4	1	0	0	0	0	0
2699	987	1	2	27	Peak	2	4	3	0	1	0	0	0	2	0	0	0	0	0.333	0.5	0.333	0.833	122	1	1	0	0	0	1
2700	952	16	2	20	Young	1	1	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2701	920	13	2	22	Young	46	104	91	9	15	1	1	4	12	0	1	4	31	0.165	0.198	0.33	0.528	34	30	0	8	1	0	2
2702	960	13	2	26	Peak	34	75	65	4	16	1	0	0	4	0	0	6	13	0.246	0.306	0.262	0.567	49	17	0	3	1	0	1
2703	958	13	2	23	Young	35	58	54	3	6	3	0	0	0	0	0	2	29	0.111	0.143	0.167	0.31	-20	9	0	2	0	0	0
2704	1000	13	2	29	Peak	29	57	52	1	3	0	0	0	3	0	0	1	28	0.058	0.075	0.058	0.133	-65	3	0	4	0	0	0
2705	1010	13	2	26	Peak	39	49	46	4	5	1	0	0	3	0	0	0	17	0.109	0.128	0.13	0.258	-33	6	1	2	0	0	0
2706	989	13	2	22	Young	35	40	36	3	7	0	0	0	3	0	0	3	15	0.194	0.256	0.194	0.451	19	7	0	1	0	0	1
2707	978	13	2	23	Young	23	34	32	3	7	0	0	2	5	0	0	1	6	0.219	0.242	0.406	0.649	65	13	0	1	0	0	0
2708	1012	13	2	32	Veteran	56	17	16	1	0	0	0	0	0	0	0	0	9	0	0	0	0	-100	0	0	1	0	0	0
2709	1016	13	2	36	Senior	36	13	12	0	1	0	0	0	0	0	0	0	4	0.083	0.083	0.083	0.167	-57	1	0	1	0	0	0
2710	1017	13	2	28	Peak	11	9	6	1	0	0	0	0	0	0	0	2	2	0	0.25	0	0.25	-28	0	0	1	0	0	0
2711	1018	13	2	32	Veteran	10	7	7	0	0	0	0	0	0	0	0	0	4	0	0	0	0	-100	0	0	0	0	0	0
2712	1019	13	2	31	Veteran	28	7	7	0	1	0	0	0	0	0	0	0	2	0.143	0.143	0.143	0.286	-25	1	0	0	0	0	0
2713	1020	13	2	29	Peak	14	6	6	1	1	1	0	0	0	0	0	0	3	0.167	0.167	0.333	0.5	26	2	0	0	0	0	0
2714	1021	13	2	27	Peak	2	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2715	1022	13	2	28	Peak	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2716	938	1	1	25	Peak	114	431	384	52	104	11	9	14	43	11	8	36	56	0.271	0.333	0.456	0.788	103	175	2	4	5	2	5
2717	993	2	1	34	Senior	141	532	475	68	123	15	1	22	64	8	2	52	87	0.259	0.33	0.434	0.764	98	206	0	2	3	3	15
2718	992	3	1	27	Peak	140	549	473	87	120	9	6	22	65	7	6	61	91	0.254	0.341	0.438	0.779	102	207	5	4	6	4	11
2719	974	4	1	27	Peak	127	495	455	52	119	15	2	17	60	14	2	28	92	0.262	0.305	0.415	0.72	86	189	1	9	2	1	17
2720	1013	5	1	26	Peak	58	221	197	25	49	5	6	9	30	1	1	19	30	0.249	0.327	0.472	0.799	106	93	4	1	0	0	6
2721	953	6	1	29	Peak	147	636	555	81	145	25	5	2	43	18	11	78	22	0.261	0.352	0.335	0.687	81	186	0	3	0	1	5
2722	985	7	1	31	Veteran	106	365	327	45	102	12	3	15	58	2	2	32	49	0.312	0.371	0.505	0.875	126	165	1	1	4	4	11
2723	1008	8	1	36	Senior	122	459	411	54	119	19	3	18	83	0	2	35	28	0.29	0.343	0.482	0.825	112	198	2	4	7	2	15
2724	1023	11	1	28	Peak	109	352	325	35	80	6	3	9	27	3	3	18	49	0.246	0.292	0.366	0.658	71	119	3	6	0	0	16
2725	991	10	1	27	Peak	99	291	253	32	70	16	5	4	29	1	1	29	21	0.277	0.352	0.427	0.779	102	108	3	1	5	0	8
2726	1024	12	1	39	Senior	59	181	147	21	33	7	2	4	17	1	2	26	15	0.224	0.337	0.381	0.718	87	56	0	6	2	0	3
2727	1004	1	1	28	Peak	63	163	142	18	31	4	0	9	17	4	1	16	26	0.218	0.306	0.437	0.743	91	62	2	3	0	1	3
2728	1025	11	1	37	Senior	65	115	101	9	25	2	1	1	14	0	1	12	11	0.248	0.322	0.317	0.639	68	32	0	0	2	0	2
2729	996	11	1	23	Young	43	112	106	11	20	2	0	5	8	2	3	5	32	0.189	0.225	0.349	0.574	47	37	0	1	0	0	0
2730	1026	2	1	29	Peak	47	110	101	13	21	1	2	7	18	0	0	8	37	0.208	0.264	0.465	0.729	85	47	0	0	1	0	4
2731	999	4	1	28	Peak	20	77	69	10	27	3	1	1	5	1	2	4	2	0.391	0.421	0.507	0.928	141	35	1	1	2	0	1
2732	1027	5	1	32	Veteran	35	70	65	8	12	3	0	1	4	0	0	5	10	0.185	0.243	0.277	0.52	35	18	0	0	0	1	3
2733	915	11	1	19	Young	15	60	53	6	15	1	0	2	8	0	0	6	7	0.283	0.35	0.415	0.765	99	22	0	0	1	0	1
2734	1028	1	1	32	Veteran	25	50	44	3	5	2	0	1	7	0	0	5	10	0.114	0.2	0.227	0.427	11	10	0	0	1	2	2
2735	1029	2	1	24	Young	12	34	30	0	4	1	0	0	4	0	0	4	6	0.133	0.235	0.167	0.402	8	5	0	0	0	1	1
2736	967	11	1	21	Young	8	30	29	3	7	1	0	1	2	0	0	1	11	0.241	0.267	0.379	0.646	66	11	0	0	0	0	1
2737	1030	6	1	22	Young	8	23	22	2	4	0	0	0	0	0	0	0	6	0.182	0.217	0.182	0.399	6	4	1	0	0	0	0
2738	1031	5	1	21	Young	8	16	15	3	3	0	0	0	0	0	0	1	4	0.2	0.25	0.2	0.45	20	3	0	0	0	0	2
2739	1032	8	1	33	Veteran	3	5	5	0	1	0	0	0	0	0	0	0	1	0.2	0.2	0.2	0.4	5	1	0	0	0	0	0
2740	960	13	1	25	Peak	42	79	71	5	9	0	0	0	4	0	0	2	17	0.127	0.147	0.127	0.273	-28	9	0	4	2	0	0
2741	920	13	1	21	Young	47	72	66	9	15	1	1	7	12	0	0	3	25	0.227	0.261	0.591	0.852	114	39	0	3	0	0	0
2742	958	13	1	22	Young	40	55	49	2	6	1	0	0	1	0	0	1	26	0.122	0.14	0.143	0.283	-26	7	0	5	0	0	0
2743	989	13	1	21	Young	27	43	40	2	2	0	0	1	1	0	0	0	24	0.05	0.05	0.125	0.175	-56	5	0	3	0	0	0
2744	1021	13	1	26	Peak	42	37	36	4	9	1	0	0	1	0	0	1	4	0.25	0.27	0.278	0.548	44	10	0	0	0	0	0
2745	1018	13	1	31	Veteran	32	29	27	1	1	0	0	0	0	0	0	1	8	0.037	0.071	0.037	0.108	-71	1	0	1	0	0	0
2746	1019	13	1	30	Veteran	45	21	20	1	1	0	0	0	0	0	0	0	10	0.05	0.05	0.05	0.1	-74	1	0	1	0	0	0
2747	1012	13	1	31	Veteran	52	21	18	0	1	0	0	0	0	0	0	2	12	0.056	0.15	0.056	0.206	-43	1	0	1	0	0	0
2748	1010	13	1	25	Peak	13	15	15	1	2	1	0	0	2	0	0	0	6	0.133	0.133	0.2	0.333	-14	3	0	0	0	0	0
2749	1033	13	1	32	Veteran	11	14	12	2	5	0	0	0	0	0	0	2	2	0.417	0.5	0.417	0.917	143	5	0	0	0	0	0
2750	1000	13	1	28	Peak	9	10	9	0	0	0	0	0	0	0	0	1	3	0	0.1	0	0.1	-71	0	0	0	0	0	0
2751	1034	13	1	21	Young	8	9	6	1	1	0	0	0	0	0	0	0	3	0.167	0.167	0.167	0.333	-12	1	0	3	0	0	0
2752	1035	13	1	28	Peak	16	8	7	0	4	1	0	0	0	0	0	1	2	0.571	0.625	0.714	1.339	249	5	0	0	0	0	0
2753	981	13	1	26	Peak	32	4	4	2	2	1	0	0	0	0	0	0	1	0.5	0.5	0.75	1.25	221	3	0	0	0	0	0
2754	1036	13	1	23	Young	3	4	4	0	0	0	0	0	0	0	0	0	2	0	0	0	0	-100	0	0	0	0	0	0
2755	1037	13	1	27	Peak	19	3	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	1	0	0	0
2756	1038	13	1	28	Peak	4	2	2	0	0	0	0	0	0	0	0	0	1	0	0	0	0	-100	0	0	0	0	0	0
2757	1039	13	1	31	Veteran	2	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	-100	0	0	0	0	0	0
2758	978	13	1	22	Young	5	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
\.


--
-- TOC entry 4938 (class 0 OID 81999)
-- Dependencies: 223
-- Data for Name: fact_contrato; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.fact_contrato (contract_id, player_id, season_id, salary, contract_type) FROM stdin;
1	1	66	12005000	Mid
2	2	66	22813000	Star
3	3	66	3400000	Arbitration
4	4	66	5669000	Arbitration
5	5	66	15065000	Star
6	6	66	4384000	Arbitration
7	7	66	9012000	Mid
8	8	66	29731000	Superstar
9	9	66	12192000	Mid
10	10	66	11915000	Mid
11	11	66	20080000	Star
12	12	66	2821000	Arbitration
13	13	66	11844000	Mid
14	14	66	10449000	Mid
15	15	66	853000	Rookie
16	16	66	908000	Rookie
17	17	66	843000	Rookie
18	18	66	727000	Rookie
19	19	66	921000	Rookie
20	20	66	869000	Rookie
21	21	66	866000	Rookie
22	22	66	767000	Rookie
23	23	66	862000	Rookie
24	24	66	805000	Rookie
25	25	66	861000	Rookie
26	26	66	743000	Rookie
27	27	66	862000	Rookie
28	28	66	936000	Rookie
29	29	66	730000	Rookie
30	30	66	931000	Rookie
31	31	66	808000	Rookie
32	32	66	908000	Rookie
33	33	66	889000	Rookie
34	34	66	842000	Rookie
35	35	66	880000	Rookie
36	36	66	910000	Rookie
37	37	66	807000	Rookie
38	38	66	791000	Rookie
39	39	66	864000	Rookie
40	40	66	894000	Rookie
41	41	66	885000	Rookie
42	42	66	892000	Rookie
43	43	66	814000	Rookie
44	44	66	897000	Rookie
45	45	66	746000	Rookie
46	46	66	838000	Rookie
47	47	66	721000	Rookie
48	48	66	790000	Rookie
49	49	66	799000	Rookie
50	50	66	806000	Rookie
51	51	66	870000	Rookie
52	52	66	804000	Rookie
53	53	66	35000000	Superstar
54	54	66	771000	Rookie
55	55	66	801000	Rookie
56	56	66	769000	Rookie
57	57	66	736000	Rookie
58	58	66	850000	Rookie
59	1	65	20234000	Star
60	2	65	27866000	Superstar
61	59	65	7037000	Arbitration
62	60	65	17638000	Star
63	5	65	13195000	Mid
64	10	65	4989000	Arbitration
65	61	65	4387000	Arbitration
66	8	65	14451000	Mid
67	62	65	5856000	Arbitration
68	15	65	26071000	Superstar
69	12	65	9711000	Mid
70	63	65	5209000	Arbitration
71	64	65	5041000	Arbitration
72	65	65	851000	Rookie
73	66	65	885000	Rookie
74	3	65	896000	Rookie
75	67	65	875000	Rookie
76	7	65	926000	Rookie
77	68	65	724000	Rookie
78	69	65	762000	Rookie
79	70	65	722000	Rookie
80	71	65	860000	Rookie
81	54	65	914000	Rookie
82	24	65	773000	Rookie
83	25	65	920000	Rookie
84	27	65	733000	Rookie
85	28	65	922000	Rookie
86	72	65	796000	Rookie
87	35	65	742000	Rookie
88	73	65	825000	Rookie
89	74	65	775000	Rookie
90	36	65	782000	Rookie
91	75	65	786000	Rookie
92	76	65	893000	Rookie
93	77	65	836000	Rookie
94	78	65	787000	Rookie
95	79	65	852000	Rookie
96	80	65	875000	Rookie
97	45	65	779000	Rookie
98	46	65	809000	Rookie
99	48	65	746000	Rookie
100	81	65	759000	Rookie
101	49	65	867000	Rookie
102	52	65	759000	Rookie
103	53	65	35000000	Superstar
104	82	65	873000	Rookie
105	83	65	743000	Rookie
106	56	65	843000	Rookie
107	57	65	775000	Rookie
108	84	65	928000	Rookie
109	58	65	824000	Rookie
110	1	64	19168000	Star
111	5	64	19172000	Star
112	60	64	23546000	Star
113	85	64	27969000	Superstar
114	62	64	15723000	Star
115	86	64	18121000	Star
116	61	64	2291000	Arbitration
117	8	64	22178000	Star
118	10	64	8431000	Mid
119	59	64	2477000	Arbitration
120	87	64	11302000	Mid
121	12	64	4600000	Arbitration
122	88	64	4164000	Arbitration
123	68	64	5733000	Arbitration
124	89	64	796000	Rookie
125	90	64	771000	Rookie
126	91	64	889000	Rookie
127	65	64	779000	Rookie
128	92	64	898000	Rookie
129	93	64	812000	Rookie
130	94	64	864000	Rookie
131	95	64	741000	Rookie
132	96	64	855000	Rookie
133	97	64	818000	Rookie
134	76	64	847000	Rookie
135	28	64	756000	Rookie
136	53	64	35000000	Superstar
137	98	64	906000	Rookie
138	99	64	767000	Rookie
139	56	64	741000	Rookie
140	80	64	725000	Rookie
141	82	64	859000	Rookie
142	100	64	851000	Rookie
143	25	64	838000	Rookie
144	48	64	770000	Rookie
145	57	64	804000	Rookie
146	35	64	848000	Rookie
147	78	64	827000	Rookie
148	101	64	933000	Rookie
149	43	64	749000	Rookie
150	102	64	870000	Rookie
151	54	64	807000	Rookie
152	103	64	812000	Rookie
153	104	64	875000	Rookie
154	58	64	870000	Rookie
155	36	64	934000	Rookie
156	105	64	748000	Rookie
157	106	64	18000000	Star
158	107	64	876000	Rookie
159	108	64	845000	Rookie
160	27	64	779000	Rookie
161	109	64	737000	Rookie
162	110	64	739000	Rookie
163	111	64	913000	Rookie
164	112	64	761000	Rookie
165	40	64	790000	Rookie
166	77	64	769000	Rookie
167	113	64	797000	Rookie
168	114	64	735000	Rookie
169	115	64	832000	Rookie
170	84	64	735000	Rookie
171	1	63	22889000	Star
172	5	63	8473000	Mid
173	13	63	5064000	Arbitration
174	85	63	26587000	Superstar
175	62	63	15432000	Star
176	86	63	19017000	Star
177	61	63	6342000	Arbitration
178	8	63	25718000	Superstar
179	116	63	5530000	Arbitration
180	10	63	23167000	Star
181	12	63	5503000	Arbitration
182	65	63	840000	Rookie
183	59	63	878000	Rookie
184	87	63	820000	Rookie
185	97	63	733000	Rookie
186	68	63	841000	Rookie
187	117	63	927000	Rookie
188	25	63	758000	Rookie
189	109	63	869000	Rookie
190	28	63	763000	Rookie
191	118	63	836000	Rookie
192	104	63	741000	Rookie
193	40	63	817000	Rookie
194	76	63	883000	Rookie
195	77	63	795000	Rookie
196	43	63	864000	Rookie
197	106	63	18000000	Star
198	45	63	920000	Rookie
199	50	63	771000	Rookie
200	53	63	35000000	Superstar
201	119	63	753000	Rookie
202	82	63	934000	Rookie
203	56	63	920000	Rookie
204	120	63	837000	Rookie
205	58	63	902000	Rookie
206	121	63	833000	Rookie
207	122	63	855000	Rookie
208	123	63	739000	Rookie
209	12	62	3067000	Arbitration
210	5	62	7832000	Arbitration
211	13	62	6605000	Arbitration
212	85	62	8495000	Mid
213	62	62	8857000	Mid
214	116	62	7420000	Arbitration
215	86	62	4644000	Arbitration
216	61	62	7306000	Arbitration
217	10	62	4858000	Arbitration
218	124	62	4477000	Arbitration
219	87	62	6297000	Arbitration
220	125	62	2001000	Arbitration
221	1	62	8771000	Mid
222	126	62	9170000	Mid
223	59	62	576000	Rookie
224	127	62	599000	Rookie
225	65	62	586000	Rookie
226	128	62	647000	Rookie
227	129	62	583000	Rookie
228	130	62	659000	Rookie
229	131	62	637000	Rookie
230	132	62	539000	Rookie
231	133	62	649000	Rookie
232	76	62	525000	Rookie
233	53	62	35000000	Superstar
234	134	62	565000	Rookie
235	122	62	641000	Rookie
236	135	62	640000	Rookie
237	28	62	630000	Rookie
238	56	62	628000	Rookie
239	25	62	554000	Rookie
240	136	62	520000	Rookie
241	43	62	569000	Rookie
242	137	62	534000	Rookie
243	104	62	613000	Rookie
244	138	62	560000	Rookie
245	45	62	656000	Rookie
246	121	62	605000	Rookie
247	106	62	18000000	Star
248	139	62	528000	Rookie
249	109	62	639000	Rookie
250	140	62	648000	Rookie
251	141	62	582000	Rookie
252	50	62	600000	Rookie
253	119	62	624000	Rookie
254	123	62	534000	Rookie
255	142	61	9519000	Mid
256	61	61	4305000	Arbitration
257	143	61	811000	Rookie
258	10	61	4886000	Arbitration
259	62	61	11093000	Mid
260	116	61	6611000	Arbitration
261	13	61	7048000	Arbitration
262	144	61	11592000	Mid
263	145	61	8993000	Mid
264	5	61	15379000	Star
265	146	61	7271000	Arbitration
266	12	61	2269000	Arbitration
267	147	61	1436000	Rookie
268	148	61	2499000	Arbitration
269	85	61	2772000	Arbitration
270	124	61	605000	Rookie
271	149	61	540000	Rookie
272	126	61	602000	Rookie
273	150	61	606000	Rookie
274	151	61	531000	Rookie
275	152	61	517000	Rookie
276	131	61	626000	Rookie
277	53	61	35000000	Superstar
278	120	61	516000	Rookie
279	76	61	659000	Rookie
280	135	61	516000	Rookie
281	134	61	613000	Rookie
282	122	61	657000	Rookie
283	133	61	544000	Rookie
284	109	61	529000	Rookie
285	45	61	526000	Rookie
286	119	61	554000	Rookie
287	104	61	523000	Rookie
288	136	61	613000	Rookie
289	153	61	517000	Rookie
290	46	61	585000	Rookie
291	28	61	659000	Rookie
292	154	61	631000	Rookie
293	139	61	601000	Rookie
294	155	61	554000	Rookie
295	156	61	602000	Rookie
296	157	61	588000	Rookie
297	158	61	572000	Rookie
298	159	61	527000	Rookie
299	160	61	642000	Rookie
300	138	61	576000	Rookie
301	161	61	537000	Rookie
302	141	61	563000	Rookie
303	106	61	18000000	Star
304	162	61	633000	Rookie
305	163	61	619000	Rookie
306	121	61	625000	Rookie
307	142	60	3549000	Arbitration
308	61	60	4778000	Arbitration
309	143	60	2574000	Arbitration
310	85	60	4305000	Arbitration
311	62	60	12732000	Mid
312	10	60	9549000	Mid
313	116	60	3241000	Arbitration
314	144	60	8649000	Mid
315	147	60	2487000	Arbitration
316	13	60	2876000	Arbitration
317	12	60	8343000	Mid
318	164	60	2754000	Arbitration
319	165	60	2305000	Arbitration
320	151	60	5640000	Arbitration
321	166	60	582000	Rookie
322	15	60	524000	Rookie
323	167	60	591000	Rookie
324	168	60	577000	Rookie
325	169	60	636000	Rookie
326	124	60	522000	Rookie
327	149	60	582000	Rookie
328	170	60	530000	Rookie
329	171	60	557000	Rookie
330	172	60	620000	Rookie
331	173	60	580000	Rookie
332	152	60	565000	Rookie
333	53	60	35000000	Superstar
334	120	60	577000	Rookie
335	135	60	627000	Rookie
336	134	60	643000	Rookie
337	133	60	653000	Rookie
338	174	60	627000	Rookie
339	175	60	556000	Rookie
340	122	60	612000	Rookie
341	28	60	574000	Rookie
342	136	60	546000	Rookie
343	106	60	18000000	Star
344	176	60	513000	Rookie
345	119	60	645000	Rookie
346	177	60	578000	Rookie
347	178	60	605000	Rookie
348	157	60	608000	Rookie
349	179	60	644000	Rookie
350	159	60	604000	Rookie
351	76	60	601000	Rookie
352	154	60	518000	Rookie
353	153	60	586000	Rookie
354	180	60	530000	Rookie
355	163	60	620000	Rookie
356	181	60	585000	Rookie
357	182	60	611000	Rookie
358	183	60	514000	Rookie
359	142	59	7639000	Arbitration
360	164	59	5284000	Arbitration
361	147	59	2470000	Arbitration
362	85	59	3650000	Arbitration
363	62	59	7312000	Arbitration
364	184	59	3429000	Arbitration
365	116	59	7220000	Arbitration
366	144	59	3871000	Arbitration
367	15	59	3706000	Arbitration
368	13	59	1727000	Arbitration
369	185	59	3102000	Arbitration
370	186	59	1149000	Rookie
371	151	59	5563000	Arbitration
372	167	59	2021000	Arbitration
373	187	59	522000	Rookie
374	170	59	608000	Rookie
375	171	59	624000	Rookie
376	10	59	548000	Rookie
377	188	59	511000	Rookie
378	12	59	520000	Rookie
379	168	59	655000	Rookie
380	189	59	552000	Rookie
381	190	59	625000	Rookie
382	191	59	603000	Rookie
383	134	59	566000	Rookie
384	192	59	539000	Rookie
385	53	59	35000000	Superstar
386	122	59	601000	Rookie
387	28	59	625000	Rookie
388	120	59	606000	Rookie
389	193	59	588000	Rookie
390	174	59	514000	Rookie
391	135	59	655000	Rookie
392	136	59	629000	Rookie
393	194	59	552000	Rookie
394	195	59	657000	Rookie
395	182	59	599000	Rookie
396	196	59	596000	Rookie
397	197	59	621000	Rookie
398	157	59	631000	Rookie
399	198	59	607000	Rookie
400	133	59	527000	Rookie
401	199	59	559000	Rookie
402	181	59	649000	Rookie
403	119	59	542000	Rookie
404	176	59	564000	Rookie
405	200	59	573000	Rookie
406	201	59	574000	Rookie
407	154	59	601000	Rookie
408	138	59	651000	Rookie
409	106	59	18000000	Star
410	202	59	526000	Rookie
411	203	59	538000	Rookie
412	204	59	643000	Rookie
413	177	59	606000	Rookie
414	142	58	4127000	Arbitration
415	164	58	10096000	Mid
416	184	58	6738000	Arbitration
417	205	58	2360000	Arbitration
418	62	58	11393000	Mid
419	187	58	4138000	Arbitration
420	116	58	3747000	Arbitration
421	144	58	3659000	Arbitration
422	168	58	10203000	Mid
423	167	58	6239000	Arbitration
424	206	58	3105000	Arbitration
425	13	58	5898000	Arbitration
426	186	58	3586000	Arbitration
427	147	58	1991000	Arbitration
428	207	58	3480000	Arbitration
429	85	58	5429000	Arbitration
430	208	58	514000	Rookie
431	209	58	533000	Rookie
432	210	58	528000	Rookie
433	211	58	618000	Rookie
434	12	58	632000	Rookie
435	212	58	540000	Rookie
436	213	58	585000	Rookie
437	214	58	635000	Rookie
438	53	58	35000000	Superstar
439	215	58	590000	Rookie
440	196	58	597000	Rookie
441	194	58	585000	Rookie
442	120	58	553000	Rookie
443	198	58	594000	Rookie
444	174	58	612000	Rookie
445	216	58	640000	Rookie
446	217	58	604000	Rookie
447	218	58	623000	Rookie
448	219	58	532000	Rookie
449	154	58	578000	Rookie
450	220	58	509000	Rookie
451	221	58	545000	Rookie
452	222	58	618000	Rookie
453	223	58	659000	Rookie
454	176	58	523000	Rookie
455	201	58	569000	Rookie
456	224	58	629000	Rookie
457	225	58	539000	Rookie
458	182	58	592000	Rookie
459	226	58	619000	Rookie
460	227	58	601000	Rookie
461	228	58	536000	Rookie
462	229	58	562000	Rookie
463	230	58	627000	Rookie
464	138	58	592000	Rookie
465	106	58	18000000	Star
466	197	58	623000	Rookie
467	119	58	513000	Rookie
468	177	58	621000	Rookie
469	186	57	841000	Rookie
470	164	57	11569000	Mid
471	231	57	4401000	Arbitration
472	232	57	8729000	Mid
473	208	57	3212000	Arbitration
474	187	57	4654000	Arbitration
475	168	57	3285000	Arbitration
476	144	57	6748000	Arbitration
477	145	57	8915000	Mid
478	62	57	9276000	Mid
479	167	57	14465000	Mid
480	233	57	1588000	Arbitration
481	4	57	1108000	Rookie
482	234	57	567000	Rookie
483	235	57	570000	Rookie
484	214	57	613000	Rookie
485	236	57	508000	Rookie
486	116	57	602000	Rookie
487	237	57	562000	Rookie
488	238	57	628000	Rookie
489	239	57	522000	Rookie
490	206	57	597000	Rookie
491	240	57	581000	Rookie
492	241	57	605000	Rookie
493	242	57	517000	Rookie
494	53	57	35000000	Superstar
495	215	57	593000	Rookie
496	243	57	593000	Rookie
497	133	57	599000	Rookie
498	244	57	610000	Rookie
499	245	57	630000	Rookie
500	246	57	549000	Rookie
501	198	57	633000	Rookie
502	247	57	583000	Rookie
503	248	57	519000	Rookie
504	249	57	516000	Rookie
505	250	57	558000	Rookie
506	251	57	627000	Rookie
507	138	57	615000	Rookie
508	106	57	18000000	Star
509	252	57	586000	Rookie
510	229	57	575000	Rookie
511	253	57	530000	Rookie
512	223	57	557000	Rookie
513	254	57	574000	Rookie
514	255	57	521000	Rookie
515	197	57	541000	Rookie
516	119	57	599000	Rookie
517	256	57	620000	Rookie
518	186	56	3505000	Arbitration
519	164	56	11457000	Mid
520	257	56	2110000	Arbitration
521	232	56	13337000	Mid
522	208	56	5031000	Arbitration
523	187	56	6454000	Arbitration
524	168	56	3951000	Arbitration
525	144	56	6191000	Arbitration
526	258	56	3002000	Arbitration
527	259	56	1945000	Arbitration
528	145	56	5652000	Arbitration
529	260	56	968000	Rookie
530	234	56	1699000	Arbitration
531	167	56	7956000	Arbitration
532	261	56	1009000	Rookie
533	231	56	1478000	Rookie
534	262	56	511000	Rookie
535	263	56	634000	Rookie
536	264	56	549000	Rookie
537	265	56	586000	Rookie
538	266	56	553000	Rookie
539	267	56	651000	Rookie
540	233	56	547000	Rookie
541	53	56	35000000	Superstar
542	215	56	640000	Rookie
543	133	56	636000	Rookie
544	268	56	536000	Rookie
545	269	56	630000	Rookie
546	249	56	577000	Rookie
547	244	56	581000	Rookie
548	270	56	528000	Rookie
549	271	56	520000	Rookie
550	272	56	618000	Rookie
551	273	56	583000	Rookie
552	254	56	574000	Rookie
553	229	56	619000	Rookie
554	274	56	624000	Rookie
555	251	56	532000	Rookie
556	106	56	18000000	Star
557	275	56	528000	Rookie
558	197	56	622000	Rookie
559	276	56	608000	Rookie
560	250	56	653000	Rookie
561	277	56	518000	Rookie
562	278	56	516000	Rookie
563	253	56	550000	Rookie
564	279	56	547000	Rookie
565	280	56	545000	Rookie
566	281	56	645000	Rookie
567	186	55	4443000	Arbitration
568	282	55	2197000	Arbitration
569	257	55	2458000	Arbitration
570	231	55	922000	Rookie
571	261	55	6420000	Arbitration
572	283	55	1825000	Arbitration
573	145	55	13586000	Mid
574	168	55	7409000	Arbitration
575	284	55	1715000	Arbitration
576	285	55	1609000	Arbitration
577	232	55	4030000	Arbitration
578	260	55	3905000	Arbitration
579	286	55	2869000	Arbitration
580	267	55	2333000	Arbitration
581	287	55	4842000	Arbitration
582	208	55	667000	Rookie
583	164	55	5997000	Arbitration
584	288	55	1297000	Rookie
585	167	55	593000	Rookie
586	262	55	650000	Rookie
587	259	55	515000	Rookie
588	289	55	571000	Rookie
589	266	55	547000	Rookie
590	290	55	619000	Rookie
591	234	55	657000	Rookie
592	53	55	35000000	Superstar
593	269	55	607000	Rookie
594	291	55	538000	Rookie
595	272	55	594000	Rookie
596	202	55	578000	Rookie
597	273	55	655000	Rookie
598	244	55	600000	Rookie
599	292	55	561000	Rookie
600	249	55	525000	Rookie
601	248	55	531000	Rookie
602	293	55	542000	Rookie
603	278	55	546000	Rookie
604	229	55	637000	Rookie
605	294	55	593000	Rookie
606	279	55	587000	Rookie
607	274	55	525000	Rookie
608	295	55	638000	Rookie
609	106	55	18000000	Star
610	296	55	518000	Rookie
611	276	55	615000	Rookie
612	256	55	590000	Rookie
613	250	55	520000	Rookie
614	297	55	577000	Rookie
615	298	55	581000	Rookie
616	281	55	533000	Rookie
617	299	54	5483000	Arbitration
618	282	54	6695000	Arbitration
619	300	54	3813000	Arbitration
620	231	54	1636000	Arbitration
621	208	54	1090000	Rookie
622	285	54	2879000	Arbitration
623	145	54	12326000	Mid
624	168	54	3741000	Arbitration
625	301	54	2290000	Arbitration
626	284	54	6532000	Arbitration
627	302	54	3341000	Arbitration
628	290	54	2282000	Arbitration
629	303	54	3123000	Arbitration
630	304	54	840000	Rookie
631	262	54	835000	Rookie
632	186	54	4125000	Arbitration
633	305	54	558000	Rookie
634	306	54	623000	Rookie
635	307	54	587000	Rookie
636	308	54	539000	Rookie
637	309	54	641000	Rookie
638	289	54	641000	Rookie
639	234	54	640000	Rookie
640	310	54	544000	Rookie
641	311	54	576000	Rookie
642	312	54	657000	Rookie
643	313	54	625000	Rookie
644	53	54	35000000	Superstar
645	314	54	517000	Rookie
646	272	54	578000	Rookie
647	273	54	646000	Rookie
648	295	54	590000	Rookie
649	315	54	583000	Rookie
650	292	54	524000	Rookie
651	316	54	607000	Rookie
652	296	54	633000	Rookie
653	317	54	565000	Rookie
654	278	54	626000	Rookie
655	318	54	654000	Rookie
656	274	54	539000	Rookie
657	319	54	587000	Rookie
658	297	54	551000	Rookie
659	320	54	628000	Rookie
660	321	54	595000	Rookie
661	106	54	18000000	Star
662	256	54	629000	Rookie
663	322	54	568000	Rookie
664	298	54	647000	Rookie
665	125	53	2667000	Arbitration
666	282	53	3701000	Arbitration
667	323	53	4247000	Arbitration
668	304	53	10827000	Mid
669	302	53	3355000	Arbitration
670	324	53	8029000	Mid
671	145	53	5484000	Arbitration
672	168	53	8504000	Mid
673	300	53	5055000	Arbitration
674	325	53	1961000	Arbitration
675	326	53	1946000	Arbitration
676	327	53	1672000	Arbitration
677	328	53	1074000	Rookie
678	329	53	2505000	Arbitration
679	311	53	748000	Rookie
680	186	53	2500000	Arbitration
681	307	53	601000	Rookie
682	299	53	520000	Rookie
683	330	53	642000	Rookie
684	308	53	630000	Rookie
685	305	53	584000	Rookie
686	331	53	655000	Rookie
687	332	53	571000	Rookie
688	333	53	657000	Rookie
689	310	53	609000	Rookie
690	53	53	35000000	Superstar
691	272	53	533000	Rookie
692	314	53	642000	Rookie
693	320	53	573000	Rookie
694	296	53	532000	Rookie
695	273	53	509000	Rookie
696	334	53	593000	Rookie
697	335	53	588000	Rookie
698	336	53	617000	Rookie
699	337	53	643000	Rookie
700	321	53	520000	Rookie
701	318	53	619000	Rookie
702	106	53	18000000	Star
703	338	53	638000	Rookie
704	339	53	632000	Rookie
705	340	53	590000	Rookie
706	341	53	616000	Rookie
707	342	53	555000	Rookie
708	343	53	579000	Rookie
709	344	53	633000	Rookie
710	345	53	577000	Rookie
711	276	53	562000	Rookie
712	256	53	583000	Rookie
713	322	53	634000	Rookie
714	125	52	1155000	Rookie
715	282	52	1815000	Arbitration
716	346	52	3324000	Arbitration
717	304	52	3552000	Arbitration
718	302	52	3220000	Arbitration
719	324	52	4188000	Arbitration
720	145	52	2927000	Arbitration
721	168	52	4735000	Arbitration
722	347	52	2801000	Arbitration
723	348	52	600000	Rookie
724	310	52	1059000	Rookie
725	330	52	1323000	Rookie
726	327	52	332000	Rookie
727	323	52	376000	Rookie
728	313	52	342000	Rookie
729	349	52	388000	Rookie
730	350	52	357000	Rookie
731	311	52	311000	Rookie
732	351	52	361000	Rookie
733	352	52	329000	Rookie
734	186	52	362000	Rookie
735	353	52	306000	Rookie
736	331	52	316000	Rookie
737	354	52	377000	Rookie
738	272	52	320000	Rookie
739	53	52	35000000	Superstar
740	314	52	325000	Rookie
741	355	52	358000	Rookie
742	336	52	362000	Rookie
743	320	52	346000	Rookie
744	315	52	327000	Rookie
745	356	52	319000	Rookie
746	341	52	303000	Rookie
747	357	52	327000	Rookie
748	318	52	359000	Rookie
749	335	52	384000	Rookie
750	256	52	378000	Rookie
751	276	52	369000	Rookie
752	358	52	371000	Rookie
753	359	52	360000	Rookie
754	360	52	323000	Rookie
755	322	52	382000	Rookie
756	338	52	360000	Rookie
757	361	52	350000	Rookie
758	321	52	310000	Rookie
759	340	52	340000	Rookie
760	362	52	341000	Rookie
761	125	51	2889000	Arbitration
762	282	51	2096000	Arbitration
763	363	51	1150000	Rookie
764	364	51	1878000	Arbitration
765	323	51	1110000	Rookie
766	347	51	1346000	Rookie
767	145	51	1236000	Rookie
768	168	51	5078000	Arbitration
769	365	51	894000	Rookie
770	302	51	2114000	Arbitration
771	324	51	5547000	Arbitration
772	366	51	2135000	Arbitration
773	304	51	8122000	Mid
774	367	51	1512000	Arbitration
775	331	51	654000	Rookie
776	368	51	347000	Rookie
777	369	51	387000	Rookie
778	370	51	365000	Rookie
779	371	51	327000	Rookie
780	372	51	375000	Rookie
781	373	51	325000	Rookie
782	353	51	379000	Rookie
783	374	51	310000	Rookie
784	186	51	363000	Rookie
785	375	51	349000	Rookie
786	272	51	309000	Rookie
787	314	51	322000	Rookie
788	53	51	35000000	Superstar
789	376	51	342000	Rookie
790	355	51	327000	Rookie
791	321	51	354000	Rookie
792	377	51	327000	Rookie
793	378	51	15000000	Mid
794	379	51	367000	Rookie
795	380	51	304000	Rookie
796	322	51	381000	Rookie
797	381	51	377000	Rookie
798	382	51	360000	Rookie
799	360	51	353000	Rookie
800	256	51	380000	Rookie
801	383	51	317000	Rookie
802	384	51	307000	Rookie
803	318	51	322000	Rookie
804	385	51	372000	Rookie
805	386	51	303000	Rookie
806	341	51	352000	Rookie
807	125	50	4293000	Arbitration
808	282	50	4584000	Arbitration
809	363	50	2435000	Arbitration
810	304	50	1001000	Rookie
811	366	50	3302000	Arbitration
812	387	50	1531000	Arbitration
813	347	50	1050000	Rookie
814	168	50	3275000	Arbitration
815	145	50	2870000	Arbitration
816	388	50	4349000	Arbitration
817	352	50	1748000	Arbitration
818	389	50	2500000	Mid
819	390	50	1108000	Rookie
820	370	50	932000	Rookie
821	391	50	339000	Rookie
822	392	50	329000	Rookie
823	393	50	339000	Rookie
824	394	50	370000	Rookie
825	367	50	354000	Rookie
826	368	50	380000	Rookie
827	331	50	340000	Rookie
828	395	50	355000	Rookie
829	396	50	357000	Rookie
830	376	50	353000	Rookie
831	375	50	363000	Rookie
832	272	50	321000	Rookie
833	354	50	346000	Rookie
834	397	50	309000	Rookie
835	398	50	335000	Rookie
836	399	50	344000	Rookie
837	355	50	359000	Rookie
838	379	50	386000	Rookie
839	321	50	354000	Rookie
840	357	50	367000	Rookie
841	383	50	346000	Rookie
842	400	50	357000	Rookie
843	401	50	306000	Rookie
844	381	50	323000	Rookie
845	201	50	333000	Rookie
846	385	50	343000	Rookie
847	386	50	304000	Rookie
848	402	50	313000	Rookie
849	403	50	325000	Rookie
850	246	50	387000	Rookie
851	322	50	330000	Rookie
852	125	49	1724000	Arbitration
853	366	49	4371000	Arbitration
854	363	49	2934000	Arbitration
855	304	49	4574000	Arbitration
856	388	49	1643000	Arbitration
857	168	49	3527000	Arbitration
858	404	49	1009000	Rookie
859	405	49	3918000	Arbitration
860	406	49	2338000	Arbitration
861	390	49	4916000	Arbitration
862	389	49	2500000	Mid
863	145	49	1059000	Rookie
864	407	49	829000	Rookie
865	408	49	1824000	Arbitration
866	353	49	2342000	Arbitration
867	409	49	1119000	Rookie
868	410	49	2932000	Arbitration
869	282	49	3320000	Arbitration
870	303	49	308000	Rookie
871	395	49	356000	Rookie
872	411	49	310000	Rookie
873	412	49	331000	Rookie
874	413	49	346000	Rookie
875	414	49	379000	Rookie
876	415	49	344000	Rookie
877	416	49	363000	Rookie
878	367	49	389000	Rookie
879	417	49	312000	Rookie
880	375	49	325000	Rookie
881	376	49	336000	Rookie
882	418	49	338000	Rookie
883	397	49	337000	Rookie
884	377	49	382000	Rookie
885	272	49	364000	Rookie
886	398	49	355000	Rookie
887	419	49	328000	Rookie
888	420	49	374000	Rookie
889	321	49	386000	Rookie
890	355	49	374000	Rookie
891	322	49	300000	Rookie
892	421	49	357000	Rookie
893	383	49	305000	Rookie
894	422	49	323000	Rookie
895	423	49	305000	Rookie
896	424	49	354000	Rookie
897	381	49	362000	Rookie
898	425	49	310000	Rookie
899	426	49	335000	Rookie
900	427	49	341000	Rookie
901	386	49	333000	Rookie
902	428	48	1056000	Rookie
903	429	48	2467000	Arbitration
904	363	48	3542000	Arbitration
905	409	48	851000	Rookie
906	430	48	1017000	Rookie
907	413	48	2610000	Arbitration
908	431	48	6160000	Arbitration
909	405	48	7637000	Arbitration
910	414	48	3257000	Arbitration
911	432	48	2366000	Arbitration
912	390	48	4521000	Arbitration
913	353	48	733000	Rookie
914	433	48	2534000	Arbitration
915	303	48	1442000	Rookie
916	434	48	622000	Rookie
917	406	48	8047000	Mid
918	435	48	785000	Rookie
919	408	48	3074000	Arbitration
920	436	48	381000	Rookie
921	437	48	306000	Rookie
922	438	48	348000	Rookie
923	416	48	313000	Rookie
924	439	48	301000	Rookie
925	440	48	338000	Rookie
926	336	48	327000	Rookie
927	375	48	344000	Rookie
928	376	48	352000	Rookie
929	420	48	304000	Rookie
930	402	48	311000	Rookie
931	441	48	350000	Rookie
932	442	48	331000	Rookie
933	423	48	366000	Rookie
934	443	48	359000	Rookie
935	444	48	376000	Rookie
936	445	48	362000	Rookie
937	421	48	339000	Rookie
938	426	48	361000	Rookie
939	386	48	325000	Rookie
940	446	48	328000	Rookie
941	447	48	371000	Rookie
942	424	48	340000	Rookie
943	321	48	372000	Rookie
944	448	48	374000	Rookie
945	322	48	377000	Rookie
946	449	47	3733000	Arbitration
947	450	47	4934000	Arbitration
948	451	47	2538000	Arbitration
949	409	47	2143000	Arbitration
950	452	47	5544000	Arbitration
951	432	47	4222000	Arbitration
952	431	47	2977000	Arbitration
953	453	47	3277000	Arbitration
954	454	47	1300000	Rookie
955	455	47	2060000	Arbitration
956	456	47	6063000	Arbitration
957	435	47	1077000	Rookie
958	457	47	878000	Rookie
959	458	47	961000	Rookie
960	390	47	3953000	Arbitration
961	459	47	364000	Rookie
962	429	47	358000	Rookie
963	460	47	357000	Rookie
964	433	47	331000	Rookie
965	440	47	306000	Rookie
966	461	47	337000	Rookie
967	462	47	328000	Rookie
968	336	47	361000	Rookie
969	420	47	355000	Rookie
970	463	47	333000	Rookie
971	464	47	320000	Rookie
972	445	47	389000	Rookie
973	465	47	4000000	Mid
974	442	47	362000	Rookie
975	358	47	313000	Rookie
976	444	47	344000	Rookie
977	376	47	302000	Rookie
978	423	47	345000	Rookie
979	424	47	387000	Rookie
980	382	47	335000	Rookie
981	426	47	304000	Rookie
982	386	47	303000	Rookie
983	466	47	335000	Rookie
984	467	47	314000	Rookie
985	468	47	302000	Rookie
986	469	47	368000	Rookie
987	470	47	341000	Rookie
988	471	47	326000	Rookie
989	449	46	3700000	Arbitration
990	472	46	1106000	Rookie
991	451	46	1858000	Arbitration
992	409	46	442000	Rookie
993	452	46	2551000	Arbitration
994	473	46	1324000	Rookie
995	454	46	1734000	Arbitration
996	450	46	6262000	Arbitration
997	474	46	2477000	Arbitration
998	475	46	2695000	Arbitration
999	476	46	1314000	Rookie
1000	457	46	4322000	Arbitration
1001	477	46	957000	Rookie
1002	458	46	2339000	Arbitration
1003	478	46	466000	Rookie
1004	479	46	350000	Rookie
1005	480	46	349000	Rookie
1006	481	46	369000	Rookie
1007	482	46	375000	Rookie
1008	483	46	340000	Rookie
1009	484	46	327000	Rookie
1010	485	46	323000	Rookie
1011	460	46	318000	Rookie
1012	486	46	305000	Rookie
1013	440	46	331000	Rookie
1014	465	46	4000000	Mid
1015	487	46	387000	Rookie
1016	420	46	350000	Rookie
1017	463	46	331000	Rookie
1018	445	46	352000	Rookie
1019	466	46	313000	Rookie
1020	488	46	340000	Rookie
1021	358	46	356000	Rookie
1022	442	46	344000	Rookie
1023	470	46	336000	Rookie
1024	489	46	389000	Rookie
1025	468	46	379000	Rookie
1026	490	46	356000	Rookie
1027	491	46	351000	Rookie
1028	492	46	356000	Rookie
1029	467	46	318000	Rookie
1030	493	46	336000	Rookie
1031	424	46	304000	Rookie
1032	494	46	343000	Rookie
1033	449	45	2986000	Arbitration
1034	495	45	2027000	Arbitration
1035	496	45	1865000	Arbitration
1036	409	45	562000	Rookie
1037	452	45	1991000	Arbitration
1038	475	45	4009000	Arbitration
1039	454	45	3640000	Arbitration
1040	450	45	6561000	Arbitration
1041	497	45	4478000	Arbitration
1042	451	45	3766000	Arbitration
1043	498	45	3233000	Arbitration
1044	499	45	1591000	Arbitration
1045	500	45	379000	Rookie
1046	501	45	385000	Rookie
1047	476	45	313000	Rookie
1048	502	45	342000	Rookie
1049	474	45	388000	Rookie
1050	460	45	344000	Rookie
1051	457	45	378000	Rookie
1052	480	45	353000	Rookie
1053	503	45	334000	Rookie
1054	440	45	326000	Rookie
1055	420	45	318000	Rookie
1056	465	45	4000000	Mid
1057	488	45	335000	Rookie
1058	463	45	346000	Rookie
1059	504	45	344000	Rookie
1060	487	45	352000	Rookie
1061	426	45	378000	Rookie
1062	505	45	388000	Rookie
1063	358	45	337000	Rookie
1064	489	45	374000	Rookie
1065	490	45	369000	Rookie
1066	494	45	352000	Rookie
1067	506	45	386000	Rookie
1068	424	45	318000	Rookie
1069	507	45	310000	Rookie
1070	508	45	377000	Rookie
1071	509	45	340000	Rookie
1072	510	45	376000	Rookie
1073	511	45	380000	Rookie
1074	449	44	6425000	Arbitration
1075	495	44	1669000	Arbitration
1076	496	44	2797000	Arbitration
1077	451	44	585000	Rookie
1078	452	44	1568000	Arbitration
1079	512	44	8153000	Mid
1080	497	44	853000	Rookie
1081	450	44	7254000	Arbitration
1082	513	44	1600000	Arbitration
1083	502	44	2127000	Arbitration
1084	499	44	2330000	Arbitration
1085	498	44	2169000	Arbitration
1086	500	44	1021000	Rookie
1087	514	44	513000	Rookie
1088	515	44	372000	Rookie
1089	516	44	325000	Rookie
1090	517	44	319000	Rookie
1091	518	44	386000	Rookie
1092	519	44	301000	Rookie
1093	520	44	390000	Rookie
1094	521	44	361000	Rookie
1095	378	44	15000000	Mid
1096	424	44	327000	Rookie
1097	522	44	301000	Rookie
1098	523	44	366000	Rookie
1099	487	44	375000	Rookie
1100	466	44	367000	Rookie
1101	524	44	313000	Rookie
1102	426	44	368000	Rookie
1103	525	44	369000	Rookie
1104	510	44	359000	Rookie
1105	507	44	369000	Rookie
1106	488	44	376000	Rookie
1107	526	44	355000	Rookie
1108	506	44	308000	Rookie
1109	527	44	344000	Rookie
1110	528	44	307000	Rookie
1111	529	44	337000	Rookie
1112	530	44	337000	Rookie
1113	508	44	306000	Rookie
1114	531	44	331000	Rookie
1115	481	43	6522000	Arbitration
1116	495	43	3516000	Arbitration
1117	496	43	3795000	Arbitration
1118	451	43	773000	Rookie
1119	452	43	2264000	Arbitration
1120	512	43	7345000	Arbitration
1121	532	43	1228000	Rookie
1122	450	43	4084000	Arbitration
1123	499	43	3949000	Arbitration
1124	533	43	2724000	Arbitration
1125	513	43	776000	Rookie
1126	534	43	408000	Rookie
1127	535	43	726000	Rookie
1128	498	43	7106000	Arbitration
1129	536	43	545000	Rookie
1130	449	43	321000	Rookie
1131	537	43	325000	Rookie
1132	514	43	372000	Rookie
1133	538	43	384000	Rookie
1134	539	43	336000	Rookie
1135	518	43	382000	Rookie
1136	519	43	329000	Rookie
1137	540	43	343000	Rookie
1138	500	43	320000	Rookie
1139	541	43	358000	Rookie
1140	487	43	388000	Rookie
1141	378	43	15000000	Mid
1142	466	43	332000	Rookie
1143	542	43	358000	Rookie
1144	424	43	311000	Rookie
1145	525	43	380000	Rookie
1146	543	43	345000	Rookie
1147	544	43	3000000	Star
1148	523	43	353000	Rookie
1149	545	43	356000	Rookie
1150	522	43	306000	Rookie
1151	546	43	361000	Rookie
1152	547	43	322000	Rookie
1153	548	43	364000	Rookie
1154	526	43	374000	Rookie
1155	527	43	372000	Rookie
1156	528	43	350000	Rookie
1157	549	43	347000	Rookie
1158	550	43	313000	Rookie
1159	531	43	370000	Rookie
1160	506	43	324000	Rookie
1161	481	42	757000	Arbitration
1162	495	42	1751000	Mid
1163	551	42	576000	Arbitration
1164	496	42	1387000	Mid
1165	452	42	237000	Arbitration
1166	512	42	1983000	Mid
1167	535	42	489000	Arbitration
1168	552	42	1009000	Mid
1169	536	42	392000	Arbitration
1170	532	42	485000	Arbitration
1171	498	42	1175000	Mid
1172	515	42	329000	Arbitration
1173	553	42	284000	Arbitration
1174	554	42	732000	Arbitration
1175	449	42	270000	Arbitration
1176	555	42	117000	Rookie
1177	451	42	133000	Rookie
1178	556	42	119000	Rookie
1179	557	42	112000	Rookie
1180	558	42	121000	Rookie
1181	559	42	118000	Rookie
1182	310	42	137000	Rookie
1183	487	42	119000	Rookie
1184	378	42	15000000	Mid
1185	543	42	138000	Rookie
1186	466	42	123000	Rookie
1187	542	42	139000	Rookie
1188	550	42	121000	Rookie
1189	424	42	141000	Rookie
1190	547	42	112000	Rookie
1191	506	42	131000	Rookie
1192	549	42	125000	Rookie
1193	560	42	122000	Rookie
1194	561	42	130000	Rookie
1195	562	42	132000	Rookie
1196	545	42	109000	Rookie
1197	563	42	114000	Rookie
1198	525	42	132000	Rookie
1199	564	42	131000	Rookie
1200	546	42	141000	Rookie
1201	528	42	134000	Rookie
1202	565	42	140000	Rookie
1203	566	42	132000	Rookie
1204	567	41	315000	Arbitration
1205	495	41	1072000	Mid
1206	551	41	900000	Mid
1207	536	41	424000	Arbitration
1208	452	41	160000	Rookie
1209	568	41	689000	Arbitration
1210	552	41	1583000	Mid
1211	512	41	1859000	Mid
1212	569	41	256000	Arbitration
1213	570	41	314000	Arbitration
1214	310	41	153000	Rookie
1215	554	41	1051000	Mid
1216	496	41	358000	Arbitration
1217	571	41	205000	Arbitration
1218	532	41	719000	Arbitration
1219	572	41	717000	Arbitration
1220	573	41	1502000	Mid
1221	574	41	171000	Rookie
1222	575	41	131000	Rookie
1223	576	41	130000	Rookie
1224	577	41	124000	Rookie
1225	451	41	138000	Rookie
1226	578	41	116000	Rookie
1227	449	41	131000	Rookie
1228	515	41	129000	Rookie
1229	579	41	119000	Rookie
1230	555	41	113000	Rookie
1231	540	41	130000	Rookie
1232	378	41	15000000	Mid
1233	543	41	119000	Rookie
1234	466	41	130000	Rookie
1235	562	41	122000	Rookie
1236	389	41	2500000	Mid
1237	580	41	116000	Rookie
1238	542	41	138000	Rookie
1239	465	41	4000000	Mid
1240	581	41	121000	Rookie
1241	582	41	111000	Rookie
1242	546	41	113000	Rookie
1243	583	41	126000	Rookie
1244	584	41	118000	Rookie
1245	585	41	136000	Rookie
1246	547	41	109000	Rookie
1247	586	41	121000	Rookie
1248	587	41	120000	Rookie
1249	563	41	110000	Rookie
1250	588	41	113000	Rookie
1251	589	41	123000	Rookie
1252	590	41	125000	Rookie
1253	591	41	122000	Rookie
1254	528	41	126000	Rookie
1255	592	41	128000	Rookie
1256	593	41	109000	Rookie
1257	573	40	1841000	Mid
1258	495	40	991000	Mid
1259	571	40	402000	Arbitration
1260	594	40	354000	Arbitration
1261	572	40	1196000	Mid
1262	532	40	340000	Arbitration
1263	595	40	233000	Arbitration
1264	552	40	1674000	Mid
1265	569	40	504000	Arbitration
1266	596	40	208000	Arbitration
1267	551	40	517000	Arbitration
1268	597	40	807000	Mid
1269	576	40	463000	Arbitration
1270	598	40	113000	Rookie
1271	555	40	118000	Rookie
1272	599	40	110000	Rookie
1273	600	40	119000	Rookie
1274	310	40	134000	Rookie
1275	601	40	126000	Rookie
1276	602	40	120000	Rookie
1277	603	40	121000	Rookie
1278	604	40	109000	Rookie
1279	605	40	119000	Rookie
1280	606	40	130000	Rookie
1281	607	40	141000	Rookie
1282	574	40	137000	Rookie
1283	608	40	110000	Rookie
1284	609	40	138000	Rookie
1285	465	40	4000000	Mid
1286	543	40	135000	Rookie
1287	378	40	15000000	Mid
1288	610	40	122000	Rookie
1289	389	40	2500000	Mid
1290	611	40	111000	Rookie
1291	581	40	116000	Rookie
1292	466	40	117000	Rookie
1293	585	40	125000	Rookie
1294	590	40	133000	Rookie
1295	612	40	124000	Rookie
1296	546	40	111000	Rookie
1297	547	40	140000	Rookie
1298	613	40	140000	Rookie
1299	591	40	135000	Rookie
1300	614	40	141000	Rookie
1301	573	39	1881000	Mid
1302	495	39	990000	Mid
1303	615	39	140000	Rookie
1304	594	39	317000	Arbitration
1305	616	39	622000	Arbitration
1306	532	39	386000	Arbitration
1307	601	39	303000	Arbitration
1308	552	39	1099000	Mid
1309	569	39	225000	Arbitration
1310	604	39	188000	Rookie
1311	617	39	211000	Arbitration
1312	310	39	198000	Rookie
1313	595	39	247000	Arbitration
1314	597	39	990000	Mid
1315	618	39	431000	Arbitration
1316	498	39	165000	Rookie
1317	619	39	120000	Rookie
1318	576	39	139000	Rookie
1319	620	39	118000	Rookie
1320	621	39	124000	Rookie
1321	622	39	138000	Rookie
1322	623	39	132000	Rookie
1323	624	39	111000	Rookie
1324	571	39	114000	Rookie
1325	602	39	109000	Rookie
1326	465	39	4000000	Mid
1327	543	39	124000	Rookie
1328	610	39	113000	Rookie
1329	389	39	2500000	Mid
1330	611	39	126000	Rookie
1331	378	39	15000000	Mid
1332	625	39	125000	Rookie
1333	585	39	131000	Rookie
1334	546	39	111000	Rookie
1335	466	39	118000	Rookie
1336	590	39	135000	Rookie
1337	591	39	124000	Rookie
1338	626	39	127000	Rookie
1339	614	39	123000	Rookie
1340	582	39	110000	Rookie
1341	573	38	1516000	Mid
1342	495	38	1832000	Mid
1343	615	38	558000	Arbitration
1344	627	38	487000	Arbitration
1345	617	38	602000	Arbitration
1346	597	38	373000	Arbitration
1347	628	38	459000	Arbitration
1348	552	38	1051000	Mid
1349	604	38	254000	Arbitration
1350	498	38	892000	Mid
1351	595	38	368000	Arbitration
1352	532	38	498000	Arbitration
1353	622	38	268000	Arbitration
1354	629	38	132000	Rookie
1355	630	38	141000	Rookie
1356	606	38	128000	Rookie
1357	631	38	117000	Rookie
1358	569	38	123000	Rookie
1359	576	38	128000	Rookie
1360	623	38	111000	Rookie
1361	602	38	129000	Rookie
1362	619	38	141000	Rookie
1363	632	38	115000	Rookie
1364	633	38	135000	Rookie
1365	634	38	139000	Rookie
1366	635	38	140000	Rookie
1367	310	38	140000	Rookie
1368	636	38	126000	Rookie
1369	389	38	2500000	Mid
1370	465	38	4000000	Mid
1371	543	38	114000	Rookie
1372	611	38	125000	Rookie
1373	610	38	132000	Rookie
1374	637	38	117000	Rookie
1375	638	38	130000	Rookie
1376	626	38	131000	Rookie
1377	639	38	114000	Rookie
1378	546	38	127000	Rookie
1379	640	38	134000	Rookie
1380	614	38	125000	Rookie
1381	378	38	15000000	Mid
1382	585	38	109000	Rookie
1383	641	38	121000	Rookie
1384	400	38	139000	Rookie
1385	625	38	116000	Rookie
1386	504	38	130000	Rookie
1387	642	38	116000	Rookie
1388	643	38	120000	Rookie
1389	582	38	137000	Rookie
1390	573	37	1559000	Mid
1391	495	37	507000	Arbitration
1392	615	37	313000	Arbitration
1393	627	37	239000	Arbitration
1394	617	37	917000	Mid
1395	630	37	759000	Arbitration
1396	595	37	692000	Arbitration
1397	552	37	705000	Arbitration
1398	644	37	364000	Arbitration
1399	645	37	258000	Arbitration
1400	631	37	141000	Rookie
1401	606	37	110000	Rookie
1402	629	37	134000	Rookie
1403	632	37	121000	Rookie
1404	622	37	122000	Rookie
1405	498	37	134000	Rookie
1406	635	37	139000	Rookie
1407	576	37	140000	Rookie
1408	597	37	128000	Rookie
1409	389	37	2500000	Mid
1410	611	37	135000	Rookie
1411	646	37	117000	Rookie
1412	544	37	3000000	Star
1413	610	37	121000	Rookie
1414	543	37	130000	Rookie
1415	466	37	117000	Rookie
1416	647	37	115000	Rookie
1417	400	37	139000	Rookie
1418	648	37	112000	Rookie
1419	378	37	15000000	Mid
1420	504	37	116000	Rookie
1421	649	37	110000	Rookie
1422	650	37	110000	Rookie
1423	651	37	115000	Rookie
1424	614	37	137000	Rookie
1425	573	36	1203000	Mid
1426	495	36	411000	Arbitration
1427	652	36	409000	Arbitration
1428	627	36	286000	Arbitration
1429	617	36	336000	Arbitration
1430	653	36	393000	Arbitration
1431	595	36	639000	Arbitration
1432	644	36	650000	Arbitration
1433	631	36	315000	Arbitration
1434	630	36	400000	Arbitration
1435	654	36	496000	Arbitration
1436	498	36	1407000	Mid
1437	655	36	188000	Rookie
1438	622	36	418000	Arbitration
1439	656	36	125000	Rookie
1440	552	36	125000	Rookie
1441	597	36	116000	Rookie
1442	513	36	128000	Rookie
1443	645	36	115000	Rookie
1444	657	36	120000	Rookie
1445	544	36	3000000	Star
1446	646	36	116000	Rookie
1447	389	36	2500000	Mid
1448	611	36	111000	Rookie
1449	610	36	140000	Rookie
1450	658	36	126000	Rookie
1451	659	36	122000	Rookie
1452	647	36	136000	Rookie
1453	660	36	136000	Rookie
1454	504	36	120000	Rookie
1455	651	36	132000	Rookie
1456	661	36	134000	Rookie
1457	662	36	130000	Rookie
1458	663	36	114000	Rookie
1459	614	36	138000	Rookie
1460	664	35	197000	Rookie
1461	495	35	470000	Arbitration
1462	654	35	371000	Arbitration
1463	627	35	203000	Arbitration
1464	498	35	130000	Rookie
1465	653	35	453000	Arbitration
1466	595	35	793000	Arbitration
1467	655	35	717000	Arbitration
1468	656	35	770000	Arbitration
1469	665	35	282000	Arbitration
1470	631	35	925000	Mid
1471	622	35	276000	Arbitration
1472	630	35	151000	Rookie
1473	551	35	158000	Rookie
1474	666	35	324000	Arbitration
1475	667	35	269000	Arbitration
1476	597	35	150000	Rookie
1477	668	35	141000	Rookie
1478	513	35	116000	Rookie
1479	573	35	131000	Rookie
1480	669	35	133000	Rookie
1481	645	35	137000	Rookie
1482	544	35	3000000	Star
1483	646	35	119000	Rookie
1484	611	35	120000	Rookie
1485	389	35	2500000	Mid
1486	670	35	136000	Rookie
1487	610	35	115000	Rookie
1488	671	35	121000	Rookie
1489	647	35	138000	Rookie
1490	660	35	135000	Rookie
1491	662	35	141000	Rookie
1492	658	35	134000	Rookie
1493	651	35	122000	Rookie
1494	672	35	128000	Rookie
1495	673	35	131000	Rookie
1496	664	34	548000	Arbitration
1497	607	34	620000	Arbitration
1498	666	34	864000	Mid
1499	674	34	149000	Rookie
1500	654	34	418000	Arbitration
1501	667	34	801000	Mid
1502	595	34	845000	Mid
1503	655	34	1034000	Mid
1504	675	34	243000	Arbitration
1505	656	34	810000	Mid
1506	669	34	171000	Rookie
1507	629	34	782000	Arbitration
1508	627	34	165000	Rookie
1509	676	34	112000	Rookie
1510	631	34	126000	Rookie
1511	498	34	126000	Rookie
1512	677	34	121000	Rookie
1513	622	34	140000	Rookie
1514	495	34	136000	Rookie
1515	678	34	132000	Rookie
1516	513	34	132000	Rookie
1517	679	34	124000	Rookie
1518	680	34	139000	Rookie
1519	681	34	132000	Rookie
1520	389	34	2500000	Mid
1521	682	34	137000	Rookie
1522	670	34	118000	Rookie
1523	544	34	3000000	Star
1524	646	34	115000	Rookie
1525	683	34	120000	Rookie
1526	651	34	120000	Rookie
1527	671	34	141000	Rookie
1528	684	34	137000	Rookie
1529	660	34	132000	Rookie
1530	685	34	133000	Rookie
1531	647	34	127000	Rookie
1532	673	34	140000	Rookie
1533	686	34	125000	Rookie
1534	672	34	121000	Rookie
1535	664	33	591000	Arbitration
1536	607	33	1699000	Mid
1537	666	33	445000	Arbitration
1538	674	33	183000	Rookie
1539	656	33	522000	Arbitration
1540	667	33	1815000	Mid
1541	687	33	482000	Arbitration
1542	688	33	801000	Mid
1543	654	33	797000	Arbitration
1544	669	33	659000	Arbitration
1545	629	33	511000	Arbitration
1546	689	33	152000	Rookie
1547	690	33	211000	Arbitration
1548	691	33	621000	Arbitration
1549	677	33	414000	Arbitration
1550	627	33	111000	Rookie
1551	536	33	126000	Rookie
1552	676	33	132000	Rookie
1553	692	33	137000	Rookie
1554	622	33	115000	Rookie
1555	693	33	135000	Rookie
1556	498	33	127000	Rookie
1557	694	33	122000	Rookie
1558	678	33	113000	Rookie
1559	695	33	137000	Rookie
1560	389	33	2500000	Mid
1561	681	33	119000	Rookie
1562	696	33	118000	Rookie
1563	682	33	137000	Rookie
1564	697	33	131000	Rookie
1565	683	33	135000	Rookie
1566	671	33	117000	Rookie
1567	686	33	129000	Rookie
1568	544	33	3000000	Star
1569	684	33	136000	Rookie
1570	698	33	139000	Rookie
1571	699	33	109000	Rookie
1572	564	33	131000	Rookie
1573	673	33	111000	Rookie
1574	700	33	127000	Rookie
1575	701	33	118000	Rookie
1576	651	33	119000	Rookie
1577	702	33	121000	Rookie
1578	703	33	129000	Rookie
1579	704	33	120000	Rookie
1580	705	33	133000	Rookie
1581	664	32	301000	Arbitration
1582	607	32	220000	Arbitration
1583	691	32	177000	Rookie
1584	674	32	84000	Rookie
1585	676	32	142000	Rookie
1586	687	32	190000	Rookie
1587	692	32	87000	Rookie
1588	706	32	231000	Arbitration
1589	677	32	127000	Rookie
1590	690	32	353000	Arbitration
1591	707	32	186000	Rookie
1592	689	32	117000	Rookie
1593	668	32	103000	Rookie
1594	654	32	115000	Rookie
1595	708	32	520000	Arbitration
1596	709	32	74000	Rookie
1597	710	32	62000	Rookie
1598	629	32	65000	Rookie
1599	667	32	65000	Rookie
1600	656	32	68000	Rookie
1601	711	32	78000	Rookie
1602	536	32	61000	Rookie
1603	695	32	69000	Rookie
1604	712	32	63000	Rookie
1605	544	32	3000000	Star
1606	682	32	62000	Rookie
1607	696	32	67000	Rookie
1608	681	32	73000	Rookie
1609	389	32	2500000	Mid
1610	713	32	68000	Rookie
1611	686	32	66000	Rookie
1612	673	32	67000	Rookie
1613	714	32	65000	Rookie
1614	683	32	64000	Rookie
1615	715	32	69000	Rookie
1616	716	32	65000	Rookie
1617	671	32	65000	Rookie
1618	699	32	72000	Rookie
1619	717	32	77000	Rookie
1620	701	32	71000	Rookie
1621	664	31	131000	Rookie
1622	708	31	131000	Rookie
1623	718	31	215000	Arbitration
1624	674	31	85000	Rookie
1625	676	31	109000	Rookie
1626	687	31	564000	Arbitration
1627	692	31	345000	Arbitration
1628	706	31	350000	Arbitration
1629	668	31	150000	Rookie
1630	707	31	69000	Rookie
1631	719	31	413000	Arbitration
1632	690	31	141000	Rookie
1633	689	31	214000	Arbitration
1634	712	31	163000	Rookie
1635	720	31	102000	Rookie
1636	656	31	66000	Rookie
1637	578	31	65000	Rookie
1638	677	31	71000	Rookie
1639	629	31	76000	Rookie
1640	721	31	77000	Rookie
1641	544	31	3000000	Star
1642	713	31	63000	Rookie
1643	682	31	77000	Rookie
1644	696	31	73000	Rookie
1645	722	31	400000	Star
1646	723	31	64000	Rookie
1647	714	31	71000	Rookie
1648	724	31	73000	Rookie
1649	389	31	2500000	Mid
1650	671	31	67000	Rookie
1651	716	31	60000	Rookie
1652	673	31	70000	Rookie
1653	725	31	65000	Rookie
1654	726	31	68000	Rookie
1655	508	31	77000	Rookie
1656	727	31	67000	Rookie
1657	728	31	75000	Rookie
1658	715	31	63000	Rookie
1659	664	30	354000	Arbitration
1660	708	30	376000	Arbitration
1661	718	30	240000	Arbitration
1662	709	30	66000	Rookie
1663	690	30	307000	Arbitration
1664	719	30	679000	Arbitration
1665	692	30	370000	Arbitration
1666	706	30	403000	Arbitration
1667	668	30	154000	Rookie
1668	729	30	82000	Rookie
1669	730	30	166000	Rookie
1670	731	30	85000	Rookie
1671	712	30	103000	Rookie
1672	732	30	101000	Rookie
1673	733	30	98000	Rookie
1674	720	30	104000	Rookie
1675	676	30	64000	Rookie
1676	734	30	73000	Rookie
1677	735	30	62000	Rookie
1678	736	30	64000	Rookie
1679	578	30	76000	Rookie
1680	633	30	73000	Rookie
1681	656	30	60000	Rookie
1682	737	30	64000	Rookie
1683	629	30	64000	Rookie
1684	677	30	65000	Rookie
1685	738	30	64000	Rookie
1686	739	30	61000	Rookie
1687	740	30	68000	Rookie
1688	721	30	73000	Rookie
1689	544	30	3000000	Star
1690	696	30	101000	Rookie
1691	741	30	61000	Rookie
1692	742	30	77000	Rookie
1693	713	30	75000	Rookie
1694	723	30	74000	Rookie
1695	716	30	75000	Rookie
1696	682	30	77000	Rookie
1697	724	30	70000	Rookie
1698	726	30	64000	Rookie
1699	743	30	71000	Rookie
1700	671	30	73000	Rookie
1701	727	30	73000	Rookie
1702	744	30	69000	Rookie
1703	745	30	61000	Rookie
1704	746	30	67000	Rookie
1705	747	30	77000	Rookie
1706	728	30	71000	Rookie
1707	664	29	328000	Arbitration
1708	748	29	274000	Arbitration
1709	718	29	459000	Arbitration
1710	709	29	92000	Rookie
1711	736	29	283000	Arbitration
1712	708	29	307000	Arbitration
1713	633	29	255000	Arbitration
1714	706	29	314000	Arbitration
1715	729	29	148000	Rookie
1716	749	29	150000	Rookie
1717	750	29	123000	Rookie
1718	668	29	143000	Rookie
1719	730	29	350000	Arbitration
1720	738	29	407000	Arbitration
1721	676	29	65000	Rookie
1722	677	29	108000	Rookie
1723	751	29	65000	Rookie
1724	734	29	68000	Rookie
1725	719	29	60000	Rookie
1726	737	29	65000	Rookie
1727	752	29	69000	Rookie
1728	753	29	61000	Rookie
1729	754	29	69000	Rookie
1730	755	29	77000	Rookie
1731	696	29	71000	Rookie
1732	741	29	74000	Rookie
1733	544	29	3000000	Star
1734	742	29	72000	Rookie
1735	747	29	65000	Rookie
1736	716	29	63000	Rookie
1737	756	29	63000	Rookie
1738	724	29	61000	Rookie
1739	726	29	63000	Rookie
1740	745	29	72000	Rookie
1741	757	29	76000	Rookie
1742	758	29	75000	Rookie
1743	759	29	72000	Rookie
1744	760	29	62000	Rookie
1745	664	28	442000	Arbitration
1746	748	28	282000	Arbitration
1747	718	28	128000	Rookie
1748	709	28	110000	Rookie
1749	668	28	85000	Rookie
1750	719	28	731000	Arbitration
1751	729	28	291000	Arbitration
1752	706	28	495000	Arbitration
1753	761	28	153000	Rookie
1754	762	28	143000	Rookie
1755	749	28	175000	Rookie
1756	750	28	166000	Rookie
1757	763	28	78000	Rookie
1758	764	28	86000	Rookie
1759	736	28	464000	Arbitration
1760	754	28	408000	Arbitration
1761	765	28	76000	Rookie
1762	738	28	62000	Rookie
1763	766	28	67000	Rookie
1764	733	28	70000	Rookie
1765	767	28	69000	Rookie
1766	677	28	63000	Rookie
1767	633	28	75000	Rookie
1768	708	28	72000	Rookie
1769	734	28	75000	Rookie
1770	768	28	75000	Rookie
1771	721	28	73000	Rookie
1772	696	28	82000	Rookie
1773	544	28	3000000	Star
1774	747	28	63000	Rookie
1775	741	28	72000	Rookie
1776	742	28	63000	Rookie
1777	769	28	72000	Rookie
1778	745	28	64000	Rookie
1779	770	28	62000	Rookie
1780	756	28	63000	Rookie
1781	758	28	60000	Rookie
1782	726	28	73000	Rookie
1783	716	28	73000	Rookie
1784	724	28	69000	Rookie
1785	771	28	63000	Rookie
1786	664	27	197000	Rookie
1787	748	27	224000	Arbitration
1788	718	27	113000	Rookie
1789	668	27	143000	Rookie
1790	719	27	478000	Arbitration
1791	706	27	214000	Arbitration
1792	729	27	134000	Rookie
1793	761	27	174000	Rookie
1794	750	27	147000	Rookie
1795	762	27	155000	Rookie
1796	772	27	109000	Rookie
1797	708	27	99000	Rookie
1798	763	27	137000	Rookie
1799	754	27	146000	Rookie
1800	764	27	145000	Rookie
1801	766	27	77000	Rookie
1802	773	27	71000	Rookie
1803	774	27	70000	Rookie
1804	755	27	67000	Rookie
1805	775	27	68000	Rookie
1806	753	27	70000	Rookie
1807	776	27	73000	Rookie
1808	777	27	73000	Rookie
1809	778	27	63000	Rookie
1810	721	27	69000	Rookie
1811	696	27	67000	Rookie
1812	716	27	76000	Rookie
1813	742	27	71000	Rookie
1814	544	27	3000000	Star
1815	741	27	62000	Rookie
1816	747	27	71000	Rookie
1817	779	27	62000	Rookie
1818	780	27	66000	Rookie
1819	726	27	63000	Rookie
1820	745	27	72000	Rookie
1821	758	27	64000	Rookie
1822	781	27	67000	Rookie
1823	782	27	76000	Rookie
1824	763	26	130000	Rookie
1825	748	26	292000	Arbitration
1826	718	26	118000	Rookie
1827	750	26	68000	Rookie
1828	719	26	819000	Mid
1829	783	26	206000	Arbitration
1830	729	26	315000	Arbitration
1831	706	26	211000	Arbitration
1832	784	26	346000	Arbitration
1833	773	26	239000	Arbitration
1834	753	26	119000	Rookie
1835	785	26	68000	Rookie
1836	668	26	82000	Rookie
1837	761	26	70000	Rookie
1838	774	26	75000	Rookie
1839	762	26	75000	Rookie
1840	776	26	75000	Rookie
1841	664	26	69000	Rookie
1842	721	26	66000	Rookie
1843	772	26	74000	Rookie
1844	766	26	68000	Rookie
1845	786	26	63000	Rookie
1846	787	26	75000	Rookie
1847	788	26	76000	Rookie
1848	696	26	75000	Rookie
1849	747	26	61000	Rookie
1850	741	26	67000	Rookie
1851	716	26	74000	Rookie
1852	779	26	76000	Rookie
1853	742	26	64000	Rookie
1854	771	26	61000	Rookie
1855	789	26	76000	Rookie
1856	760	26	67000	Rookie
1857	780	26	70000	Rookie
1858	745	26	77000	Rookie
1859	790	26	61000	Rookie
1860	791	26	72000	Rookie
1861	781	26	61000	Rookie
1862	782	26	67000	Rookie
1863	544	26	3000000	Star
1864	664	25	78000	Rookie
1865	792	25	391000	Arbitration
1866	718	25	112000	Rookie
1867	750	25	147000	Rookie
1868	793	25	231000	Arbitration
1869	783	25	469000	Arbitration
1870	729	25	295000	Arbitration
1871	719	25	606000	Arbitration
1872	773	25	365000	Arbitration
1873	763	25	160000	Rookie
1874	785	25	164000	Rookie
1875	794	25	187000	Rookie
1876	706	25	194000	Rookie
1877	784	25	125000	Rookie
1878	795	25	64000	Rookie
1879	776	25	72000	Rookie
1880	767	25	69000	Rookie
1881	748	25	60000	Rookie
1882	761	25	74000	Rookie
1883	796	25	74000	Rookie
1884	788	25	70000	Rookie
1885	797	25	61000	Rookie
1886	787	25	74000	Rookie
1887	798	25	71000	Rookie
1888	696	25	77000	Rookie
1889	741	25	74000	Rookie
1890	747	25	74000	Rookie
1891	789	25	69000	Rookie
1892	779	25	63000	Rookie
1893	799	25	72000	Rookie
1894	791	25	71000	Rookie
1895	771	25	73000	Rookie
1896	760	25	63000	Rookie
1897	800	25	64000	Rookie
1898	745	25	76000	Rookie
1899	801	25	73000	Rookie
1900	802	25	76000	Rookie
1901	803	25	74000	Rookie
1902	716	25	71000	Rookie
1903	664	24	116000	Rookie
1904	792	24	398000	Arbitration
1905	804	24	87000	Rookie
1906	750	24	103000	Rookie
1907	793	24	426000	Arbitration
1908	783	24	534000	Arbitration
1909	729	24	178000	Rookie
1910	719	24	391000	Arbitration
1911	784	24	143000	Rookie
1912	773	24	564000	Arbitration
1913	718	24	89000	Rookie
1914	763	24	64000	Rookie
1915	767	24	68000	Rookie
1916	785	24	76000	Rookie
1917	805	24	69000	Rookie
1918	806	24	63000	Rookie
1919	706	24	61000	Rookie
1920	807	24	73000	Rookie
1921	808	24	67000	Rookie
1922	761	24	75000	Rookie
1923	809	24	72000	Rookie
1924	810	24	74000	Rookie
1925	797	24	65000	Rookie
1926	811	24	72000	Rookie
1927	696	24	65000	Rookie
1928	747	24	77000	Rookie
1929	741	24	71000	Rookie
1930	779	24	66000	Rookie
1931	803	24	65000	Rookie
1932	812	24	63000	Rookie
1933	769	24	73000	Rookie
1934	789	24	64000	Rookie
1935	716	24	71000	Rookie
1936	800	24	65000	Rookie
1937	801	24	72000	Rookie
1938	771	24	75000	Rookie
1939	745	24	74000	Rookie
1940	763	23	111000	Rookie
1941	792	23	465000	Arbitration
1942	804	23	115000	Rookie
1943	750	23	191000	Rookie
1944	793	23	294000	Arbitration
1945	783	23	524000	Arbitration
1946	813	23	97000	Rookie
1947	805	23	555000	Arbitration
1948	784	23	127000	Rookie
1949	767	23	342000	Arbitration
1950	773	23	411000	Arbitration
1951	808	23	514000	Arbitration
1952	719	23	306000	Arbitration
1953	664	23	103000	Rookie
1954	814	23	86000	Rookie
1955	690	23	76000	Rookie
1956	809	23	76000	Rookie
1957	806	23	66000	Rookie
1958	798	23	76000	Rookie
1959	815	23	78000	Rookie
1960	810	23	75000	Rookie
1961	807	23	75000	Rookie
1962	779	23	64000	Rookie
1963	747	23	70000	Rookie
1964	741	23	61000	Rookie
1965	722	23	400000	Star
1966	803	23	78000	Rookie
1967	812	23	66000	Rookie
1968	771	23	73000	Rookie
1969	769	23	75000	Rookie
1970	816	23	75000	Rookie
1971	760	23	78000	Rookie
1972	817	23	64000	Rookie
1973	696	23	61000	Rookie
1974	801	23	67000	Rookie
1975	763	22	40000	Arbitration
1976	792	22	112000	Mid
1977	804	22	115000	Mid
1978	750	22	56000	Arbitration
1979	793	22	145000	Mid
1980	783	22	77000	Arbitration
1981	784	22	53000	Arbitration
1982	805	22	108000	Mid
1983	808	22	112000	Mid
1984	814	22	99000	Arbitration
1985	818	22	92000	Arbitration
1986	819	22	55000	Arbitration
1987	690	22	32000	Arbitration
1988	719	22	26000	Rookie
1989	820	22	25000	Rookie
1990	798	22	25000	Rookie
1991	773	22	25000	Rookie
1992	815	22	26000	Rookie
1993	812	22	25000	Rookie
1994	722	22	400000	Star
1995	779	22	27000	Rookie
1996	747	22	26000	Rookie
1997	817	22	24000	Rookie
1998	741	22	25000	Rookie
1999	821	22	23000	Rookie
2000	822	22	22000	Rookie
2001	823	22	25000	Rookie
2002	824	22	27000	Rookie
2003	760	22	27000	Rookie
2004	825	22	23000	Rookie
2005	769	22	24000	Rookie
2006	826	22	22000	Rookie
2007	827	22	27000	Rookie
2008	801	22	27000	Rookie
2009	828	22	25000	Rookie
2010	763	21	34000	Arbitration
2011	792	21	154000	Mid
2012	804	21	85000	Arbitration
2013	750	21	38000	Arbitration
2014	793	21	138000	Mid
2015	783	21	95000	Arbitration
2016	829	21	53000	Arbitration
2017	805	21	176000	Mid
2018	773	21	168000	Mid
2019	830	21	121000	Mid
2020	808	21	86000	Arbitration
2021	811	21	25000	Rookie
2022	815	21	25000	Rookie
2023	820	21	25000	Rookie
2024	819	21	23000	Rookie
2025	798	21	22000	Rookie
2026	831	21	25000	Rookie
2027	813	21	25000	Rookie
2028	719	21	22000	Rookie
2029	832	21	25000	Rookie
2030	833	21	24000	Rookie
2031	834	21	25000	Rookie
2032	835	21	26000	Rookie
2033	779	21	22000	Rookie
2034	722	21	400000	Star
2035	836	21	26000	Rookie
2036	822	21	25000	Rookie
2037	837	21	25000	Rookie
2038	741	21	26000	Rookie
2039	817	21	26000	Rookie
2040	801	21	27000	Rookie
2041	769	21	24000	Rookie
2042	828	21	24000	Rookie
2043	789	21	24000	Rookie
2044	827	21	22000	Rookie
2045	825	21	25000	Rookie
2046	838	21	23000	Rookie
2047	812	21	27000	Rookie
2048	763	20	90000	Arbitration
2049	792	20	147000	Mid
2050	804	20	79000	Arbitration
2051	750	20	38000	Arbitration
2052	793	20	63000	Arbitration
2053	783	20	136000	Mid
2054	773	20	65000	Arbitration
2055	805	20	201000	Mid
2056	830	20	105000	Mid
2057	831	20	46000	Arbitration
2058	820	20	53000	Arbitration
2059	819	20	42000	Arbitration
2060	839	20	41000	Arbitration
2061	840	20	27000	Rookie
2062	841	20	22000	Rookie
2063	798	20	26000	Rookie
2064	815	20	23000	Rookie
2065	811	20	26000	Rookie
2066	832	20	27000	Rookie
2067	774	20	21000	Rookie
2068	842	20	27000	Rookie
2069	843	20	25000	Rookie
2070	844	20	27000	Rookie
2071	722	20	400000	Star
2072	836	20	26000	Rookie
2073	837	20	21000	Rookie
2074	779	20	23000	Rookie
2075	822	20	21000	Rookie
2076	817	20	27000	Rookie
2077	827	20	26000	Rookie
2078	838	20	26000	Rookie
2079	845	20	27000	Rookie
2080	846	20	22000	Rookie
2081	847	20	23000	Rookie
2082	769	20	21000	Rookie
2083	828	20	22000	Rookie
2084	848	20	22000	Rookie
2085	763	19	48000	Arbitration
2086	792	19	127000	Mid
2087	804	19	39000	Arbitration
2088	750	19	41000	Arbitration
2089	793	19	120000	Mid
2090	849	19	100000	Mid
2091	783	19	55000	Arbitration
2092	805	19	169000	Mid
2093	850	19	29000	Rookie
2094	808	19	44000	Arbitration
2095	830	19	56000	Arbitration
2096	840	19	45000	Arbitration
2097	839	19	24000	Rookie
2098	851	19	22000	Rookie
2099	852	19	22000	Rookie
2100	853	19	23000	Rookie
2101	798	19	23000	Rookie
2102	844	19	25000	Rookie
2103	854	19	21000	Rookie
2104	831	19	22000	Rookie
2105	855	19	26000	Rookie
2106	289	19	22000	Rookie
2107	832	19	23000	Rookie
2108	856	19	26000	Rookie
2109	857	19	22000	Rookie
2110	722	19	400000	Star
2111	779	19	24000	Rookie
2112	822	19	23000	Rookie
2113	836	19	25000	Rookie
2114	837	19	26000	Rookie
2115	817	19	22000	Rookie
2116	706	19	25000	Rookie
2117	847	19	24000	Rookie
2118	827	19	22000	Rookie
2119	846	19	25000	Rookie
2120	845	19	23000	Rookie
2121	812	19	24000	Rookie
2122	763	18	37000	Arbitration
2123	792	18	126000	Mid
2124	804	18	76000	Arbitration
2125	750	18	33000	Arbitration
2126	793	18	114000	Mid
2127	849	18	41000	Arbitration
2128	858	18	129000	Mid
2129	859	18	97000	Arbitration
2130	830	18	145000	Mid
2131	808	18	53000	Arbitration
2132	839	18	33000	Arbitration
2133	854	18	32000	Arbitration
2134	860	18	27000	Rookie
2135	851	18	37000	Arbitration
2136	289	18	26000	Rookie
2137	798	18	27000	Rookie
2138	861	18	27000	Rookie
2139	855	18	23000	Rookie
2140	862	18	22000	Rookie
2141	863	18	24000	Rookie
2142	864	18	26000	Rookie
2143	832	18	24000	Rookie
2144	865	18	24000	Rookie
2145	821	18	35000	Arbitration
2146	822	18	27000	Rookie
2147	722	18	400000	Star
2148	779	18	24000	Rookie
2149	837	18	23000	Rookie
2150	847	18	24000	Rookie
2151	706	18	26000	Rookie
2152	817	18	22000	Rookie
2153	866	18	22000	Rookie
2154	867	18	27000	Rookie
2155	868	18	22000	Rookie
2156	827	18	25000	Rookie
2157	869	18	25000	Rookie
2158	846	18	24000	Rookie
2159	763	17	77000	Arbitration
2160	792	17	102000	Mid
2161	804	17	89000	Arbitration
2162	750	17	40000	Arbitration
2163	793	17	86000	Arbitration
2164	849	17	52000	Arbitration
2165	858	17	145000	Mid
2166	859	17	122000	Mid
2167	808	17	128000	Mid
2168	860	17	42000	Arbitration
2169	818	17	25000	Rookie
2170	830	17	26000	Rookie
2171	854	17	23000	Rookie
2172	798	17	27000	Rookie
2173	861	17	27000	Rookie
2174	870	17	25000	Rookie
2175	863	17	22000	Rookie
2176	839	17	23000	Rookie
2177	289	17	26000	Rookie
2178	865	17	23000	Rookie
2179	844	17	22000	Rookie
2180	862	17	25000	Rookie
2181	821	17	57000	Arbitration
2182	722	17	400000	Star
2183	822	17	22000	Rookie
2184	836	17	25000	Rookie
2185	706	17	22000	Rookie
2186	847	17	22000	Rookie
2187	869	17	27000	Rookie
2188	817	17	23000	Rookie
2189	866	17	23000	Rookie
2190	837	17	21000	Rookie
2191	871	17	26000	Rookie
2192	872	17	26000	Rookie
2193	873	17	25000	Rookie
2194	808	16	141000	Mid
2195	849	16	32000	Arbitration
2196	804	16	84000	Arbitration
2197	750	16	37000	Arbitration
2198	793	16	56000	Arbitration
2199	798	16	70000	Arbitration
2200	874	16	100000	Mid
2201	859	16	103000	Mid
2202	792	16	57000	Arbitration
2203	860	16	40000	Arbitration
2204	818	16	38000	Arbitration
2205	763	16	46000	Arbitration
2206	830	16	28000	Rookie
2207	861	16	24000	Rookie
2208	875	16	26000	Rookie
2209	862	16	22000	Rookie
2210	876	16	24000	Rookie
2211	865	16	24000	Rookie
2212	864	16	25000	Rookie
2213	821	16	27000	Rookie
2214	722	16	400000	Star
2215	877	16	24000	Rookie
2216	836	16	26000	Rookie
2217	847	16	22000	Rookie
2218	817	16	21000	Rookie
2219	822	16	22000	Rookie
2220	866	16	23000	Rookie
2221	878	16	24000	Rookie
2222	879	16	25000	Rookie
2223	869	16	27000	Rookie
2224	873	16	24000	Rookie
2225	871	16	24000	Rookie
2226	880	16	21000	Rookie
2227	875	15	35000	Arbitration
2228	881	15	89000	Arbitration
2229	830	15	39000	Arbitration
2230	750	15	41000	Arbitration
2231	792	15	48000	Arbitration
2232	798	15	98000	Arbitration
2233	874	15	83000	Arbitration
2234	882	15	56000	Arbitration
2235	883	15	29000	Rookie
2236	849	15	55000	Arbitration
2237	859	15	56000	Arbitration
2238	884	15	52000	Arbitration
2239	885	15	27000	Rookie
2240	886	15	25000	Rookie
2241	887	15	24000	Rookie
2242	763	15	65000	Arbitration
2243	888	15	23000	Rookie
2244	804	15	26000	Rookie
2245	860	15	22000	Rookie
2246	793	15	26000	Rookie
2247	808	15	22000	Rookie
2248	889	15	25000	Rookie
2249	722	15	400000	Star
2250	877	15	107000	Mid
2251	847	15	23000	Rookie
2252	836	15	21000	Rookie
2253	890	15	21000	Rookie
2254	891	15	26000	Rookie
2255	822	15	24000	Rookie
2256	892	15	26000	Rookie
2257	878	15	22000	Rookie
2258	866	15	23000	Rookie
2259	893	15	21000	Rookie
2260	817	15	27000	Rookie
2261	894	15	25000	Rookie
2262	895	15	27000	Rookie
2263	885	14	74000	Arbitration
2264	881	14	92000	Arbitration
2265	884	14	53000	Arbitration
2266	887	14	33000	Arbitration
2267	896	14	162000	Mid
2268	859	14	79000	Arbitration
2269	874	14	105000	Mid
2270	849	14	32000	Arbitration
2271	883	14	23000	Rookie
2272	798	14	71000	Arbitration
2273	792	14	38000	Arbitration
2274	897	14	55000	Arbitration
2275	750	14	26000	Rookie
2276	808	14	43000	Arbitration
2277	898	14	25000	Rookie
2278	886	14	27000	Rookie
2279	899	14	23000	Rookie
2280	818	14	23000	Rookie
2281	793	14	21000	Rookie
2282	860	14	24000	Rookie
2283	847	14	27000	Rookie
2284	877	14	23000	Rookie
2285	722	14	400000	Star
2286	890	14	27000	Rookie
2287	900	14	22000	Rookie
2288	901	14	23000	Rookie
2289	902	14	27000	Rookie
2290	892	14	21000	Rookie
2291	866	14	22000	Rookie
2292	903	14	22000	Rookie
2293	894	14	25000	Rookie
2294	893	14	22000	Rookie
2295	891	14	27000	Rookie
2296	817	14	24000	Rookie
2297	897	13	131000	Mid
2298	881	13	126000	Mid
2299	850	13	70000	Arbitration
2300	887	13	40000	Arbitration
2301	886	13	111000	Mid
2302	798	13	99000	Arbitration
2303	874	13	90000	Arbitration
2304	859	13	42000	Arbitration
2305	884	13	57000	Arbitration
2306	898	13	111000	Mid
2307	750	13	27000	Rookie
2308	904	13	37000	Arbitration
2309	905	13	42000	Arbitration
2310	818	13	35000	Arbitration
2311	792	13	30000	Arbitration
2312	849	13	24000	Rookie
2313	906	13	27000	Rookie
2314	907	13	27000	Rookie
2315	860	13	27000	Rookie
2316	808	13	23000	Rookie
2317	908	13	25000	Rookie
2318	722	13	400000	Star
2319	877	13	26000	Rookie
2320	909	13	22000	Rookie
2321	902	13	23000	Rookie
2322	903	13	24000	Rookie
2323	890	13	26000	Rookie
2324	866	13	22000	Rookie
2325	910	13	26000	Rookie
2326	894	13	24000	Rookie
2327	891	13	23000	Rookie
2328	892	13	24000	Rookie
2329	911	13	23000	Rookie
2330	817	13	25000	Rookie
2331	912	13	24000	Rookie
2332	913	13	22000	Rookie
2333	914	13	22000	Rookie
2334	897	12	14000	Rookie
2335	881	12	28000	Rookie
2336	850	12	11000	Rookie
2337	887	12	20000	Rookie
2338	898	12	11000	Rookie
2339	798	12	29000	Rookie
2340	874	12	42000	Arbitration
2341	904	12	24000	Rookie
2342	859	12	15000	Rookie
2343	884	12	16000	Rookie
2344	750	12	9000	Rookie
2345	906	12	13000	Rookie
2346	905	12	8000	Rookie
2347	915	12	9000	Rookie
2348	886	12	9000	Rookie
2349	916	12	7000	Rookie
2350	917	12	8000	Rookie
2351	918	12	8000	Rookie
2352	919	12	7000	Rookie
2353	908	12	9000	Rookie
2354	818	12	7000	Rookie
2355	792	12	7000	Rookie
2356	849	12	8000	Rookie
2357	883	12	9000	Rookie
2358	877	12	8000	Rookie
2359	890	12	9000	Rookie
2360	722	12	400000	Star
2361	909	12	7000	Rookie
2362	920	12	125000	Star
2363	921	12	8000	Rookie
2364	866	12	8000	Rookie
2365	902	12	9000	Rookie
2366	892	12	9000	Rookie
2367	914	12	9000	Rookie
2368	922	12	8000	Rookie
2369	911	12	9000	Rookie
2370	899	12	8000	Rookie
2371	923	12	8000	Rookie
2372	897	11	18000	Rookie
2373	881	11	11000	Rookie
2374	917	11	10000	Rookie
2375	924	11	9000	Rookie
2376	925	11	11000	Rookie
2377	906	11	25000	Rookie
2378	874	11	13000	Rookie
2379	915	11	14000	Rookie
2380	884	11	12000	Rookie
2381	919	11	19000	Rookie
2382	859	11	14000	Rookie
2383	876	11	8000	Rookie
2384	926	11	9000	Rookie
2385	927	11	12000	Rookie
2386	928	11	10000	Rookie
2387	898	11	19000	Rookie
2388	905	11	8000	Rookie
2389	929	11	7000	Rookie
2390	930	11	8000	Rookie
2391	931	11	8000	Rookie
2392	932	11	9000	Rookie
2393	877	11	7000	Rookie
2394	890	11	8000	Rookie
2395	920	11	125000	Star
2396	722	11	400000	Star
2397	933	11	8000	Rookie
2398	934	11	8000	Rookie
2399	866	11	8000	Rookie
2400	902	11	9000	Rookie
2401	922	11	7000	Rookie
2402	935	11	9000	Rookie
2403	909	11	8000	Rookie
2404	936	11	8000	Rookie
2405	937	11	7000	Rookie
2406	799	11	8000	Rookie
2407	938	10	20000	Rookie
2408	881	10	19000	Rookie
2409	939	10	14000	Rookie
2410	940	10	11000	Rookie
2411	884	10	13000	Rookie
2412	941	10	26000	Rookie
2413	874	10	11000	Rookie
2414	915	10	14000	Rookie
2415	932	10	31000	Arbitration
2416	925	10	12000	Rookie
2417	634	10	17000	Rookie
2418	906	10	25000	Rookie
2419	942	10	8000	Rookie
2420	905	10	8000	Rookie
2421	943	10	9000	Rookie
2422	930	10	8000	Rookie
2423	928	10	9000	Rookie
2424	944	10	9000	Rookie
2425	945	10	8000	Rookie
2426	859	10	8000	Rookie
2427	877	10	8000	Rookie
2428	920	10	125000	Star
2429	722	10	400000	Star
2430	890	10	8000	Rookie
2431	866	10	8000	Rookie
2432	937	10	8000	Rookie
2433	895	10	7000	Rookie
2434	946	10	8000	Rookie
2435	909	10	7000	Rookie
2436	947	10	7000	Rookie
2437	948	10	9000	Rookie
2438	902	10	7000	Rookie
2439	949	10	8000	Rookie
2440	950	10	7000	Rookie
2441	938	9	26000	Rookie
2442	881	9	22000	Rookie
2443	884	9	16000	Rookie
2444	887	9	13000	Rookie
2445	951	9	9000	Rookie
2446	941	9	29000	Rookie
2447	874	9	18000	Rookie
2448	915	9	43000	Arbitration
2449	952	9	29000	Rookie
2450	953	9	9000	Rookie
2451	942	9	9000	Rookie
2452	905	9	9000	Rookie
2453	932	9	20000	Rookie
2454	954	9	25000	Rookie
2455	955	9	8000	Rookie
2456	634	9	8000	Rookie
2457	956	9	8000	Rookie
2458	957	9	9000	Rookie
2459	929	9	9000	Rookie
2460	916	9	7000	Rookie
2461	930	9	9000	Rookie
2462	859	9	8000	Rookie
2463	958	9	10000	Rookie
2464	920	9	125000	Star
2465	722	9	400000	Star
2466	877	9	9000	Rookie
2467	937	9	8000	Rookie
2468	902	9	9000	Rookie
2469	946	9	8000	Rookie
2470	895	9	8000	Rookie
2471	959	9	8000	Rookie
2472	960	9	8000	Rookie
2473	961	9	8000	Rookie
2474	890	9	7000	Rookie
2475	866	9	8000	Rookie
2476	938	8	11000	Rookie
2477	881	8	15000	Rookie
2478	884	8	19000	Rookie
2479	887	8	13000	Rookie
2480	953	8	20000	Rookie
2481	941	8	21000	Rookie
2482	874	8	13000	Rookie
2483	915	8	25000	Rookie
2484	962	8	11000	Rookie
2485	905	8	11000	Rookie
2486	951	8	9000	Rookie
2487	963	8	8000	Rookie
2488	932	8	9000	Rookie
2489	964	8	7000	Rookie
2490	952	8	8000	Rookie
2491	957	8	8000	Rookie
2492	859	8	8000	Rookie
2493	965	8	7000	Rookie
2494	966	8	9000	Rookie
2495	945	8	7000	Rookie
2496	942	8	8000	Rookie
2497	920	8	125000	Star
2498	958	8	9000	Rookie
2499	877	8	9000	Rookie
2500	960	8	8000	Rookie
2501	895	8	7000	Rookie
2502	946	8	7000	Rookie
2503	959	8	8000	Rookie
2504	961	8	9000	Rookie
2505	866	8	9000	Rookie
2506	922	8	7000	Rookie
2507	933	8	8000	Rookie
2508	890	8	7000	Rookie
2509	938	7	17000	Rookie
2510	915	7	21000	Rookie
2511	942	7	8000	Rookie
2512	887	7	12000	Rookie
2513	953	7	11000	Rookie
2514	952	7	15000	Rookie
2515	874	7	21000	Rookie
2516	967	7	29000	Rookie
2517	962	7	12000	Rookie
2518	957	7	11000	Rookie
2519	881	7	13000	Rookie
2520	968	7	11000	Rookie
2521	963	7	9000	Rookie
2522	945	7	7000	Rookie
2523	861	7	7000	Rookie
2524	929	7	8000	Rookie
2525	905	7	8000	Rookie
2526	969	7	7000	Rookie
2527	859	7	8000	Rookie
2528	920	7	125000	Star
2529	958	7	9000	Rookie
2530	970	7	8000	Rookie
2531	902	7	7000	Rookie
2532	971	7	8000	Rookie
2533	866	7	8000	Rookie
2534	946	7	9000	Rookie
2535	895	7	8000	Rookie
2536	959	7	8000	Rookie
2537	961	7	8000	Rookie
2538	878	7	8000	Rookie
2539	890	7	9000	Rookie
2540	922	7	8000	Rookie
2541	960	7	8000	Rookie
2542	938	6	11000	Rookie
2543	915	6	17000	Rookie
2544	953	6	24000	Rookie
2545	887	6	27000	Rookie
2546	861	6	9000	Rookie
2547	952	6	24000	Rookie
2548	874	6	12000	Rookie
2549	967	6	39000	Arbitration
2550	963	6	17000	Rookie
2551	972	6	9000	Rookie
2552	962	6	9000	Rookie
2553	942	6	11000	Rookie
2554	968	6	8000	Rookie
2555	969	6	7000	Rookie
2556	932	6	9000	Rookie
2557	973	6	7000	Rookie
2558	974	6	8000	Rookie
2559	975	6	8000	Rookie
2560	976	6	8000	Rookie
2561	957	6	8000	Rookie
2562	977	6	8000	Rookie
2563	958	6	8000	Rookie
2564	920	6	125000	Star
2565	960	6	9000	Rookie
2566	946	6	9000	Rookie
2567	895	6	7000	Rookie
2568	878	6	7000	Rookie
2569	978	6	8000	Rookie
2570	961	6	8000	Rookie
2571	979	6	8000	Rookie
2572	980	6	8000	Rookie
2573	981	6	7000	Rookie
2574	982	6	7000	Rookie
2575	970	6	8000	Rookie
2576	983	6	8000	Rookie
2577	938	5	19000	Rookie
2578	915	5	25000	Rookie
2579	953	5	19000	Rookie
2580	887	5	28000	Rookie
2581	975	5	16000	Rookie
2582	952	5	30000	Arbitration
2583	874	5	13000	Rookie
2584	967	5	40000	Arbitration
2585	963	5	12000	Rookie
2586	984	5	9000	Rookie
2587	985	5	34000	Arbitration
2588	986	5	15000	Rookie
2589	969	5	16000	Rookie
2590	968	5	29000	Rookie
2591	987	5	7000	Rookie
2592	988	5	9000	Rookie
2593	861	5	8000	Rookie
2594	962	5	8000	Rookie
2595	920	5	125000	Star
2596	960	5	7000	Rookie
2597	958	5	9000	Rookie
2598	989	5	7000	Rookie
2599	902	5	9000	Rookie
2600	981	5	9000	Rookie
2601	878	5	9000	Rookie
2602	978	5	8000	Rookie
2603	895	5	8000	Rookie
2604	970	5	9000	Rookie
2605	982	5	8000	Rookie
2606	990	5	8000	Rookie
2607	938	4	39000	Arbitration
2608	991	4	22000	Rookie
2609	992	4	14000	Rookie
2610	887	4	13000	Rookie
2611	975	4	24000	Rookie
2612	963	4	55000	Arbitration
2613	874	4	11000	Rookie
2614	967	4	31000	Arbitration
2615	953	4	26000	Rookie
2616	952	4	16000	Rookie
2617	915	4	27000	Rookie
2618	985	4	47000	Arbitration
2619	993	4	9000	Rookie
2620	987	4	27000	Rookie
2621	994	4	7000	Rookie
2622	995	4	9000	Rookie
2623	996	4	9000	Rookie
2624	968	4	8000	Rookie
2625	997	4	7000	Rookie
2626	998	4	9000	Rookie
2627	988	4	8000	Rookie
2628	999	4	9000	Rookie
2629	920	4	125000	Star
2630	958	4	7000	Rookie
2631	989	4	9000	Rookie
2632	960	4	8000	Rookie
2633	1000	4	9000	Rookie
2634	1001	4	8000	Rookie
2635	978	4	8000	Rookie
2636	895	4	8000	Rookie
2637	970	4	8000	Rookie
2638	1002	4	8000	Rookie
2639	981	4	8000	Rookie
2640	1003	4	8000	Rookie
2641	938	3	13000	Rookie
2642	991	3	27000	Rookie
2643	992	3	12000	Rookie
2644	887	3	15000	Rookie
2645	953	3	12000	Rookie
2646	963	3	39000	Arbitration
2647	952	3	13000	Rookie
2648	967	3	14000	Rookie
2649	985	3	29000	Rookie
2650	993	3	10000	Rookie
2651	996	3	21000	Rookie
2652	987	3	42000	Arbitration
2653	1004	3	11000	Rookie
2654	874	3	9000	Rookie
2655	1005	3	8000	Rookie
2656	997	3	8000	Rookie
2657	999	3	9000	Rookie
2658	994	3	8000	Rookie
2659	915	3	8000	Rookie
2660	968	3	7000	Rookie
2661	1006	3	7000	Rookie
2662	1007	3	8000	Rookie
2663	1008	3	7000	Rookie
2664	1009	3	8000	Rookie
2665	920	3	125000	Star
2666	960	3	8000	Rookie
2667	989	3	7000	Rookie
2668	958	3	8000	Rookie
2669	1000	3	8000	Rookie
2670	978	3	9000	Rookie
2671	981	3	7000	Rookie
2672	1010	3	9000	Rookie
2673	1003	3	8000	Rookie
2674	1011	3	8000	Rookie
2675	1002	3	8000	Rookie
2676	1012	3	7000	Rookie
2677	970	3	7000	Rookie
2678	938	2	23000	Rookie
2679	993	2	28000	Rookie
2680	992	2	43000	Arbitration
2681	974	2	9000	Rookie
2682	953	2	19000	Rookie
2683	963	2	40000	Arbitration
2684	996	2	16000	Rookie
2685	985	2	51000	Arbitration
2686	991	2	26000	Rookie
2687	915	2	10000	Rookie
2688	887	2	10000	Rookie
2689	1004	2	15000	Rookie
2690	1009	2	25000	Rookie
2691	1008	2	13000	Rookie
2692	1013	2	8000	Rookie
2693	999	2	7000	Rookie
2694	1005	2	8000	Rookie
2695	1014	2	7000	Rookie
2696	967	2	8000	Rookie
2697	1015	2	8000	Rookie
2698	1007	2	8000	Rookie
2699	987	2	7000	Rookie
2700	952	2	9000	Rookie
2701	920	2	125000	Star
2702	960	2	8000	Rookie
2703	958	2	8000	Rookie
2704	1000	2	8000	Rookie
2705	1010	2	7000	Rookie
2706	989	2	7000	Rookie
2707	978	2	9000	Rookie
2708	1012	2	9000	Rookie
2709	1016	2	8000	Rookie
2710	1017	2	7000	Rookie
2711	1018	2	8000	Rookie
2712	1019	2	9000	Rookie
2713	1020	2	9000	Rookie
2714	1021	2	7000	Rookie
2715	1022	2	7000	Rookie
2716	938	1	22000	Rookie
2717	993	1	19000	Rookie
2718	992	1	20000	Rookie
2719	974	1	17000	Rookie
2720	1013	1	22000	Rookie
2721	953	1	16000	Rookie
2722	985	1	44000	Arbitration
2723	1008	1	28000	Rookie
2724	1023	1	14000	Rookie
2725	991	1	18000	Rookie
2726	1024	1	14000	Rookie
2727	1004	1	22000	Rookie
2728	1025	1	12000	Rookie
2729	996	1	8000	Rookie
2730	1026	1	20000	Rookie
2731	999	1	7000	Rookie
2732	1027	1	8000	Rookie
2733	915	1	7000	Rookie
2734	1028	1	7000	Rookie
2735	1029	1	9000	Rookie
2736	967	1	8000	Rookie
2737	1030	1	8000	Rookie
2738	1031	1	9000	Rookie
2739	1032	1	9000	Rookie
2740	960	1	8000	Rookie
2741	920	1	125000	Star
2742	958	1	8000	Rookie
2743	989	1	8000	Rookie
2744	1021	1	8000	Rookie
2745	1018	1	8000	Rookie
2746	1019	1	8000	Rookie
2747	1012	1	8000	Rookie
2748	1010	1	7000	Rookie
2749	1033	1	8000	Rookie
2750	1000	1	7000	Rookie
2751	1034	1	8000	Rookie
2752	1035	1	8000	Rookie
2753	981	1	8000	Rookie
2754	1036	1	9000	Rookie
2755	1037	1	9000	Rookie
2756	1038	1	8000	Rookie
2757	1039	1	9000	Rookie
2758	978	1	8000	Rookie
\.


--
-- TOC entry 4771 (class 2606 OID 81931)
-- Name: dim_jugador dim_jugador_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_jugador
    ADD CONSTRAINT dim_jugador_name_key UNIQUE (name);


--
-- TOC entry 4773 (class 2606 OID 81929)
-- Name: dim_jugador dim_jugador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_jugador
    ADD CONSTRAINT dim_jugador_pkey PRIMARY KEY (player_id);


--
-- TOC entry 4775 (class 2606 OID 81940)
-- Name: dim_posicion dim_posicion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_posicion
    ADD CONSTRAINT dim_posicion_pkey PRIMARY KEY (position_id);


--
-- TOC entry 4777 (class 2606 OID 81948)
-- Name: dim_temporada dim_temporada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dim_temporada
    ADD CONSTRAINT dim_temporada_pkey PRIMARY KEY (season_id);


--
-- TOC entry 4779 (class 2606 OID 81983)
-- Name: fact_batting fact_batting_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_batting
    ADD CONSTRAINT fact_batting_pkey PRIMARY KEY (batting_id);


--
-- TOC entry 4781 (class 2606 OID 82008)
-- Name: fact_contrato fact_contrato_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_contrato
    ADD CONSTRAINT fact_contrato_pkey PRIMARY KEY (contract_id);


--
-- TOC entry 4782 (class 2606 OID 81984)
-- Name: fact_batting fact_batting_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_batting
    ADD CONSTRAINT fact_batting_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.dim_jugador(player_id);


--
-- TOC entry 4783 (class 2606 OID 81989)
-- Name: fact_batting fact_batting_position_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_batting
    ADD CONSTRAINT fact_batting_position_id_fkey FOREIGN KEY (position_id) REFERENCES public.dim_posicion(position_id);


--
-- TOC entry 4784 (class 2606 OID 81994)
-- Name: fact_batting fact_batting_season_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_batting
    ADD CONSTRAINT fact_batting_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.dim_temporada(season_id);


--
-- TOC entry 4785 (class 2606 OID 82009)
-- Name: fact_contrato fact_contrato_player_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_contrato
    ADD CONSTRAINT fact_contrato_player_id_fkey FOREIGN KEY (player_id) REFERENCES public.dim_jugador(player_id);


--
-- TOC entry 4786 (class 2606 OID 82014)
-- Name: fact_contrato fact_contrato_season_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fact_contrato
    ADD CONSTRAINT fact_contrato_season_id_fkey FOREIGN KEY (season_id) REFERENCES public.dim_temporada(season_id);


-- Completed on 2026-09-03 17:42:26

--
-- PostgreSQL database dump complete
--

\unrestrict dYjCfO22GnMW93c1QnR5y4aJLe34TuTPzPhwLidexwaj8IIw97gop9n6r0HpHMv

