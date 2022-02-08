-- todos los novillos
SELECT * FROM ganado WHERE id_tipo = 2 OR id_tipo = 5;
-- todos los hierros
SELECT * FROM hierro;
-- ganado marcado con un hierro en particular (napoles01)
SELECT *
FROM ganado AS g
   INNER JOIN
   fincas AS f
   ON g.id_fincas = f.id
   INNER JOIN
   hierro AS h
   ON f.id_hierro = 2
--tambien puedes ver un resumen de campos para  hierro particular 
SELECT g.foto,g.sexo,g.peso,g.raza,g.valor,f.nombre as finca
FROM ganado AS g
   INNER JOIN
   fincas AS f
   ON g.id_fincas = f.id
   INNER JOIN
   hierro AS h
   ON f.id_hierro = 2
-- Novillos  de levante  que  se  encuentran  en  una  finca  en  particular(La cristalina)
SELECT *
FROM ganado AS g
   INNER JOIN
   tipoganado AS tg
   ON g.id_tipoganado = tg.id
   INNER JOIN
   clasificacion AS c
   ON c.id = 1
   INNER JOIN
   fincas AS f
   ON f.id = 1
-- administradores del sistema
SELECT * FROM usuarios WHERE id_roles = 1;
--administradores de finca
SELECT * FROM usuarios WHERE id_roles = 2;
--trabajador
SELECT * FROM usuarios WHERE id_roles = 4;
--administrador una finca en particular (nogal)
SELECT u.id,u.id_roles,u.nombre,u.nombre,u.cedula,r.nombre as rol,f.nombre as finca
FROM fincas AS f
   INNER JOIN
   usuarios AS u
   ON f.id_usuarios = u.id
   INNER JOIN
   roles AS r
   ON r.id = 2
   WHERE f.id = 3
--reporte ventas
SELECT * FROM ventas;
-- perdidas o muertes hace 5 días
SELECT * FROM ganado WHERE fechamuerte <= NOW() AND fechamuerte >= date_add(NOW(), INTERVAL -5 DAY)