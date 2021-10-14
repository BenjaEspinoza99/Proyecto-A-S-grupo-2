 create database biblioteca;
 use biblioteca;
 
 
 create table if not exists Usuarios(
 id_usuario varchar(45) not null,
 nombre varchar(45) not null,
 edad int not null,
 id_tipousuario int unsigned not null,
 primary key(id_usuario));
 
 create table if not exists Multas(
 id_multa int unsigned not null,
 estado_multa varchar(45) not null,
 valor_multa int not null,
  id_usuario varchar(45) not null,
 primary key(id_multa));
 
 create table if not exists Devoluciones(
 id_devolucion int unsigned not null,
 fecha_devolucion date not null,
 descripcion varchar(45),
primary key(id_devolucion));

create table if not exists autores(
 id_autor int unsigned  not null,
 nombre varchar(45) not null,
primary key(id_autor));
 
 create table if not exists categorias(
 id_categoria int unsigned  not null,
 nombre_categoria varchar(45) not null,
 primary key(id_categoria));

create table if not exists libros(
 id_libro int unsigned not null,
 nombre_libro varchar(45) not null,
 numero_ejemplares int not null,
 estado varchar(20) not null,
 id_categoria int unsigned  not null,
 id_autor int unsigned  not null,
 primary key(id_libro));


create table if not exists prestamos(
id_prestamo int unsigned not null,
fecha_inicio date not null,
fecha_final date not null,
id_libro int unsigned not null,
id_devolucion int unsigned not null,
id_usuario varchar(45) not null,
primary key(id_prestamo));

create table if not exists tipousuarios(
 id_tipousuario int unsigned  not null,
 nombretipo varchar(45) not null,
primary key(id_tipousuario));

alter table multas
add foreign key (id_usuario) references Usuarios(id_usuario);
alter table libros
add foreign key(id_categoria) references categorias(id_categoria),
add foreign key(id_autor) references autores(id_autor);
alter table prestamos
add foreign key(id_usuario) references usuarios(id_usuario),
add foreign key(id_devolucion) references devoluciones(id_devolucion),
add foreign key(id_libro) references libros(id_libro);
alter table usuarios
add foreign key(id_tipousuario) references tipousuarios(id_tipousuario);


INSERT into autores(id_autor,nombre) VALUES
("1","miguel cervantes"),
("2","andres de leon"),
("3","maquiavelo"),
("4","marcela paz"),
("5","antony henry"),
("6","perez galdo");

INSERT into categorias(id_categoria,nombre_categoria) VALUES
("20","caballaresco"),
("21","accion"),
("22","romance"),
("23","ciencia ficcion"),
("24","suspenso"),
("25","politico"),
("26","comedia"),
("27","aventura");



Insert into libros(id_libro,nombre_libro,numero_ejemplares,id_categoria,id_autor,estado) VALUES
("1000","papelucho","10","27","4","prestado"),
("1001","tiempo,papely lapiz","10","21","4","prestado"),
("1002","soy colorina","10","22","4","prestado"),
("1003","la vuelta de sebastian","10","20","4","prestado"),
("1004","papelucho casi huerfano","10","27","4","prestado"),
("1005","caramelos de luz","10","26","4","prestado"),
("1006","papelucho historiador","10","27","4","prestado"),
("1007","papelucho detective","10","27","4","prestado"),
("1008","a pesar de mi tia","10","21","4","prestado"),
("1009","papelucho en la clinica","10","27","4","prestado"),
("1010","papelucho perdido","10","27","4","prestado"),
("1011","papelucho, mi hermana ji","10","27","4","prestado"),
("1012","papelucho misionero","10","25","4","prestado"),
("1013","papelucho y el marciano","10","23","4","prestado"),
("1014","papelucho, mi hermano hippie","10","26","4","prestado"),
("1015","papelucho en vacaciones","10","27","4","prestado"),
("1016","cuentos para cantar","10","20","4","prestado"),
("1017","el cerco de numancia","12","25","1","prestado"),
("1018","el trato de argel","5","25","1","prestado"),
("1019","la cueva del salamanca","9","27","1","prestado"),
("1020","el retablo de las maravillas","15","21","1","prestado"),
("1021","el viejo celoso","5","24","1","prestado"),
("1022","el rufian dichoso","7","22","1","prestado"),
("1023","Don quijote de la mancha","20","20","1","prestado"),
("1024","marianela","10","25","6","prestado"),
("1025","fortinata y jacinta","10","21","6","prestado"),
("1026","doña perfecta","17","26","6","prestado"),
("1027","miau","10","23","6","prestado"),
("1028","misericordia","18","23","6","prestado"),
("1029","trafalgar","17","25","2","prestado"),
("1030","tristana","14","24","2","prestado"),
("1031","palma","20","27","2","prestado"),
("1032","los dinosaurios","10","23","3","prestado"),
("1033","cana","5","23","4","prestado"),
("1034","daniela pirata","8","25","3","prestado"),
("1035","charlie y la fabrica de chocolate","10","23","3","prestado"),
("1036","matilda","10","22","5","prestado"),
("1037","el grufalo","10","20","5","prestado"),
("1038","las cronicas de narnia","10","26","5","prestado"),
("1039","peluche","10","26","5","prestado"),
("1040","alicia en el pais de las maravillas","10","27","5","prestado"),
("1041","pequeño oruga glotona","10","27","5","prestado");

insert into usuarios(id_usuario,nombre,edad,id_tipousuario) values
("2001","Ana Correa","16","1"),                      
("2002","Victoria Guerra","18","1"),		    
("2003","Andrea Lemus","19","1"),		    
("2004","Fernando Casimiro","24","2"),
("2005","Alberto Contreras","19","1"),
("2006","Anibal Pereira","29","3"),
("2007","Mia Rodriguez","17","1"),
("2008","Benjamin Trigo","23","1"),
("2009","Sebastian Marin","22","1"),
("2010","Diego Castaneda","21","1"),
("2011","Felipe Rojas","24","1"),
("2012","Erica Altamirano","18","1"),
("2013","Felipe Trigo","20","1"),
("2014","Catalina Moreira","19","1"),
("2015","Carolina Rojas","27","3"),
("2016","Rodrigo Sanchez","26","3"),
("2017","Ramon Freire","21","1"),
("2018","Carlos Ramirez","42","3"),
("2019","Martina Bravo","17","1"),
("2020","Paula Lemus","19","1"),
("2021","Francisco Orellana","22","1"),
("2022","Erik Monsalve","21","1"),
("2023","Natalia Rojas","17","1"),
("2024","Ximena Nofal","32","3"),
("2025","Paola Arancibia","24","1"),
("2026","Aroon Herrera","16","1"),
("2027","Amanda Santas","45","3"),
("2028","Simon Zamora","20","1"),
("2029","Gerardo Trigo","17","1"),
("2030","Hector Casanova","32","3"),
("2031","Manuel Espinoza","17","1"),
("2032","Robinson Pereira","50","3"),
("2033","Octavio Muñoz","30","3"),
("2034","Ignacia Rodriguez","40","2"),
("2035","Millaray Perez","23","1"),
("2036","Jaime Ortega","20","2"),
("2037","Joaquin Valdes","19","1"),
("2038","Blanca Silva","41","2");

insert into tipousarios(id_tipousuario,nombretipo) VALUES
("1","estudiante"),
("2","asistente"),
("3","profesor");

insert into prestamos(id_prestamo,fecha_inicio,fecha_final,id_libro,id_devolucion,id_usuario) values
("301","2021-10-05","2021-10-07","1000","501","2001"),
("302","2021-10-01","2021-10-03","1001","502","2002"),
("303","2021-10-05","2021-10-07","1002","503","2003"),
("304","2021-10-01","2021-10-03","1003","504","2004"),
("305","2021-10-04","2021-10-06","1004","505","2005"),
("306","2021-10-03","2021-10-05","1005","506","2006"),
("307","2021-10-05","2021-10-07","1006","507","2007"),
("308","2021-10-05","2021-10-07","1007","508","2008"),
("309","2021-10-04","2021-10-05","1008","509","2009"),
("310","2021-10-05","2021-10-07","1009","510","2010"),
("311","2021-10-01","2021-10-03","1010","511","2011"),
("312","2021-10-02","2021-10-04","1011","512","2012"),
("313","2021-10-05","2021-10-07","1012","513","2013"),
("314","2021-10-06","2021-10-08","1013","514","2014"),
("315","2021-10-06","2021-10-08","1014","515","2015"),
("316","2021-10-07","2021-10-09","1015","516","2016"),
("317","2021-10-02","2021-10-04","1016","517","2017"),
("318","2021-10-07","2021-10-09","1017","518","2018"),
("319","2021-10-08","2021-10-10","1018","519","2019"),
("320","2021-10-08","2021-10-10","1019","520","2020"),
("321","2021-10-09","2021-10-11","1020","521","2021"),
("322","2021-10-09","2021-10-11","1021","522","2022"),
("323","2021-10-09","2021-10-11","1022","523","2023"),
("324","2021-10-10","2021-10-12","1023","524","2024"),
("325","2021-10-10","2021-10-12","1024","525","2025"),
("326","2021-10-11","2021-10-13","1025","526","2026"),
("327","2021-10-11","2021-10-13","1026","527","2027"),
("328","2021-10-12","2021-10-14","1027","528","2028"),
("329","2021-10-13","2021-10-15","1028","529","2029"),
("330","2021-10-14","2021-10-16","1029","530","2030"),
("331","2021-10-14","2021-10-16","1030","531","2031"),
("332","2021-10-15","2021-10-17","1031","532","2032"),
("333","2021-10-16","2021-10-18","1032","533","2033"),
("334","2021-10-16","2021-10-18","1033","534","2034"),
("335","2021-10-16","2021-10-18","1034","535","2035"),
("336","2021-10-17","2021-10-19","1035","536","2036"),
("337","2021-10-18","2021-10-20","1036","537","2037"),
("338","2021-10-19","2021-10-21","1037","538","2038");


INSERT into multas(id_multa,valor_multa,estado_multa,id_usuario) VALUES
("401","0","sin multa","2001"),
("402","1000","con multa","2002"),
("403","2000","con multa","2003"),
("404","0","sin multa","2004"),
("405","0","sin multa","2005"),
("406","1500","con multa","2006"),
("407","2000","con multa","2007"),
("408","0","sin multa","2008"),
("409","1000","con multa","2009"),
("410","0","sin multa","2010"),
("411","2500","con multa","2011"),
("412","3000","con multa","2012"),
("413","0","sin multa","2013"),
("414","1500","con multa","2014"),
("415","2000","con multa","2015"),
("416","0","sin multa","2016"),
("417","0","sin multa","2017"),
("418","1500","con multa","2018"),
("419","0","sin multa","2019"),
("420","2000","con multa","2020"),
("421","0","sin multa","2021"),
("422","2500","con multa","2022"),
("423","3000","con multa","2023"),
("424","0","sin multa","2024"),
("425","0","sin multa","2025"),
("426","0","sin multa","2026"),
("427","1500","con multa","2027"),
("428","2500","con multa","2028"),
("429","0","sin multa","2029"),
("430","1500","con multa","2030"),
("431","0","sin multa","2031"),
("432","2000","con multa","2032"),
("433","0","sin multa","2033"),
("434","1500","con multa","2034"),
("435","2000","con multa","2035"),
("436","0","sin multa","2036"),
("437","2500","con multa","2037"),
("438","0","sin multa","2038");

INSERT into devoluciones(id_devolucion,fecha_devolucion,descripcion) VALUES 
("501","2021-10-07","devolucion s/n"),
("502","2021-10-05","demora de 1 dia"),
("503","2021-10-11","libro manchado"),
("504","2021-10-03","devolucion s/n"),
("505","2021-10-05","devolucion s/n"),
("506","2021-10-09","atraso"),
("507","2021-10-11","atraso"),
("508","2021-10-08","devolucion s/n"),
("509","2021-10-10","atraso"),
("510","2021-10-10","devolucion s/n"),
("511","2021-10-05","atraso"),
("512","2021-10-10","atraso"),
("513","2021-10-07","devolucion s/n"),
("514","2021-10-11","atraso"),
("515","2021-10-11","atraso"),
("516","2021-10-09","devolucion s/n"),
("517","2021-10-04","devolucion s/n"),
("518","2021-10-12","atraso"),
("519","2021-10-10","devolucion s/n"),
("520","2021-10-12","atrasado"),
("521","2021-10-11","devolucion s/n"),
("522","2021-10-13","atrasado"),
("523","2021-10-14","atrasado"),
("524","2021-10-12","atrasado"),
("525","2021-10-12","devolucion s/n"),
("526","2021-10-13","devolucion s/n"),
("527","2021-10-15","atraso"),
("528","2021-10-16","atraso"),
("529","2021-10-15","devolucion s/n"),
("530","2021-10-18","atrasado"),
("531","2021-10-16","devolucion s/n"),
("532","2021-10-19","atrasado"),
("533","2021-10-18","devolucion s/n"),
("534","2021-10-19","atrasado"),
("535","2021-10-20","atrasado"),
("536","2021-10-19","devolucion s/n"),
("537","2021-10-21","devolucion s/n"),
("538","2021-10-21","devolucion s/n");

#insertar un nuevo  usuario en la base de datos
insert into usuarios(id_usuario,nombre,edad,id_tipousuario) values
("2039","Aurora Vergara","17","1");

#insertar un nuevo libro
Insert into libros(id_libro,nombre_libro,numero_ejemplares,estado,id_categoria,id_autor) VALUES
("1042","moby dick","13","disponible","21","2");

#consultar libro por persona
SELECT nombretipo,nombre, nombre_libro 
FROM prestamos INNER JOIN usuarios 
ON prestamos.id_usuario=usuarios.id_usuario INNER JOIN libros 
ON libros.id_libro=prestamos.id_libro INNER JOIN tipousuarios ON tipousuarios.id_tipousuario=usuarios.id_tipousuario;

#devoluciones de libros mostrando tipo de usuario*****
SELECT nombre,nombretipo AS cargo ,fecha_devolucion as devolucion,descripcion 
FROM prestamos INNER JOIN devoluciones ON prestamos.id_devolucion=devoluciones.id_devolucion 
INNER JOIN usuarios ON usuarios.id_usuario=prestamos.id_usuario 
INNER JOIN tipousarios ON tipousuarios.id_tipousuario=usuarios.id_tipousuario;

#stock de libros
SELECT nombre_libro, numero_ejemplares AS stock, fecha_inicio AS inicio, fecha_final AS termino 
FROM libros INNER JOIN prestamos ON libros.id_libro=prestamos.id_libro;

#renovar libro estudiantes, profesor o asistente
UPDATE prestamos set fecha_final="2021-10-10" WHERE id_usuario="2001";

#consultar material biografico por categoria
SELECT nombre_libro as libro, nombre_categoria AS categoria, nombre as autor, numero_ejemplares AS stock , descripcion ,estado
from libros INNER JOIN categorias ON libros.id_categoria=categorias.id_categoria 
INNER JOIN autores ON autores.id_autor=libros.id_autor;

UPDATE libros set estado= "disponible" where nombre_libro="papelucho";

select COUNT(estado) as cantidad, estado 
FROM libros INNER join prestamos on libros.id_libro=prestamos.id_libro INNER join usuarios on usuarios.id_usuarios=prestamos.id_usuario GROUP by libros.estado;
UPDATE usuarios SET nombre="mario bross" and edad="14" where usuarios.nombre="andrea lemus";