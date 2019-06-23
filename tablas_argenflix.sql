-- ******************************************************************************************************
-- ********************************************** 1 -  DDL **********************************************
-- ******************************************************************************************************

-- ******************************************************************************************************
-- *********************************************** Tablas ***********************************************
-- ******************************************************************************************************

-- A)

-- Enunciado:
--usuario<nombre_usuario: VARCHAR(35) PK, nombre_y_apellido: VARCHAR(60),
--contrasenha: VARCHAR(16)>

CREATE TABLE usuario(
	nombre_usuario 		varchar(35) 	PRIMARY KEY,
	nombre_y_apellido 	varchar(60) 	NOT NULL,
	contrasenha			varchar(16) 	NOT NULL
);


-- Enunciado:
--pelicula<id_pelicula: INT PK, nombre_pelicula: VARCHAR(40), genero: VARCHAR(20),
--duracion: INT, calificacion: INT, nombre_actor: VARCHAR(50) FK,
--nombre_director: VARCHAR(50) FK>

CREATE TABLE pelicula(
	id_pelicula 		INT 			PRIMARY KEY,
	nombre_pelicula 	varchar(40) 	NOT NULL,
	genero				varchar(20)		NOT NULL,
	duracion			INT				NOT NULL,	
	calificacion		INT 			NOT NULL,
	nombre_actor		varchar(50)		NOT NULL,
	nombre_director		varchar(50)		NOT NULL,

	CONSTRAINT pelicula_nombre_actor_fk    FOREIGN KEY (nombre_actor) 	 REFERENCES actor(nombre) 	  ON DELETE CASCADE, 
	CONSTRAINT pelicula_nombre_director_fk FOREIGN KEY (nombre_director) REFERENCES director(nombre_director) ON DELETE CASCADE
);


-- Enunciado:
--serie<nombre_serie: VARCHAR(30) PK, anho_serie: INT PK, genero: VARCHAR(20),
--temporadas: INT, calificacion: INT, nombre_actor: VARCHAR(50) FK,
--nombre_director: VARCHAR (50) FK>

CREATE TABLE serie(
	nombre_serie		varchar(30)		NOT NULL,
	anho_serie			INT				NOT NULL,
	genero				varchar(20)		NOT NULL,
	temporadas			INT				NOT NULL,	
	calificacion		INT 			NOT NULL,
	nombre_actor		varchar(50)		NOT NULL,
	nombre_director		varchar(50)		NOT NULL,
	
	CONSTRAINT serie_pk PRIMARY KEY (nombre_serie, anho_serie),
	CONSTRAINT serie_nombre_actor_fk 	FOREIGN KEY (nombre_actor)	  REFERENCES actor(nombre) 	   ON DELETE CASCADE, 
	CONSTRAINT serie_nombre_director_fk FOREIGN KEY (nombre_director) REFERENCES director(nombre_director) ON DELETE CASCADE
);


-- Enunciado:
--actor<nombre: VARCHAR(50) PK, edad INT, anhos_activo INT>

CREATE TABLE actor(
	nombre 				varchar(50) 	PRIMARY KEY,
	edad 				INT 			NOT NULL,
	anhos_activo		INT		 		NOT NULL
);


-- Enunciado:
--director<nombre_director: VARCHAR(50) PK, edad: INT, nacionalidad: VARCHAR(20)>

CREATE TABLE director(
	nombre_director		varchar(50) 	PRIMARY KEY,
	edad 				INT			 	NOT NULL,
	nacionalidad		varchar(20) 	NOT NULL
);


-- Enunciado:
--vio_pelicula<nombre_usuario: VARCHAR(35) PK FK, id_pelicula: INT PK FK>

CREATE TABLE vio_pelicula(
	nombre_usuario		varchar(35) 	NOT NULL,
	id_pelicula			INT			 	NOT NULL,

	CONSTRAINT vio_pelicula_pk PRIMARY KEY (nombre_usuario, id_pelicula),
	CONSTRAINT vio_pelicula_nombre_usuario_fk FOREIGN KEY (nombre_usuario)	REFERENCES 	usuario(nombre_usuario) ON DELETE CASCADE,
	CONSTRAINT vio_pelicula_id_pelicula_fk 	  FOREIGN KEY (id_pelicula) 	REFERENCES 	pelicula(id_pelicula) ON DELETE CASCADE 
);


-- Enunciado:
--vio_serie<nombre_usuario:VARCHAR(35) PK FK, nombre_serie:VARCHAR(50) PK FK,
--anho_serie: INT PK FK>

CREATE TABLE vio_serie(
	nombre_usuario		varchar(35) 	NOT NULL,
	nombre_serie		varchar(50) 	NOT NULL,
	anho_serie			INT			 	NOT NULL,

	CONSTRAINT vio_serie_pk PRIMARY KEY (nombre_usuario, nombre_serie, anho_serie),
	CONSTRAINT vio_serie_nombre_usuario_fk FOREIGN KEY (nombre_usuario)  		  REFERENCES usuario(nombre_usuario) 		 ON DELETE CASCADE,
	CONSTRAINT vio_serie_serie_fk 		   FOREIGN KEY (nombre_serie, anho_serie) REFERENCES serie(nombre_serie, anho_serie) ON DELETE CASCADE 
);


--					**********************************************************************************************


-- B)
-- Agrego la columna "actor_fetiche" a la relacion <Director> 

ALTER TABLE director ADD COLUMN actor_fetiche varchar(50);
ALTER TABLE director ADD CONSTRAINT director_actor_fetiche FOREIGN KEY (actor_fetiche) REFERENCES actor(nombre);


--					**********************************************************************************************


-- ******************************************************************************************************
-- ********************************************** 2 -  DML **********************************************
-- ******************************************************************************************************


--A)

-- Obtenemos los directores argentinos a partir de la consulta:	

-- 
--		SELECT * FROM pelicula WHERE nombre_actor = 'Steve Guttenberg'
--			UNION	
--			SELECT* FROM pelicula WHERE nombre_actor = 'Ian Ziering';  

--
-- A partir de eso vemos que solo 2 peliculas lo cumplen: 
--	Obtenemos los siguientes nombres(<Pelicula>):
--  _______________________	__________
-- | 					   |		  |
-- |	NOMBRE_PELICULA    |	ID	  |	...
-- |_______________________|__________|
-- |					   |		  |	
-- | Sharknado			   |	59	  |	...		 
-- | Lavalantula		   |	60	  |	...		
-- |_______________________|__________|	



-- Hago la subconsulta a traves de id_pelicula para no "cargarme" datos, al hacer la seleccion por un atributo no-clave

UPDATE pelicula SET calificacion = 10
	WHERE id_pelicula IN 
		(SELECT id_pelicula FROM pelicula WHERE nombre_actor = 'Steve Guttenberg'
		UNION	
		SELECT id_pelicula FROM pelicula WHERE nombre_actor = 'Ian Ziering');

-- Nota: 
-- En lo personal prefiero la siguiente forma de escribir esta consulta, pero no queria resolverlo a traves de la condicion logica del WHERE
-- sino usando la logica de AR. (Independientemente de que el motor ejecuta la consulta de forma optimizada a como la escribimos - a bajo nivel -
-- prefiero esta opcion xq no recorre menos veces la misma cantidad de tuplas)

UPDATE pelicula SET calificacion = 10 
	WHERE  nombre_actor = 'Steve Guttenberg' OR  nombre_actor = 'Ian Ziering';


-- B)

-- Obtenemos los directores argentinos a partir de la consulta:	
-- 
--		SELECT nombre_director FROM director where nacionalidad = 'Argentino');  
-- 
--	Obtenemos los siguientes nombres(<Director>):
--  _______________________	
-- | 					   |
-- |	NOMBRE_DIRECTOR    |	...
-- |_______________________|
-- |					   |	
-- | Alejandro Doria  	   |	...		(A)
-- | Juan Jose Campanella  |	...		(B)
-- | Federico Barroso      |	...		(C)
-- |_______________________|	



-- A partir de esto, con la siguiente consulta obtenemos las peliculas filmadas por esos directores:
--
--		SELECT * FROM pelicula WHERE nombre_director IN (SELECT nombre_director FROM director where nacionalidad = 'Argentino');  
--
--	Obtenemos los siguientes nombres(<Pelicula>):
--  _______________________	__________
-- | 					   |		  |
-- |	NOMBRE_PELICULA    |	ID	  |	...
-- |_______________________|__________|
-- |					   |		  |	
-- | Esperando la carroza  |	61	  |	...		(A) 
-- | Metegol  			   |	22	  |	...		(B)
-- | Basicamente un pozo   |	26	  |	...		(C)
-- |_______________________|__________|	


UPDATE pelicula p SET calificacion = 10
	WHERE p.nombre_director IN 
		(SELECT nombre_director FROM director where nacionalidad = 'Argentino');

-- C)
--
-- Al realizar la siguiente consulta:
--
-- 		SELECT * FROM serie WHERE temporadas < 3;
--
-- Vemos que estas son las series que deben ser borradas:
--  
-- __________________________________________________________
-- | 					   |				|				|
-- |	NOMBRE_SERIE       |       ANHO     | 	TEMPORADAS 	|	...
-- |_______________________|________________|_______________|
-- |					   |				|				|
-- | BattleStar Galactica  |       1980		|		1		|	...
-- | Cowboy Bebop          |       1998 	|		1		|	...
-- | Gotham                |       2014		|		2		|	...
-- | Twin Peaks            |       2014		|		2		|	...
-- |_______________________|________________|_______________|	


DELETE FROM serie WHERE temporadas < 3;




--					**********************************************************************************************


-- ******************************************************************************************************
-- ******************************************* 3 -  CONSULTAS *******************************************
-- ******************************************************************************************************


-- A)

SELECT COUNT(*) FROM pelicula WHERE nombre_actor = 'Rose McGowan';	

	
-- B)

-- C)	

-- D)

-- E)

-- F)

SELECT vs.nombre_serie, s.genero, vs.nombre_usuario 
FROM serie s, vio_serie vs
WHERE vs.nombre_serie IN 
		(SELECT nombre_serie FROM vio_serie WHERE nombre_usuario = 'RossGeller85' 
		UNION
		SELECT nombre_serie FROM vio_serie WHERE nombre_usuario = 'BreakingThrones');

-- G)

-- H)

DELETE FROM usuario WHERE nombre_usuario = 'DarthVader';

-- I)

-- j)

-- K)
