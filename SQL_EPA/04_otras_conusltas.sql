
-- ganado de  sexo  masculinoy  cierta  raza
SELECT * FROM ganado WHERE sexo = "macho" AND raza = "angus"
-- consulta  las  fincas  que  administren  dos  trabajadores(gabriel  o  alejandro)
SELECT * FROM fincas WHERE id_usuarios = 5 AND id_usuarios = 6;

--consulta  las  fincas  que  administren  dos  trabajadores(Juan  o  Pedro),nombre  de la  finca  y  el  nombre  del  hierro  detodos  los  animalesde  cierto  tipoordenado alfabéticamentepor  el  nombre  dela  finca
SELECT f.nombre as nombre_finca, h.nombre as nombre_hierro, u.nombre as nombre_usuario,g.raza as raza_ganao, g.peso as peso_ganado
FROM fincas AS f
   INNER JOIN
   hierro AS h
   ON f.id_hierro = h.id
   INNER JOIN
   usuarios AS u
   ON f.id_usuarios = u.id
   INNER JOIN
   ganado AS g
   ON g.id_fincas = f.id
   WHERE id_usuarios = 5 OR id_usuarios = 6 ORDER BY f.nombre ASC;
-- Consulta  las  fincas  que  administren  dos  trabajadores(Juan  o  Pedro),nombre  de la  finca  y  el  nombre  del  hierro  detodos  los  animalesde  cierto  tipoordenado alfabéticamentepor  el  nombre  dela  finca, listar  administradores  de  finca  los cuales su nombre contenga la silaba “ga”.
SELECT f.nombre as nombre_finca, h.nombre as nombre_hierro, u.nombre as nombre_usuario,g.raza as raza_ganao, g.peso as peso_ganado
FROM fincas AS f
   INNER JOIN
   hierro AS h
   ON f.id_hierro = h.id
   INNER JOIN
   usuarios AS u
   ON f.id_usuarios = u.id
   INNER JOIN
   ganado AS g
   ON g.id_fincas = f.id
   WHERE id_usuarios = 5 OR id_usuarios = 6  AND u.nombre LIKE '%ga%' ORDER BY f.nombre ASC ;