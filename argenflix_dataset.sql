--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.12
-- Dumped by pg_dump version 9.4.12
-- Started on 2017-05-31 12:38:16 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2042 (class 0 OID 33900)
-- Dependencies: 174
-- Data for Name: actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Antonio Gasalla', 74, 40);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Audrey Tatou', 38, 19);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Ben McKenzie', 37, 8);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Bryan Cranston', 59, 46);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Charlize Theron', 39, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Cobie Smulders', 33, 14);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Dakota Blue Richards', 9, 3);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Danny Elfman', 60, 25);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('David Masajnik', 36, 12);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Genaro Vasquez', 51, 14);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Gillian Anderson', 46, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Haley Joel Osment', 8, 2);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Hugh Laurie', 56, 21);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Humberto Velez', 60, 12);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jack Black', 45, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('James Arness', 88, 50);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jennifer Aniston', 46, 26);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jim Carrey', 53, 34);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jim Parsons', 42, 9);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Johnny Depp', 52, 31);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Julia Roberts', 47, 28);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Kent McCord', 70, 45);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Kevin Spacey', 55, 29);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Kyle MacLachlan', 56, 31);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Leonardo DiCaprio', 45, 16);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Emile Hirsch', 52, 23);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Matt Damon', 56, 27);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Natalie Portman', 54, 25);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Guy Pearce', 53, 24);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Russell Crowe', 55, 26);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jake Gyllenhaal', 57, 28);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Bradley Cooper', 49, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Clint Eastwood', 49, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Ashton Kutcher', 62, 33);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Jessica Alba', 49, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Benicio Del Toro', 52, 23);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Ellen Page', 43, 14);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Brad Pitt', 62, 33);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Rose McGowan', 52, 23);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Sylvester Stallone', 75, 46);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Tom Hardy', 42, 13);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Joseph Gordon-Levitt', 55, 26);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Robert Downey Jr.', 52, 23);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('John Travolta', 64, 35);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Kurt Russell', 49, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Edward Norton', 57, 28);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Christian Bale', 54, 25);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Lorne Greene', 72, 40);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Mary McDonnell', 58, 30);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Meg Ryan', 53, 33);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Michael Caine', 82, 53);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Naomi Watts', 46, 20);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Rachel McAdams', 36, 16);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Scarlett Johansson', 30, 21);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Sean Bean', 56, 24);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Steve Buscemi', 57, 30);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Tom Hanks', 58, 30);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Tom Selleck', 70, 45);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Ian Ziering', 53, 40);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Steve Guttenberg', 66, 40);
INSERT INTO actor (nombre, edad, anhos_activo) VALUES ('Facundo Alcodoy', 65, 10);


--
-- TOC entry 2043 (class 0 OID 33905)
-- Dependencies: 175
-- Data for Name: director; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Alejandro Doria', 72, 'Argentino', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Bruno Heller', 55, 'Ingles', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Charles Marquis Warren', 78, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Chris Weitz', 46, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Chuck Lorre', 62, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('David Crane', 57, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('David Lynch', 69, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Donald Bellisario', 50, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Fred Hamilton', 57, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Gareth Edwards', 50, 'Ingles', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('George R R Martin', 66, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Glen Larson', 80, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Hayao Miyazaki', 74, 'Japones', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Jean-Pierre Jeunet', 61, 'Frances', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('John Lasseter', 58, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Joss Whedon', 51, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Juan Jose Campanella', 55, 'Argentino', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Linwood Boomer', 63, 'Canadiense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('M Night Shyamalan', 44, 'Indio', 'Haley Joel Osment');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Matt Groening', 61, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Michel Gondry', 52, 'Frances', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Peter Farrely', 60, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Peter Jackson', 53, 'Neozelandes', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Peter Weir', 70, 'Australiano', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Sam Mendes', 50, 'Ingles', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Shinichiro Watanabe', 50, 'Japones', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Tim Burton', 56, 'Estadounidense', 'Johnny Depp');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Vince Gilligan', 48, 'Estadounidense', 'Bryan Cranston');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Woody Allen', 79, 'Estadounidense', 'Scarlett Johansson');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('David Fincher', 65, 'Estadounidense', 'Kevin Spacey');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Martin Scorsese', 58, 'Estadounidense', 'Leonardo DiCaprio');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Christopher Nolan', 61, 'Ingles', 'Michael Caine');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Clint Eastwood', 57, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Anthony C. Ferrante', 65, 'Estadounidense', 'Ian Ziering');
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Mike Mendez', 60, 'Estadounidense', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Federico Barroso', 40, 'Argentino', NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Sean Penn', 60, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('John Dahl', 64, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('James McTeigue', 62, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Ridley Scott', 63, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Richard Kelly', 65, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Gus Van Sant', 74, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Todd Phillips', 57, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Eric Bress', 70, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Robert Rodriguez', 57, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Guy Ritchie', 60, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Jason Reitman', 51, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Ron Howard', 63, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Martin Brest', 70, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('John G. Avildsen', 83, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Sylvester Stallone', 81, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Gavin OConnor', 50, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Marc Webb', 63, NULL, NULL);
INSERT INTO director (nombre_director, edad, nacionalidad, actor_fetiche) VALUES ('Quentin Tarantino', 65, NULL, NULL);


--
-- TOC entry 2045 (class 0 OID 33912)
-- Dependencies: 177
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (60, 'Lavalantula', 'Terror', 92, 8, 'Steve Guttenberg', 'Mike Mendez');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (59, 'Sharknado', 'Terror', 90, 6, 'Ian Ziering', 'Anthony C. Ferrante');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (61, 'Básicamente un pozo', 'Fantastico', 60, 9, 'Facundo Alcodoy', 'Federico Barroso');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (1, 'El Caballero de la Noche', 'Superheroes', 152, 9, 'Michael Caine', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (2, 'Amelie', 'Romantica', 122, 8, 'Audrey Tatou', 'Jean-Pierre Jeunet');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (3, 'Eterno Resplandor', 'Drama', 108, 8, 'Jim Carrey', 'Michel Gondry');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (4, 'The Truman Show', 'Drama', 103, 8, 'Jim Carrey', 'Peter Weir');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (5, 'Memento', 'Drama', 113, 8, 'Guy Pearce', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (6, 'La Comunidad del Anillo', 'Fantasia', 178, 7, 'Sean Bean', 'Peter Jackson');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (7, 'Interstellar', 'Ciencia Ficcion', 169, 6, 'Michael Caine', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (8, 'Toy Story', 'Animacion', 81, 8, 'Tom Hanks', 'John Lasseter');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (9, 'Sexto Sentido', 'Suspenso', 107, 8, 'Haley Joel Osment', 'M Night Shyamalan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (10, 'Tonto y Retonto', 'Comedia', 107, 5, 'Jim Carrey', 'Peter Farrely');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (11, 'El Joven Manos de Tijera', 'Fantasia', 105, 6, 'Johnny Depp', 'Tim Burton');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (12, 'La Brujula Dorada', 'Fantasia', 113, 5, 'Dakota Blue Richards', 'Chris Weitz');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (13, 'La Princesa Mononoke', 'Animacion', 134, 9, 'Gillian Anderson', 'Hayao Miyazaki');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (14, 'El extranho mundo de Jack', 'Animacion', 76, 6, 'Danny Elfman', 'Tim Burton');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (15, 'Scoop', 'Comedia Dramatica', 96, 7, 'Scarlett Johansson', 'Woody Allen');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (16, 'Los Vengadores', 'Superheroes', 143, 8, 'Scarlett Johansson', 'Joss Whedon');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (17, 'El Jinete Sin Cabeza', 'Terror', 105, 6, 'Johnny Depp', 'Tim Burton');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (18, 'Pandillas de Nueva York', 'Drama', 167, 8, 'Leonardo DiCaprio', 'Martin Scorsese');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (19, 'Charlie y la Fabrica de Chocolate', 'Comedia', 115, 5, 'Johnny Depp', 'Tim Burton');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (20, 'Godzilla', 'Mostruos', 123, 6, 'Bryan Cranston', 'Gareth Edwards');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (21, 'La Isla Siniestra', 'Thriller', 138, 7, 'Leonardo DiCaprio', 'Martin Scorsese');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (22, 'Metegol', 'Animacion', 106, 8, 'David Masajnik', 'Juan Jose Campanella');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (23, 'Belleza Americana', 'Drama', 122, 9, 'Kevin Spacey', 'Sam Mendes');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (24, 'Stuart Little Un Raton en la Familia', 'Familia', 84, 6, 'Hugh Laurie', 'M Night Shyamalan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (25, 'El camino de los suenhos', 'Drama', 147, 9, 'Naomi Watts', 'David Lynch');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (26, 'Esperando la Carroza', 'Comedia', 87, 9, 'Antonio Gasalla', 'Alejandro Doria');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (27, 'Pecados Capitales', 'Policial', 127, 9, 'Kevin Spacey', 'David Fincher');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (93, 'Inception', 'Action', NULL, NULL, 'Leonardo DiCaprio', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (94, 'Into the Wild', 'Drama', NULL, NULL, 'Emile Hirsch', 'Sean Penn');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (95, 'Rounders', 'Drama', NULL, NULL, 'Matt Damon', 'John Dahl');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (96, 'V for Vendetta', 'Thriller', NULL, NULL, 'Natalie Portman', 'James McTeigue');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (97, 'Memento', 'Crime', NULL, NULL, 'Guy Pearce', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (98, 'Gladiator', 'Action', NULL, NULL, 'Russell Crowe', 'Ridley Scott');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (99, 'Donnie Darko', 'Sci-Fi', NULL, NULL, 'Jake Gyllenhaal', 'Richard Kelly');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (100, 'Good Will Hunting', 'Drama', NULL, NULL, 'Matt Damon', 'Gus Van Sant');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (101, 'The Hangover', 'Comedy', NULL, NULL, 'Bradley Cooper', 'Todd Phillips');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (102, 'Gran Torino', 'Drama', NULL, NULL, 'Clint Eastwood', 'Clint Eastwood');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (103, 'The Butterfly Effect', 'Sci-Fi', NULL, NULL, 'Ashton Kutcher', 'Eric Bress');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (104, 'Sin City', 'Thriller', NULL, NULL, 'Jessica Alba', 'Robert Rodriguez');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (105, 'Snatch', 'Crime', NULL, NULL, 'Benicio Del Toro', 'Guy Ritchie');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (106, 'Robin Hood', 'Action', NULL, NULL, 'Russell Crowe', 'Ridley Scott');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (107, 'Beautiful Mind', 'Biography', NULL, NULL, 'Russell Crowe', 'Ron Howard');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (108, 'Juno', 'Romance', NULL, NULL, 'Ellen Page', 'Jason Reitman');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (109, 'Cinderella Man', 'Sport', NULL, NULL, 'Russell Crowe', 'Ron Howard');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (110, 'Meet Joe Black', 'Drama', NULL, NULL, 'Brad Pitt', 'Martin Brest');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (111, 'Planet Terror', 'Sci-Fi', NULL, NULL, 'Rose McGowan', 'Robert Rodriguez');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (112, 'Rocky', 'Sport', NULL, NULL, 'Sylvester Stallone', 'John G. Avildsen');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (113, 'Rocky II', 'Sport', NULL, NULL, 'Sylvester Stallone', 'Sylvester Stallone');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (114, 'Rocky III', 'Sport', NULL, NULL, 'Sylvester Stallone', 'Sylvester Stallone');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (115, 'Warrior', 'Sport', NULL, NULL, 'Tom Hardy', 'Gavin OConnor');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (116, '500 Days of Summer', 'Romance', NULL, NULL, 'Joseph Gordon-Levitt', 'Marc Webb');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (117, 'Sherlock Holmes', 'Mistery', NULL, NULL, 'Robert Downey Jr.', 'Guy Ritchie');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (118, 'Pulp Fiction', 'Crime', NULL, NULL, 'John Travolta', 'Quentin Tarantino');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (28, 'Zodiaco', 'Policial', 157, 6, 'Jake Gyllenhaal', 'David Fincher');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (29, 'Medianoche en Paris', 'Comedia', 100, 7, 'Rachel McAdams', 'Woody Allen');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (30, 'Match Point', 'Comedia', 124, 8, 'Scarlett Johansson', 'Woody Allen');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (119, 'Inglourious Basterds', 'War', NULL, NULL, 'Brad Pitt', 'Quentin Tarantino');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (120, 'Deathproof', 'Action', NULL, NULL, 'Kurt Russell', 'Quentin Tarantino');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (121, 'Fight Club', 'Thriller', NULL, NULL, 'Edward Norton', 'David Fincher');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (122, 'Batman Begins', 'Action', NULL, NULL, 'Christian Bale', 'Christopher Nolan');
INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (123, 'Shutter Island', 'Drama', NULL, NULL, 'Leonardo DiCaprio', 'Martin Scorsese');


--
-- TOC entry 2053 (class 0 OID 0)
-- Dependencies: 176
-- Name: pelicula_id_pelicula_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pelicula_id_pelicula_seq', 65, true);


--
-- TOC entry 2048 (class 0 OID 42068)
-- Dependencies: 180
-- Data for Name: serie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('BattleStar Galactica', 1980, 'Ciencia Ficcion', 1, 6, 'Kent McCord', 'Glen Larson');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('BattleStar Galactica', 2005, 'Ciencia Ficcion', 4, 7, 'Mary McDonnell', 'Glen Larson');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Boardwalk Empire', 2010, 'Mafia', 5, 7, 'Steve Buscemi', 'Martin Scorsese');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Bonanza', 1959, 'Western', 14, 7, 'Lorne Greene', 'Fred Hamilton');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Breaking Bad', 2008, 'Drama', 5, 10, 'Bryan Cranston', 'Vince Gilligan');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Cowboy Bebop', 1998, 'Animacion', 1, 8, 'Genaro Vasquez', 'Shinichiro Watanabe');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Doctor House', 2004, 'Drama', 8, 8, 'Hugh Laurie', 'Juan Jose Campanella');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Friends', 1994, 'Comedia', 10, 9, 'Jennifer Aniston', 'David Crane');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Game of Thrones', 2011, 'Fantasia', 5, 9, 'Sean Bean', 'George R R Martin');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Gotham', 2014, 'Policial', 2, 8, 'Ben McKenzie', 'Bruno Heller');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Gunsmoke', 1955, 'Western', 20, 7, 'James Arness', 'Charles Marquis Warren');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('House of Cards', 2013, 'Drama', 3, 9, 'Kevin Spacey', 'David Fincher');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Los Simpsons', 1989, 'Animacion', 26, 6, 'Humberto Velez', 'Matt Groening');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Magnum PI', 1980, 'Accion', 8, 7, 'Tom Selleck', 'Donald Bellisario');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Malcolm en el medio', 2000, 'Comedia', 7, 8, 'Bryan Cranston', 'Linwood Boomer');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('The Big Bang Theory', 2007, 'Comedia', 6, 7, 'Jim Parsons', 'Chuck Lorre');
INSERT INTO serie (nombre_serie, anho_serie, genero, temporadas, calificacion, nombre_actor, nombre_director) VALUES ('Twin Peaks', 1990, 'Misterio', 2, 7, 'Kyle MacLachlan', 'David Lynch');


--
-- TOC entry 2041 (class 0 OID 33895)
-- Dependencies: 173
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('aaguero', 'Alejandra Aguero', '14563otoba');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('aaguilera', 'Adelmo Aguilera', '55346salol');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('aavila', 'Aurelia Avila', '52435v57');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('abenitez', 'Angelina Benitez', '41511h66');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('abuitron', 'Adelaida Buitron', 'abuitron');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('acardenas', 'Alonso Cardenas', '35256g42');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('acarrasco', 'Adelina Carrasco', '44121crimen');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ajimenez', 'Amparo Jimenez', '51313mimar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('amaldonado', 'Angeles Maldonado', '23263vega');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('amateus', 'Almudena Mateus', '12345c79');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('amejia', 'Alcira Mejia', '43465olfato');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('amontenegro', 'Amos Montenegro', '56545lucio');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('amora', 'Agueda Mora', '21165arduo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('anahuelquin', 'Anibal Nahuelquin', '31312frase');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('apino', 'Angelina Pino', 'gridaso');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('aquintanilla', 'Anacleto Quintanilla', '42564c13');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('asaavedra', 'Anastasio Saavedra', '43251solio');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('atocornal', 'Alcira Tocornal', '51644f49');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('atoledo', 'Aron Toledo', 'atoledo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('atoro', 'Apolo Toro', '62561hiena');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('bmendez', 'Basilio Mendez', '22421n82');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('bmillachine', 'Barbara Millachine', '31263tegua');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('bmontt', 'Bibiana Montt', '23636sufra');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('bmorales', 'Beltran Morales', '36122g52');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('BreakingThrones', 'Silvano Rivas', '12631m74');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('caguilera', 'Carla Aguilera', '13411clonar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('cartiagoitia', 'Celia Artiagoitia', '34134bache');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ccaucaman', 'Claudio Caucaman', '32134viese');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('cnahuelpani', 'Clotilde Nahuelpani', '44234noxa');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('DaleBoca', 'Leonardo Montes De Oca', '21265k67');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('DarthVader', 'Santiago Reyes', 's12345w');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('dcruz', 'Dolores Cruz', '45134alzar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('dmartin', 'Dagoberto Martin', '36513m62');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('eaguilera', 'Elena Aguilera', '32253chalet');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ejuarez', 'Eugenia Juarez', '52232mayal');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('elevican', 'Erico Levican', 'medroahogar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ElMisterIo', 'Pio Antipani', '51613deudo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ElPistero94', 'Aurelio Guala', '65465p27');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('emillachine', 'Eufemia Millachine', '64266lilac');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('emolina', 'Eugenia Molina', 'emolina');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('epincol', 'Edmundo Pincol', '52145coraje');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('eriveros', 'Eloy Riveros', '33222nariz');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('esaez', 'Eufrasio Saez', '66114ley');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('evalverde', 'Eudosia Valverde', '32216breva');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('evelazquez', 'Emilia Velazquez', '15254p80');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('farias', 'Frida Arias', '26615cloro');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('fsalas', 'Florinda Salas', '14155erro');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('gcalderon', 'Griselda Calderon', '55422usar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('gchaura', 'Genoveva Chaura', '63653nona');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ggallardo', 'Guillermo Gallardo', '12345finca');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('gmartin', 'Gilberto San Martin', '61634e52');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('gpanguilef', 'Griselda Panguilef', '62531pavo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('grodriguez', 'Grisel Rodriguez', '41611rama');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('gvillalba', 'Gilberto Villalba', '53466elfo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('hcabrera', 'Hermelando Cabrera', '51233ficha');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ichavez', 'Ivonne Chavez', '21546e10');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('jalvarado', 'Julio Alvarado', '54321abajo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('javendanho', 'Jazmin Avendanho', '35123676');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('jmartin', 'Jaime Martin', '55415860');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('jnavarro', 'Jennifer Navarro', '35444litar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('jreyes', 'Jonatan Reyes', 'jreyes');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('jtoledo', 'Josefa Toledo', '41344sudor');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('lcarcamo', 'Leonora Carcamo', '31153hoyo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('lfernandez', 'Lorenzo Fernandez', '34616oda');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('lgomez', 'Leon Gomez', 'lgomez');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('lluna', 'Lydia Luna', '44364rozno');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('lrojas', 'Lamberto Rojas', '52234brete');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ltrivinho', 'Lucas Trivinho', '43614cien');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('mhuenteo', 'Miriam Huenteo', '31554Pablo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('MissDanger', 'Yolanda Tapia', '12256f17');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('mleguizamon', 'Mariana Leguizamon', '14663IBEX');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('mnavarro', 'Mateo Navarro', '32656h99');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('nacosta', 'Nuria Acosta', '45244padre');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('naguilera', 'Nelida Aguilera', '26434s90x90');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('naguirre', 'Natan Aguirre', '21355Girona');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('obustamante', 'Oton Bustamante', '11136asear');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('odavila', 'Olimpia Davila', '43261k35');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('operez', 'Orlando Perez', 'as1234599');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ovarela', 'Ofelia Varela', '25264diodo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('pcarvajal', 'Pedro Carvajal', '25565causa');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('pmariman', 'Paulina Mariman', '45413ilota');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('projas', 'Panfilo Rojas', '26411dorado');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('pvillalba', 'Paolo Villalba', '32555jibia');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('rbahamonde', 'Rufino Bahamonde', '25263cafre');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('rbetancur', 'Romeo Betancur', '52344cortar');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('rerrazuriz', 'Rosendo Errazuriz', '12345');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('rmartin', 'Rosario San Martin', '52113OPA');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('RossGeller85', 'Albano Jimenez', '31311nadie');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('rraicahuin', 'Rosa Raicahuin', '61263octavo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('ShinjiIK', 'Marcos Bastidas', '45125torna');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('sleguizamon', 'Sergio Leguizamon', '52625sutil');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('svaldes', 'Sigfrido Valdes', '26524anaco');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('TheDoctor', 'Flavio Nunhez', 'TheDoctor');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('tlevican', 'Teresa Levican', '44452cebro');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('tpaillalef', 'Trinidad Paillalef', '53124flecha');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('tvazquez', 'Tomas Vazquez', '53563acebo');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('tvera', 'Teodosio Vera', '63332acto');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('VamosRiver', 'Piedad Montes De Oca', '31524opaco');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('yvazquez', 'Yeray Vazquez', '62331plaza');
INSERT INTO usuario (nombre_usuario, nombre_y_apellido, contrasenha) VALUES ('zvinueza', 'Zulema Vinueza', '54525cubil');


--
-- TOC entry 2047 (class 0 OID 33953)
-- Dependencies: 179
-- Data for Name: vio_pelicula; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aaguero', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aaguilera', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aavila', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aavila', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('abenitez', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('abuitron', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('abuitron', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('abuitron', 19);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('acarrasco', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('acarrasco', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amaldonado', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amaldonado', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amaldonado', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amaldonado', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amaldonado', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amateus', 7);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amejia', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amejia', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amontenegro', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amontenegro', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amontenegro', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amora', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amora', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('amora', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('anahuelquin', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('apino', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('apino', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('apino', 27);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aquintanilla', 18);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('aquintanilla', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('asaavedra', 11);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('asaavedra', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('asaavedra', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atocornal', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atocornal', 8);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atocornal', 29);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atoledo', 19);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atoledo', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('atoro', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmendez', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmendez', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmendez', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmillachine', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmontt', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmontt', 19);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmontt', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmorales', 10);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmorales', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('bmorales', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('caguilera', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('caguilera', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('caguilera', 17);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('caguilera', 28);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('cartiagoitia', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('cartiagoitia', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('cnahuelpani', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('DaleBoca', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('DarthVader', 19);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('dcruz', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('dcruz', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('elevican', 29);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ElMisterIo', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ElPistero94', 18);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ElPistero94', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('emillachine', 7);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('emillachine', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('emillachine', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('emillachine', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('emolina', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('epincol', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('epincol', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('eriveros', 3);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('esaez', 17);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evalverde', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evalverde', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evalverde', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evelazquez', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evelazquez', 11);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('evelazquez', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('farias', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('farias', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('farias', 10);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('farias', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('farias', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('fsalas', 7);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('fsalas', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ggallardo', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ggallardo', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ggallardo', 17);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ggallardo', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('gmartin', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('gmartin', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('gmartin', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('grodriguez', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('grodriguez', 29);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('gvillalba', 27);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('hcabrera', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('hcabrera', 18);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('hcabrera', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('hcabrera', 28);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('hcabrera', 30);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ichavez', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ichavez', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jalvarado', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jalvarado', 10);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jmartin', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jmartin', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jmartin', 30);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jnavarro', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jnavarro', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jreyes', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jreyes', 7);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jreyes', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jreyes', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('jtoledo', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lcarcamo', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lcarcamo', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lcarcamo', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lcarcamo', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lfernandez', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lfernandez', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lfernandez', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lgomez', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lluna', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lluna', 27);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lrojas', 3);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('lrojas', 8);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ltrivinho', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ltrivinho', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ltrivinho', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('MissDanger', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('MissDanger', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('MissDanger', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('mnavarro', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('nacosta', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('nacosta', 29);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguilera', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguilera', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguilera', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguilera', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguilera', 28);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguirre', 3);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('naguirre', 10);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('obustamante', 3);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('obustamante', 7);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('obustamante', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('odavila', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('operez', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('operez', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('operez', 19);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('operez', 29);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ovarela', 8);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ovarela', 12);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ovarela', 24);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ovarela', 27);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('pcarvajal', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('pcarvajal', 10);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('pcarvajal', 30);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('pmariman', 30);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('projas', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('pvillalba', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbahamonde', 2);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbahamonde', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbetancur', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbetancur', 15);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbetancur', 18);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbetancur', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rbetancur', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rmartin', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('RossGeller85', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('rraicahuin', 9);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('ShinjiIK', 13);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('svaldes', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('svaldes', 5);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('svaldes', 14);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('svaldes', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('TheDoctor', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('TheDoctor', 22);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('TheDoctor', 26);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tlevican', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tpaillalef', 16);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tvazquez', 4);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tvazquez', 21);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tvazquez', 25);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('tvera', 1);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('yvazquez', 27);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('zvinueza', 6);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('zvinueza', 20);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('zvinueza', 23);
INSERT INTO vio_pelicula (nombre_usuario, id_pelicula) VALUES ('zvinueza', 26);


--
-- TOC entry 2046 (class 0 OID 33943)
-- Dependencies: 178
-- Data for Name: vio_serie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('aavila', 'Breaking Bad', 2008);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('acardenas', 'Los Simpsons', 1989);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('ajimenez', 'Los Simpsons', 1989);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('ajimenez', 'The Big Bang Theory', 2007);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('amateus', 'BattleStar Galactica', 1980);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('anahuelquin', 'Game of Thrones', 2011);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('apino', 'Gunsmoke', 1955);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('asaavedra', 'BattleStar Galactica', 1980);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('atocornal', 'House of Cards', 2013);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('bmontt', 'Cowboy Bebop', 1998);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('BreakingThrones', 'Game of Thrones', 2011);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('ccaucaman', 'Cowboy Bebop', 1998);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('DarthVader', 'Boardwalk Empire', 2010);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('dcruz', 'Gunsmoke', 1955);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('dmartin', 'BattleStar Galactica', 1980);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('dmartin', 'Magnum PI', 1980);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('eaguilera', 'Friends', 1994);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('ejuarez', 'Los Simpsons', 1989);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('eriveros', 'Twin Peaks', 1990);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('gcalderon', 'Doctor House', 2004);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('gchaura', 'Los Simpsons', 1989);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('gmartin', 'Gotham', 2014);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('gpanguilef', 'Breaking Bad', 2008);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('gvillalba', 'The Big Bang Theory', 2007);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('javendanho', 'Twin Peaks', 1990);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('lgomez', 'House of Cards', 2013);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('lrojas', 'BattleStar Galactica', 2005);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('lrojas', 'Friends', 1994);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('mhuenteo', 'Gunsmoke', 1955);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('mleguizamon', 'Malcolm en el medio', 2000);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('odavila', 'Magnum PI', 1980);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('pvillalba', 'Bonanza', 1959);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('rerrazuriz', 'Game of Thrones', 2011);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('RossGeller85', 'Friends', 1994);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('rraicahuin', 'Gotham', 2014);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('ShinjiIK', 'Cowboy Bebop', 1998);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('sleguizamon', 'Twin Peaks', 1990);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('TheDoctor', 'Breaking Bad', 2008);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('VamosRiver', 'Bonanza', 1959);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('VamosRiver', 'Gotham', 2014);
INSERT INTO vio_serie (nombre_usuario, nombre_serie, anho_serie) VALUES ('yvazquez', 'Boardwalk Empire', 2010);


-- Completed on 2019-05-30 12:38:17 -03

--
-- PostgreSQL database dump complete
--

