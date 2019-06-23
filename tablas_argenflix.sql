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
	duracion			INT				,	
	calificacion		INT 			,
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
	edad 				INT			 	,
	nacionalidad		varchar(20) 	
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
-- Enunciado:
-- Una vez creada la base de datos, el analista detecta que necesitamos modelar el concepto de actor fetiche. 
-- Se asume que cada director tiene sólo un actor fetiche y que dicho actor se encuentra
-- registrado en el sistema. Escriba el código SQL que lleve adelante dicha modificación y ejecútelo.

-- Agrego la columna "actor_fetiche" a la relacion <Director> 

ALTER TABLE director ADD COLUMN actor_fetiche varchar(50);
ALTER TABLE director ADD CONSTRAINT director_actor_fetiche FOREIGN KEY (actor_fetiche) REFERENCES actor(nombre);


--					**********************************************************************************************


-- ******************************************************************************************************
-- ********************************************** 2 -  DML **********************************************
-- ******************************************************************************************************


--A)
-- Enunciado:
-- Actualizar todas las películas que hayan sido protagonizadas por Steve Guttenberg o Ian Ziering
-- asígnandole una calificación de 10, que es la máxima calificacion.

-- Obtenemos los directores argentinos a partir de la consulta:	
 
--		SELECT * FROM pelicula WHERE nombre_actor = 'Steve Guttenberg'
--			UNION	
--			SELECT* FROM pelicula WHERE nombre_actor = 'Ian Ziering';  

--
-- A partir de eso vemos que solo 2 peliculas lo cumplen, ya que obtenemos los siguientes nombres(<Pelicula>):

--  _______________________	__________
-- | 					   |		  |
-- |	NOMBRE_PELICULA    |	ID	  |	...
-- |_______________________|__________|
-- |					   |		  |	
-- | Sharknado			   |	59	  |	...		 
-- | Lavalantula		   |	60	  |	...		
-- |_______________________|__________|	


-- Nota: Hago la subconsulta a traves de id_pelicula para no "cargarme" datos, al hacer la seleccion por un atributo no-clave 
-- (Tranquilamente uno de ess actores podria haber trabajado en N peliculas que tengan el mismo nombre)

UPDATE pelicula SET calificacion = 10
	WHERE id_pelicula IN 
		(SELECT id_pelicula FROM pelicula WHERE nombre_actor = 'Steve Guttenberg'
		UNION	
		SELECT id_pelicula FROM pelicula WHERE nombre_actor = 'Ian Ziering');

-- Nota: 
-- En lo personal prefiero la siguiente forma equivalente de escribir esta consulta, pero no queria resolverlo a traves de la condicion logica del WHERE
-- sino usando la logica de AR. (Independientemente de que el motor ejecuta la consulta de forma optimizada a como la escribimos - a bajo nivel -
-- prefiero esta opcion xq no recorre menos veces la misma cantidad de tuplas)

-- UPDATE pelicula SET calificacion = 10 
--	 WHERE  nombre_actor = 'Steve Guttenberg' OR  nombre_actor = 'Ian Ziering';


-- B)
-- Enunciado:

-- Actualizar todas las películas que hayan sido dirigidas por directores argentinos asígnandole una
-- calificación de 10. 

-- Obtenemos los directores argentinos a partir de la consulta:	
 
--		SELECT nombre_director FROM director where nacionalidad = 'Argentino');  
 
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

--		SELECT * FROM pelicula WHERE nombre_director IN (SELECT nombre_director FROM director where nacionalidad = 'Argentino');  

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
-- Enunciado:
-- Eliminar todas las series con menos de 3 temporadas.	

-- Al realizar la siguiente consulta:

-- 		SELECT * FROM serie WHERE temporadas < 3;

-- Vemos que estas son las series que deben ser borradas:
  
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
-- Enunciado:
-- Obtener la cantidad de películas en las que haya actuado el actor Rose McGowan.

SELECT COUNT(*) FROM pelicula WHERE nombre_actor = 'Rose McGowan';	
	
	
-- B)
-- Enunciado:
-- Obtener la cantidad películas por nacionalidad del director, y el promedio de puntaje de las mis-
-- mas. El resultado debe tener sólo los campos <nacionalidad, cantidad, puntaje_promedio>. Y estar
-- ordenado alfabeticamente por nacionalidad.





-- C)	
-- Listar el nombre y la cantidad de temporadas de las series que hayan sido dirigidas por directores
-- que hayan dirigido por lo menos alguna película.

SELECT nombre_serie, temporadas FROM  
	serie NATURAL JOIN 
		(SELECT nombre_director FROM pelicula
		 INTERSECT
   		 SELECT nombre_director FROM serie) AS directore_de_peliculas_y_series;


-- D)
-- Enunciado:
-- Obtener el nombre de los actores que actuaron en películas pero que no lo hicieron en series. Los
-- resultados no deben tener registros repetidos.

-- Notas: 
-- - Entiendo que si <Actor> tiene todos los actores del sistema, y entendiendo que los actores solamente trabajan necesariamente
-- en una u otra (o ambas). Asi mismo si a todos los actores, les resto los actores que trabajaron en peliculas (que incluye a los que solo hacen peliculas
-- y a los que hacen ambas) obtendriamos asi los actores que trabajaron solo en series.
-- - Nombre<Actor> es PK, es decir no hay 2 actores con el mismo nombre.

SELECT DISTINCT nombre FROM actor
EXCEPT
SELECT nombre_actor FROM pelicula;



-- E)
-- Enunciado:
-- Obtener los nombres de las películas, actores y directores de las películas en las que un director
-- dirigió a su actor fetiche.
-- Asumo que me piden los nombres de los actores y los directores, tanto como el de las peliculas, y no todas las instancias completas de los 2 primeros. 

SELECT nombre_pelicula , nombre_actor, nombre_director 
	FROM( 
			SELECT * 
			-- Aca obtengo los directores con sus peliculas.
			FROM (director d 
			NATURAL JOIN 
			pelicula p) AS foo1) AS foo2
			-- De ellos me quedo con las tuplas cuyo actor protagonista sea tambien el actor fetiche del director.
			WHERE actor_fetiche = nombre_actor;  

--Nota: Si en vez del nombre del actor/director, se pidiera la instancia, faltaria hacer un NATURAL JOIN para traer todos los datos. 			


-- F)
-- Enunciado:
-- Obtener los nombres de la serie, el género y el nombre del usuario de las series que hayan sido vistas
-- por los usuarios de nombre “RossGeller85” o “BreakingThrones”.

SELECT vs.nombre_serie, s.genero, vs.nombre_usuario 
FROM serie s, vio_serie vs
WHERE vs.nombre_serie IN 
		(SELECT nombre_serie FROM vio_serie WHERE nombre_usuario = 'RossGeller85' 
		UNION
		SELECT nombre_serie FROM vio_serie WHERE nombre_usuario = 'BreakingThrones');


-- G)
-- Enunciado:
-- Obtener la tabla de usuarios ordenados de mayor a menor de acuerdo a la cantidad de películas que
-- vieron. La tabla resultante debe tener 2 columnas: el nombre del usuario y la cantidad de películas
-- vistas.





-- H)
-- Enunciado:
-- Por cuestiones legales es necesario eliminar al usuario "DarthVader".

DELETE FROM usuario WHERE nombre_usuario = 'DarthVader';


-- I)
-- Enunciado:
-- Es necesario identificar a los directores que no hayan dirigido ninguna película. Presente al menos
-- dos consultas equivalentes.

-- Consulta 1)
SELECT nombre_director FROM director
EXCEPT
SELECT nombre_director FROM pelicula;


-- Consulta 2)






-- j)
-- Enunciado:
-- De los actores, se requiere identificar al segundo de mayor edad.


-- K)
-- Enunciado:
-- Crear una vista que muestre, de las 3 peliculas más vistas que no sean estadounidenses, cuál es
-- su origen y la cantidad de veces que fue vista por los usuarios del sistema. La vista debe llamarse
-- otras_mas_vistas, los campos resultantes deben denominarse origen_pelicula y veces_vista.
