USE db_ganado;
-- clasificacion del tipo ganado
INSERT INTO clasificacion (nombre, descripcion) VALUES ("novillo de levannte","parto natural");
INSERT INTO clasificacion (nombre, descripcion) VALUES ("novillo","parto natural");
INSERT INTO clasificacion (nombre, descripcion) VALUES ("ternero","parto natural");
-- tipos de ganado
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("vaca",1,"todas las vacunas");
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("vaca",2,"todas las vacunas");
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("vaca",3,"todas las vacunas");
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("toro",1,"todas las vacunas");
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("toro",2,"todas las vacunas");
INSERT INTO tipoganado (nombre, id_clasificacion,descripcion) VALUES ("toro",3,"todas las vacunas");
-- finalidad
INSERT INTO finalidad (nombre, descripcion) VALUES ("carne","agregar descripcion");
INSERT INTO finalidad (nombre, descripcion) VALUES ("leche","agregar descripcion");
INSERT INTO finalidad (nombre, descripcion) VALUES ("doble","agregar descripcion");
-- hierro
INSERT INTO hierro (nombre, descripcion) VALUES ("cristal01","agregar descripcion");
INSERT INTO hierro (nombre, descripcion) VALUES ("napoles01","agregar descripcion");
INSERT INTO hierro (nombre, descripcion) VALUES ("nogaleses01","agregar descripcion");
-- roles
INSERT INTO roles (nombre, descripcion) VALUES ("administrador de sistema","agregar descripcion");
INSERT INTO roles (nombre, descripcion) VALUES ("administrador de finca","agregar descripcion");
INSERT INTO roles (nombre, descripcion) VALUES ("visitante","agregar descripcion");
INSERT INTO roles (nombre, descripcion) VALUES ("trabajador","agregar descripcion");
-- usuarios administrador de sistema
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("juan","perez",1152684401,"adminuno2020","juan@correo.com",1);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("diego","molina",1252682202,"admindos2020","diego@correo.com",1);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("martin","vargas",1152786491,"admintres2020","martin@correo.com",1);
-- usuarios administrador de finca
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("pedro","quintero",1142684401,"fincauno2020","pedro@correo.com",2);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("alejandro","betancur",13456782,"fincados2020","alejandro@correo.com",2);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("gabriel","echeverri",100203459,"fincatres2020","gabriel@correo.com",2);
-- usuarios visitante
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("manuela","perea",1039684601,"guest2020","manuela@correo.com",3);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("jose","diaz",149286082,"guest2020","jose@correo.com",3);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("yuliet","marquez",1049587459,"guest2020","yuliet@correo.com",3);
-- usuarios trabajador
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("marta","ramirez",1039684601,"marta123","marta@correo.com",4);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("julian","aguilar",149286082,"julian","julian@correo.com",4);
INSERT INTO usuarios (nombre, apellido, cedula, password, email, id_roles) VALUES ("antonio","silva",1049587459,"antonio","antonio@correo.com",4);	
-- fincas con administradores 
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (4,"La cristalina", 1,"antioquia");
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (5,"Napoles", 2,"antioquia");
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (6,"Nogal", 3,"cundinamarca");
-- fincas con trabajadores 
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (10,"La cristalina", 1,"antioquia");
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (11,"Napoles", 2,"antioquia");
INSERT INTO fincas (id_usuarios, nombre, id_hierro, ubicacion) VALUES (12,"Nogal", 3,"cundinamarca");
-- ganado La cristalina 
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (1,1,1,"https://n9.cl/8i49d","macho",1000,"angus",8000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (2,1,2,"https://n9.cl/8i49d","hembra",720,"nelore",5000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (3,1,3,"https://n9.cl/8i49d","macho",1100,"Gyr",7000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (4,1,1,"https://n9.cl/8i49d","macho",820,"romagnola",2500000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (5,1,2,"https://n9.cl/8i49d","hembra",720,"marchigiana",1300000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (6,1,3,"https://n9.cl/8i49d","macho",1300,"angus",2600000);
-- ganado Napoles 
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (6,2,3,"https://n9.cl/8i49d","macho",1300,"angus",7000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (5,2,2,"https://n9.cl/8i49d","hembra",720,"marchigiana",4000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (4,2,1,"https://n9.cl/8i49d","macho",820,"romagnola",2000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (3,2,3,"https://n9.cl/8i49d","macho",1100,"Gyr",1000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (2,2,2,"https://n9.cl/8i49d","hembra",720,"nelore",9000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (1,2,1,"https://n9.cl/8i49d","macho",1000,"angus",6000000);
-- ganado Nogal 
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (6,3,3,"https://n9.cl/8i49d","macho",1300,"angus",2000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (1,3,2,"https://n9.cl/8i49d","hembra",720,"marchigiana",12000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (5,3,1,"https://n9.cl/8i49d","macho",820,"romagnola",2000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (2,3,3,"https://n9.cl/8i49d","macho",1100,"Gyr",9000000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (4,3,2,"https://n9.cl/8i49d","hembra",720,"nelore",1300000);
INSERT INTO ganado (id_tipoganado,id_fincas,id_finalidad,foto,sexo,peso,raza,valor) VALUES (3,3,1,"https://n9.cl/8i49d","macho",1000,"angus",950000);
-- ventas 
INSERT INTO ventas (id_ganado,cantidad) VALUES (1,4);
INSERT INTO ventas (id_ganado,cantidad) VALUES (2,3);
INSERT INTO ventas (id_ganado,cantidad) VALUES (3,2);
INSERT INTO ventas (id_ganado,cantidad) VALUES (4,5);
INSERT INTO ventas (id_ganado,cantidad) VALUES (5,6);
INSERT INTO ventas (id_ganado,cantidad) VALUES (6,1);
INSERT INTO ventas (id_ganado,cantidad) VALUES (7,8);
INSERT INTO ventas (id_ganado,cantidad) VALUES (8,2);
INSERT INTO ventas (id_ganado,cantidad) VALUES (9,4);
INSERT INTO ventas (id_ganado,cantidad) VALUES (10,2);
INSERT INTO ventas (id_ganado,cantidad) VALUES (11,3);
INSERT INTO ventas (id_ganado,cantidad) VALUES (12,7);
INSERT INTO ventas (id_ganado,cantidad) VALUES (13,1);
INSERT INTO ventas (id_ganado,cantidad) VALUES (14,3);
INSERT INTO ventas (id_ganado,cantidad) VALUES (15,2);
INSERT INTO ventas (id_ganado,cantidad) VALUES (16,5);
INSERT INTO ventas (id_ganado,cantidad) VALUES (17,4);

