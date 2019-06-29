-- ACLARACION: 
-- Para la resolucion del siguiente TP el "tipo" del atributo id_pelicula de la tabla <pelicula> se
-- definio como del "tipo" SERIAL (ligereza del lenguaje, en realidad, Serial no es un tipo per se) dado lo visto en la lista de email,
-- pero en un principio se habia planteado como INT, dado lo especificado en el enunciado y por completitud del mismo. 
-- Lo leido en la lista fue la unica razon fehaciente que encontre para cambiar el SERIAL por INT. (Sacando el detalle obvio que lo mas 
-- razonable a la hora de crear una BBDD, es que las claves primarias de una relacion X se autogeneren, evitando asi el error a la hora
-- de cargar tuplas con IDs invalidos.) Tambien dado lo visto en clase, que serial es una forma de general una relacion nueva, cuya 
-- unica tupla en un numero Entero autoincremental, para poder ser utilizado como campo de la relacion definida. Se desprende entonces,
-- que ese Serial ES UN entero. 
-- Pero vuelve a repetir, que si el enunciado LITERALMENTE pone INT, uno no lo modifique - Independientemente de que sea logico que sea
-- SERIAL en lugar de INT por las razones recien mencionadas.  
-- En principio, en otra base de datos que cree, defini las tablas como lo pide el enunciado. (Con id_pelicula = INT)
-- A la hora de hacer correr los tests (utilizando postgresql desde consola, conrriendo en Ubuntu 18.04, sin PgAdmin - aunque calculo
-- que toda esta informacion deberia de ser transparente) NO salto NINGUN error de tipo/integridad/etc. Y si no hubiera sido por los 
-- mails de la lista, dicho error seria transparente, dado que desde mi experiencia empirica, dicho error no aparecio. De hecho, pude
--  ingresar los datos normalmente y empezar a resolver las consultas sin errores.
-- Luego de leer los mails, revise el dataset en detenemiento y me di cuenta que las tuplas se inserta de la siguiente manera:

--		INSERT INTO pelicula (id_pelicula, nombre_pelicula, genero, duracion, calificacion, nombre_actor, nombre_director) VALUES (60, 'Lavalantula', 'Terror', 92, 8, 'Steve Guttenberg', 'Mike Mendez');        

-- Fue un interesante descubrimiento, aunque un poco antiintuitivo: Sabiendo que si agregamos que la clase primaria sea SERIAL
-- esperaria poder delegar en eso la responsabilidad de generar las keys, en lugar de ingresarlas explicitamente.
-- Para probar esto, se planteo:

-- 		CREATE TABLE foo(
--	 		id 		SERIAL 			PRIMARY KEY,
--	 		value 	varchar(60) 	NOT NULL
-- 		);

-- Al cargar los datos, es posible realizarlos de la siguiente forma:

--		INSERT INTO foo (value) VALUES ('H');

-- Dandonos como resultado:
--  _______________________
-- | 		   |		  |
-- | 	ID	   |  VALUE	  |
-- |___________|__________|
-- |	       |		  |	
-- |     1     |	H	  |		
-- |________ __|__________|


-- ... O de la siguiente forma:

--		INSERT INTO foo (id, value) VALUES (2, 'X');

-- Dandonos como resultado 

--	_______________________
-- | 		   |		  |
-- | 	ID	   |  VALUE	  |	
-- |___________|__________|
-- |	       |		  |	
-- |     1     |	H	  |			 
-- |  	 2     |	X	  |			
-- |________ __|__________|	


-- La idea interesante que se desprende es que siempre que el valor dado para "id" no esta presente en la relacion, independiente de si
-- se auto genero o si se ingreso explicitamente, uno podria cargar datos de ambas formas que son cuasi equivalentes (cuasi, por la 
-- razon dada). 
-- Asi mismo y por estas razones es que plantie el ejercicio inicialmente como INT en lugar de serial. Como ya repeti, el rol del 
-- estudiante implica no solo demostrar/aplicar conocimientos aprendidos y aprehendidos, sino tambien respetar correctamente consignas.
-- De haber visto el error, podria haber reaccionado en consecuencia, pero esto no ocurrio. (Con el unico compañero que hable al respecto,
-- la unica diferencia - obviando que el lo corria en Windows y yo en Ubuntu, como dije anteriormente, informacion que repito deberia
-- ser transparente - es que el usa PgAdmin y yo no). Aunque repito, entiendo que lo mas logico seria que los ids sean del tipo SERIAL,
-- como vimos en la teoria de SQL o bien en la practica, cuando creamos componentes, articulos, envios, etc.  (logico y practico, que mas quisiera que delegar trabajo y asegurar integridad a 
-- la hora de ingresar datos, y que cada instancia tenga un ID correcto dentro del "pool" que maneja el SERIAL)
-- El oficio del estudiante que mencione anteriormente, implica ante un error, tomarlo como un reto y aprender algo del mismo (cosa que
-- comparto e intento aplicar), pero si dicho error no aparece, tal accion resulta imposible


-- ******************************************************************************************************
-- ********************************************** 1 -  DDL **********************************************
-- ******************************************************************************************************

-- ******************************************************************************************************
-- *********************************************** Tablas ***********************************************
-- ******************************************************************************************************


-- A)

-- Enunciado:
--  usuario<nombre_usuario: VARCHAR(35) PK, nombre_y_apellido: VARCHAR(60),
--  contrasenha: VARCHAR(16)>

CREATE TABLE usuario(
	nombre_usuario 		varchar(35) 	PRIMARY KEY,
	nombre_y_apellido 	varchar(60) 	NOT NULL,
	contrasenha			varchar(16) 	NOT NULL
);


-- Enunciado:
--  pelicula<id_pelicula: INT PK, nombre_pelicula: VARCHAR(40), genero: VARCHAR(20),
--  duracion: INT, calificacion: INT, nombre_actor: VARCHAR(50) FK,
--  nombre_director: VARCHAR(50) FK>

CREATE TABLE pelicula(
	id_pelicula 		SERIAL 			PRIMARY KEY,
	nombre_pelicula 	varchar(40) 	NOT NULL,
	genero				varchar(20)		NOT NULL,
	duracion			INT				NOT NULL,	
	calificacion		INT 			NOT NULL,
	nombre_actor		varchar(50)		NOT NULL,
	nombre_director		varchar(50)		NOT NULL,

	CONSTRAINT pelicula_nombre_actor_fk    FOREIGN KEY (nombre_actor) 	 REFERENCES actor(nombre) 	  		  ON DELETE CASCADE, 
	CONSTRAINT pelicula_nombre_director_fk FOREIGN KEY (nombre_director) REFERENCES director(nombre_director) ON DELETE CASCADE
);


-- Enunciado:
--  serie<nombre_serie: VARCHAR(30) PK, anho_serie: INT PK, genero: VARCHAR(20),
--  temporadas: INT, calificacion: INT, nombre_actor: VARCHAR(50) FK,
--  nombre_director: VARCHAR (50) FK>

CREATE TABLE serie(
	nombre_serie		varchar(30)		NOT NULL,
	anho_serie			INT				NOT NULL,
	genero				varchar(20)		NOT NULL,
	temporadas			INT				NOT NULL,	
	calificacion		INT 			NOT NULL,
	nombre_actor		varchar(50)		NOT NULL,
	nombre_director		varchar(50)		NOT NULL,
	
	CONSTRAINT serie_pk PRIMARY KEY (nombre_serie, anho_serie),
	CONSTRAINT serie_nombre_actor_fk 	FOREIGN KEY (nombre_actor)	  REFERENCES actor(nombre) 	           ON DELETE CASCADE, 
	CONSTRAINT serie_nombre_director_fk FOREIGN KEY (nombre_director) REFERENCES director(nombre_director) ON DELETE CASCADE
);


-- Enunciado:
--  actor<nombre: VARCHAR(50) PK, edad INT, anhos_activo INT>

CREATE TABLE actor(
	nombre 				varchar(50) 	PRIMARY KEY,
	edad 				INT 			NOT NULL,
	anhos_activo		INT		 		NOT NULL
);


-- Enunciado:
--  director<nombre_director: VARCHAR(50) PK, edad: INT, nacionalidad: VARCHAR(20)>

CREATE TABLE director(
	nombre_director		varchar(50) 	PRIMARY KEY,
	edad 				INT			 	NOT NULL,
	nacionalidad		varchar(20) 	NOT NULL
);
	

-- Enunciado:
--  vio_pelicula<nombre_usuario: VARCHAR(35) PK FK, id_pelicula: INT PK FK>

CREATE TABLE vio_pelicula(
	nombre_usuario		varchar(35) 	NOT NULL,
	id_pelicula			INT			 	NOT NULL,

	CONSTRAINT vio_pelicula_pk PRIMARY KEY (nombre_usuario, id_pelicula),
	CONSTRAINT vio_pelicula_nombre_usuario_fk FOREIGN KEY (nombre_usuario)	REFERENCES 	usuario(nombre_usuario) ON DELETE CASCADE,
	CONSTRAINT vio_pelicula_id_pelicula_fk 	  FOREIGN KEY (id_pelicula) 	REFERENCES 	pelicula(id_pelicula)   ON DELETE CASCADE 
);


-- Enunciado:
--  vio_serie<nombre_usuario:VARCHAR(35) PK FK, nombre_serie:VARCHAR(50) PK FK,
--  anho_serie: INT PK FK>

CREATE TABLE vio_serie(
	nombre_usuario		varchar(35) 	NOT NULL,
	nombre_serie		varchar(50) 	NOT NULL,
	anho_serie			INT			 	NOT NULL,

	CONSTRAINT vio_serie_pk PRIMARY KEY (nombre_usuario, nombre_serie, anho_serie),
	CONSTRAINT vio_serie_nombre_usuario_fk FOREIGN KEY (nombre_usuario)  		  REFERENCES usuario(nombre_usuario) 		 ON DELETE CASCADE,
	CONSTRAINT vio_serie_serie_fk 		   FOREIGN KEY (nombre_serie, anho_serie) REFERENCES serie(nombre_serie, anho_serie) ON DELETE CASCADE 
);

-- ACLARACION:
-- las tablas se crearon en el orden del presente TP, pero  debido a que <pelicula> y <serie> tienen como Clave Foranea 
-- Claves Primarias de las tablas <director> y <actor>, las mismas fueron ingresadas como:

--   usuario
--   director
--   actor 
--   serie       	Siendo el orden de estas ultimas indistinto. 
--   pelicula

-- Asi mismo, y por similares razones, luego de ingresadas las tablas anteriores, se dispone ingresar las restantes relaciones:

--	vio_pelicula  	Siendo el orden de estas ultimas indistinto.
--	vio_serie	


--					**********************************************************************************************


-- B)
-- Enunciado:
-- Una vez creada la base de datos, el analista detecta que necesitamos modelar el concepto de actor fetiche. 
-- Se asume que cada director tiene sólo un actor fetiche y que dicho actor se encuentra
-- registrado en el sistema. Escriba el código SQL que lleve adelante dicha modificación y ejecútelo.

-- Agrego la columna "actor_fetiche" a la relacion <Director>. La mismo es nulleable. 

ALTER TABLE director ADD COLUMN actor_fetiche varchar(50);
ALTER TABLE director ADD CONSTRAINT director_actor_fetiche FOREIGN KEY (actor_fetiche) REFERENCES actor(nombre);

-- En este punto, todos los tests fueron pasados con exito. 

-- ACLARACION:
-- El enunciado NO especifica cuales son las restricciones de Integridad, en principio cargue todos los campos como NOT NULL.
-- Para corregirlo, se utiliza:

ALTER TABLE director 
ALTER COLUMN nacionalidad
DROP NOT NULL;

ALTER TABLE pelicula
ALTER COLUMN calificacion 
DROP NOT NULL;

ALTER TABLE pelicula
ALTER COLUMN duracion 
DROP NOT NULL;


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
-- (Tranquilamente uno de esos actores podria haber trabajado en N peliculas que tengan el mismo nombre)

UPDATE pelicula
SET calificacion = 10
WHERE id_pelicula IN
    (SELECT id_pelicula
     FROM pelicula
     WHERE nombre_actor = 'Steve Guttenberg'
     UNION SELECT id_pelicula
     FROM pelicula
     WHERE nombre_actor = 'Ian Ziering');

-- Nota: 
-- En lo personal prefiero la siguiente forma equivalente de escribir esta consulta, pero no queria resolverlo a traves de la condicion logica del WHERE
-- sino usando la logica de AR. (Independientemente de que el motor ejecuta la consulta de forma optimizada a como la escribimos - a bajo nivel -
-- prefiero esta opcion xq se recorre menos veces la misma cantidad de tuplas)

-- UPDATE pelicula SET calificacion = 10 
--	 WHERE  nombre_actor = 'Steve Guttenberg' OR  nombre_actor = 'Ian Ziering';


-- B)
-- Enunciado:

-- Actualizar todas las películas que hayan sido dirigidas por directores argentinos asígnandole una
-- calificación de 10. 

-- Obtenemos los nombres de los directores argentinos a partir de la consulta:	
 
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

UPDATE pelicula p
SET calificacion = 10
WHERE p.nombre_director IN
    (SELECT d.nombre_director
     FROM director d
     WHERE nacionalidad = 'Argentino');


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

DELETE 
FROM serie 
WHERE temporadas < 3;


--					**********************************************************************************************


-- ******************************************************************************************************
-- ******************************************* 3 -  CONSULTAS *******************************************
-- ******************************************************************************************************


-- A)
-- Enunciado:
-- Obtener la cantidad de películas en las que haya actuado el actor Rose McGowan.

SELECT COUNT(nombre_actor) 
FROM pelicula 
WHERE nombre_actor = 'Rose McGowan';	
	
	
-- B) 
-- Enunciado:
-- Obtener la cantidad películas por nacionalidad del director, y el promedio de puntaje de las mis-
-- mas. El resultado debe tener sólo los campos <nacionalidad, cantidad, puntaje_promedio>. Y estar
-- ordenado alfabeticamente por nacionalidad.

SELECT  nacionalidad, 
		COUNT (*) as cantidad, 
		AVG (calificacion) as puntaje_promedio -- Si lo quisiera redondear seria: ROUND(AVG(ccalificacion)) AS puntaje_promedio
FROM pelicula p NATURAL JOIN director d
WHERE NOT (d.nacionalidad IS NULL AND p.calificacion IS NULL)
GROUP BY nacionalidad
ORDER BY nacionalidad ;


-- C)	
-- Listar el nombre y la cantidad de temporadas de las series que hayan sido dirigidas por directores
-- que hayan dirigido por lo menos alguna película.

SELECT nombre_serie,	
       temporadas
FROM serie
NATURAL JOIN
  (SELECT nombre_director
   FROM pelicula INTERSECT SELECT nombre_director
   FROM serie) AS directores_de_peliculas_y_series;

-- Solucion alternativa
-- Sin usar un JOIN esto tambien se podria haber planteado como:
 SELECT nombre_serie, temporadas 
	FROM  serie 
		WHERE nombre_director 
		IN
		(SELECT nombre_director FROM pelicula
		 INTERSECT
 		 SELECT nombre_director FROM serie);


-- Solucion alternativa
-- O:
 SELECT DISTINCT nombre_serie,temporadas
 FROM serie,  pelicula
 WHERE serie.nombre_director = pelicula.nombre_director;


-- D)
-- Enunciado:
-- Obtener el nombre de los actores que actuaron en películas pero que no lo hicieron en series. Los
-- resultados no deben tener registros repetidos.
 
-- Nota: 
-- Entiendo que si me quedo con los actores de <Pelicula> que tiene intrinsecamente a todos los actores del sistema que trabajaron en al menos una pelicula, 
-- Asi mismo si a todos estos actores, les resto los actores que trabajaron en series (Obtenidos de la tabla <serie> que incluye a los que solo hacen series
-- y a los que hacen ambas) obtendriamos asi los actores que trabajaron solo en peliculas.

SELECT nombre_actor FROM pelicula
EXCEPT
SELECT nombre_actor FROM serie;

-- Consulta auxiliar
-- Nota: Para probarlo se plantea: 	
SELECT * 
	FROM 
		(SELECT nombre_actor 
			from serie 
		INTERSECT  
			SELECT DISTINCT nombre 
				FROM actor
			EXCEPT
			SELECT nombre_actor 
				FROM serie)as actores_de_series_y_peliculas;

-- Al realizar la consulta, se ve que la interseccion entre los actores que trabajaron en series con los actores de la consulta dada es VACIA:
-- Lo cual tiene sentido, dado el planteo dado. (Una diferencia jamas podria tener elementos en comun)


-- E)
-- Enunciado:
-- Obtener los nombres de las películas, actores y directores de las películas en las que un director
-- dirigió a su actor fetiche.

SELECT nombre_pelicula,
       nombre_actor,
       d.nombre_director
FROM director d
INNER JOIN pelicula p ON p.nombre_actor = d.actor_fetiche;


-- Nota: 
-- Asumo que me piden los nombres de los actores y los directores, tanto como el de las peliculas, y no todas las instancias completas de los 2 primeros. 
-- Si en vez del nombre del actor/director, se pidiera la instancia, faltaria hacer un NATURAL JOIN para traer todos los demas datos. 			


-- F)
-- Enunciado:
-- Obtener los nombres de la serie, el género y el nombre del usuario de las series que hayan sido vistas
-- por los usuarios de nombre “RossGeller85” o “BreakingThrones”.

-- Vemos que las series vistas por esos 2 usuarios son:

-- Consulta auxiliar
 SELECT nombre_serie, anho_serie, nombre_usuario FROM vio_serie 
		WHERE nombre_usuario = 'RossGeller85' OR nombre_usuario = 'BreakingThrones'

--  ____________________________________________________________
-- | 					   |				|				    |
-- |	NOMBRE_SERIE       |   ANHO_SERIE   | 	NOMBRE_USUARIO  |
-- |_______________________|________________|___________________| 
-- |					   |				|				    |
-- | Friends               |      2011  	|	RossGeller85    |	
-- | Game Of Thrones       |      1994     	|	BreakingThrones |	
-- |_______________________|________________|___________________|	


-- Nota1: Asumo que el ejercicio me pide el nombre de la serie, su genero y el nombre de usuario de las series en comun vistas
-- por los usuarios "RosseGeller85" y "BreakingThrones".(Es decir, esta ultima columna mencionada - nombre_usuario - estaria compuesta 
-- por N apariciones de "RosseGeller85" y N' apareciones "BreakingThrones" (en principio N, por no saber, aunque vimos en el cuadro inicial que N == 1 para ambos usuarios) 
-- como tambien M apariciones de otros usuarios que vieron las mismas series que uno, el otro o ambos - Aunque sabemos por el ya mencionado cuadro
-- que no tienen series vistas en comun-) 

-- Solucion1
SELECT s.nombre_serie,
       s.genero,
       nombre_usuario
FROM serie s
INNER JOIN vio_serie vs ON s.nombre_serie = vs.nombre_serie
AND s.anho_serie = vs.anho_serie
WHERE (s.nombre_serie,
       s.anho_serie) IN
    (SELECT nombre_serie,
            anho_serie
     FROM vio_serie
     WHERE nombre_usuario = 'RossGeller85'
       OR nombre_usuario = 'BreakingThrones');

-- Nota2: En caso de haber malentendido el enunciado y de pedirme los nombres de las series, genero (y nombre de usuario) de las series vistas por Ross... 
-- y Breaking... UNICAMENTE por tales usuarios (es decir, en caso de que la columna nombre_usuario unicamente aparezcan ocurrencias de RosseGeller85 y BreakingThrones)  

-- Solucion2
SELECT nombre_serie,
       genero,
       nombre_usuario
FROM
  (SELECT *
   FROM vio_serie
   WHERE nombre_usuario = 'RossGeller85'
     OR nombre_usuario = 'BreakingThrones')AS peliculas_vistas_por_Ross_Breaking
NATURAL JOIN serie;

-- G)
-- Enunciado:
-- Obtener la tabla de usuarios ordenados de mayor a menor de acuerdo a la cantidad de películas que
-- vieron. La tabla resultante debe tener 2 columnas: el nombre del usuario y la cantidad de películas
-- vistas.

-- Nota1:
-- Si el enunciado me pide que considere solamente a los usuarios que SI vieron al menos una pelicula una posible solucion seria:
-- Pero CLARAMENTE la relacion resultante tendria menos tuplas que la tabla <usuario> dado que no esta contemplando a los usuarios 
-- que NO vieron ninguna pelicula, 	

-- Solucion1
SELECT u.nombre_usuario,
       count(vs.id_pelicula) AS cantidad_de_peliculas_vistas
FROM usuario u
INNER JOIN vio_pelicula vs ON u.nombre_usuario = vs.nombre_usuario
GROUP BY u.nombre_usuario
ORDER BY cantidad_de_peliculas_vistas DESC;


-- Nota2:
-- Si encambio,lo que se me pide es lo planteado, pero considerando tanto los usuaros que vieron como los que no	

-- Solucion2
-- A los usuarios que vieron desde 1 a N peliculas... 
SELECT u.nombre_usuario,
       count(vs.id_pelicula) AS cantidad_de_peliculas_vistas
FROM usuario u
INNER JOIN vio_pelicula vs ON u.nombre_usuario = vs.nombre_usuario
GROUP BY u.nombre_usuario
UNION -- ... Les agrego el resto de los usuarios que no vieron ninguna.
SELECT nombre_usuario,
       0
FROM usuario u
WHERE u.nombre_usuario NOT IN
    (SELECT vs.nombre_usuario
     FROM vio_pelicula vs)
ORDER BY cantidad_de_peliculas_vistas DESC;

-- Si habia una forma de hacerlo mas eficiente/elegante, sinceramente no se me ocurrio: A lo que ya tenia le sumo lo que no.


										
-- H)
-- Enunciado:
-- Por cuestiones legales es necesario eliminar al usuario "DarthVader".

DELETE 
FROM usuario 
WHERE nombre_usuario = 'DarthVader';


-- I)
-- Enunciado:
-- Es necesario identificar a los directores que no hayan dirigido ninguna película. Presente al menos
-- dos consultas equivalentes.

-- Consulta equivalente 1)
SELECT nombre_director
FROM director
EXCEPT
SELECT nombre_director
FROM pelicula;

-- Consulta equivalente 2)

SELECT nombre_director
FROM director
WHERE nombre_director NOT IN
    (SELECT nombre_director
     FROM pelicula);


--	Nota: Al igual que en un caso  anterior, asumo que solo se me pide el nombre del director, si quisiera toda la instancia bastaria con un NATURAL JOIN con <director>
-- para traer los datos pertinentes. 


-- j)
-- Enunciado:
-- De los actores, se requiere identificar al segundo de mayor edad.

-- Solucion1 (trayendo toda la instancia)
SELECT *
FROM
  (SELECT *
   FROM actor
   ORDER BY edad DESC
   LIMIT 2) AS actores_mayores
ORDER BY edad ASC
LIMIT 1;


-- Nota: Entiendo que se quiere identificar la instancia. 
-- Si en realidad se pedia el nombre, habria que cambiar el " *  " por el " nombre "" Asi:
 
-- Solucion2 (trayendo toda solamente el nombre)
SELECT nombre
FROM
  (SELECT *
   FROM actor
   ORDER BY edad DESC
   LIMIT 2) AS actores_mayores
ORDER BY edad ASC
LIMIT 1;

			
-- K)
-- Enunciado:
-- Crear una vista que muestre, de las 3 peliculas más vistas que no sean estadounidenses, cuál es
-- su origen y la cantidad de veces que fue vista por los usuarios del sistema. La vista debe llamarse
-- otras_mas_vistas, los campos resultantes deben denominarse origen_pelicula y veces_vista.
-- MAL

CREATE VIEW otras_mas_vistas AS
SELECT nacionalidad AS origen_pelicula,
       id_con_cantidad_de_veces_vistas.veces_vista
FROM
  (SELECT id_pelicula,
          nacionalidad
   FROM
     (SELECT nombre_director,
             nacionalidad
      FROM director
      WHERE nacionalidad <> 'Estadounidense') AS directores_no_yankees
   INNER JOIN pelicula p ON p.nombre_director = directores_no_yankees.nombre_director) AS peliculas_no_yankees
INNER JOIN
  (SELECT id_pelicula,
          COUNT (id_pelicula) AS veces_vista
   FROM vio_pelicula
   GROUP BY vio_pelicula.id_pelicula) AS id_con_cantidad_de_veces_vistas ON peliculas_no_yankees.id_pelicula = id_con_cantidad_de_veces_vistas.id_pelicula
ORDER BY veces_vista DESC
LIMIT 3;
