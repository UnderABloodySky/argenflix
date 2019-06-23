
-- TABLAS NOMBRE Y CANTIDAD
SELECT 'TABLAS NOMBRE Y CANTIDAD' AS test_name, COUNT(*) = 7 AS passed
FROM information_schema.tables
WHERE table_catalog = current_catalog
AND  table_schema = 'public'
AND table_name IN ('actor', 'director', 'vio_serie', 'pelicula', 'vio_pelicula', 'usuario', 'serie')
UNION
--columnas por tabla
SELECT 'Columnas y tipos de datos', count(*) = 29
-- SELECT table_name, column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_catalog = current_catalog
AND  table_schema = 'public'
AND table_name IN ('actor', 'director', 'vio_serie', 'pelicula', 'vio_pelicula', 'usuario', 'serie')
AND
(table_name = 'actor' AND column_name = 'nombre' AND data_type = 'character varying')
OR (table_name = 'actor' AND column_name = 'edad' AND data_type = 'integer')
OR (table_name = 'actor' AND column_name = 'anhos_activo' AND data_type = 'integer')
OR (table_name = 'director' AND (column_name = 'nombre_director' OR column_name = 'nombre') AND data_type = 'character varying')
OR (table_name = 'director' AND column_name = 'edad' AND data_type = 'integer')
OR (table_name = 'director' AND column_name = 'nacionalidad' AND data_type = 'character varying')
OR (table_name = 'director' AND column_name = 'actor_fetiche' AND data_type = 'character varying')
OR (table_name = 'vio_serie' AND column_name = 'nombre_usuario' AND data_type = 'character varying')
OR (table_name = 'vio_serie' AND column_name = 'nombre_serie' AND data_type = 'character varying')
OR (table_name = 'vio_serie' AND column_name = 'anho_serie' AND data_type = 'integer')
OR (table_name = 'pelicula' AND column_name = 'id_pelicula' AND data_type = 'integer')
OR (table_name = 'pelicula' AND column_name = 'nombre_pelicula' AND data_type = 'character varying')
OR (table_name = 'pelicula' AND column_name = 'genero' AND data_type = 'character varying')
OR (table_name = 'pelicula' AND column_name = 'duracion' AND data_type = 'integer')
OR (table_name = 'pelicula' AND column_name = 'calificacion' AND data_type = 'integer')
OR (table_name = 'pelicula' AND column_name = 'nombre_actor' AND data_type = 'character varying')
OR (table_name = 'pelicula' AND column_name = 'nombre_director' AND data_type = 'character varying')
OR (table_name = 'vio_pelicula' AND column_name = 'nombre_usuario' AND data_type = 'character varying')
OR (table_name = 'vio_pelicula' AND column_name = 'id_pelicula' AND data_type = 'integer')
OR (table_name = 'usuario' AND column_name = 'nombre_usuario' AND data_type = 'character varying')
OR (table_name = 'usuario' AND column_name = 'nombre_y_apellido' AND data_type = 'character varying')
OR (table_name = 'usuario' AND column_name = 'contrasenha' AND data_type = 'character varying')
OR (table_name = 'serie' AND column_name = 'nombre_serie' AND data_type = 'character varying')
OR (table_name = 'serie' AND column_name = 'anho_serie' AND data_type = 'integer')
OR (table_name = 'serie' AND column_name = 'genero' AND data_type = 'character varying')
OR (table_name = 'serie' AND column_name = 'temporadas' AND data_type = 'integer')
OR (table_name = 'serie' AND column_name = 'calificacion' AND data_type = 'integer')
OR (table_name = 'serie' AND column_name = 'nombre_actor' AND data_type = 'character varying')
OR (table_name = 'serie' AND column_name = 'nombre_director' AND data_type = 'character varying')
UNION
-- PKs
SELECT 'PKs', count(*) = 11
FROM information_schema.table_constraints tc
JOIN information_schema.key_column_usage kc  ON kc.table_name = tc.table_name AND kc.table_schema = tc.table_schema AND kc.constraint_name = tc.constraint_name
WHERE tc.constraint_type = 'PRIMARY KEY'
AND ( (tc.table_name = 'usuario' AND kc.column_name = 'nombre_usuario')
OR (tc.table_name = 'actor' AND kc.column_name = 'nombre')
OR (tc.table_name = 'director' AND (kc.column_name = 'nombre' OR kc.column_name = 'nombre_director'))
OR (tc.table_name = 'pelicula' AND kc.column_name = 'id_pelicula')
OR (tc.table_name = 'vio_serie' AND kc.column_name = 'nombre_usuario')
OR (tc.table_name = 'vio_serie' AND kc.column_name = 'nombre_serie')
OR (tc.table_name = 'vio_serie' AND kc.column_name = 'anho_serie')
OR (tc.table_name = 'vio_pelicula' AND kc.column_name = 'nombre_usuario')
OR (tc.table_name = 'vio_pelicula' AND kc.column_name = 'id_pelicula')
OR (tc.table_name = 'serie' AND kc.column_name = 'nombre_serie')
OR (tc.table_name = 'serie' AND kc.column_name = 'anho_serie')
)
UNION
SELECT 'FKs Nombre y cantidad', count(*)=8
FROM (SELECT -- conname,
	conrelid::regclass AS "fk_table"
      ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), 14, position(')' in pg_get_constraintdef(c.oid))-14) END AS "fk_column"
      ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), position(' REFERENCES ' in pg_get_constraintdef(c.oid))+12, position('(' in substring(pg_get_constraintdef(c.oid), 14))-position(' REFERENCES ' in pg_get_constraintdef(c.oid))+1) END AS "pk_table"
      ,CASE WHEN pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %' THEN substring(pg_get_constraintdef(c.oid), position('(' in substring(pg_get_constraintdef(c.oid), 14))+14, position(')' in substring(pg_get_constraintdef(c.oid), position('(' in substring(pg_get_constraintdef(c.oid), 14))+14))-1) END AS "pk_column"
FROM   pg_constraint c
JOIN   pg_namespace n ON n.oid = c.connamespace
WHERE  contype IN ('f', 'p ')
AND pg_get_constraintdef(c.oid) LIKE 'FOREIGN KEY %'
-- ORDER  BY pg_get_constraintdef(c.oid), conrelid::regclass::text, contype DESC;
) fks
WHERE fk_table::varchar = 'director' AND fk_column = 'actor_fetiche' AND pk_table = 'actor' AND pk_column = 'nombre'
OR fk_table::varchar = 'serie' AND fk_column = 'nombre_director'  AND pk_table = 'director' AND (pk_column = 'nombre' OR pk_column = 'nombre_director')
OR fk_table::varchar = 'serie' AND fk_column = 'nombre_actor' AND pk_table = 'actor' AND pk_column = 'nombre'
OR fk_table::varchar = 'vio_pelicula' AND fk_column = 'id_pelicula' AND pk_table = 'pelicula' AND pk_column = 'id_pelicula'
OR fk_table::varchar = 'vio_pelicula' AND fk_column = 'nombre_usuario' AND pk_table = 'usuario' AND pk_column = 'nombre_usuario'
OR fk_table::varchar = 'vio_serie' AND fk_column = 'nombre_usuario' AND pk_table = 'usuario' AND pk_column = 'nombre_usuario'
OR fk_table::varchar = 'pelicula' AND fk_column = 'nombre_director' AND pk_table = 'director' AND (pk_column = 'nombre' OR pk_column = 'nombre_director')
OR fk_table::varchar = 'pelicula' AND fk_column = 'nombre_actor' AND pk_table = 'actor' AND pk_column = 'nombre'
