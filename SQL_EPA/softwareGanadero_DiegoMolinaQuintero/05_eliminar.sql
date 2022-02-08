
-- eliminar un animal
DELETE FROM ganado where id =18;
-- eliminar un usuario antonio
delete usuarios,fincas
    from usuarios
    join fincas
    on usuarios.id=fincas.id_usuarios
    where usuarios.nombre='antonio';
-- eliminar un hierro nogaleses01
delete hierro,fincas
    from hierro
    join fincas
    on hierro.id=fincas.id_hierro
    where hierro.id=2;
