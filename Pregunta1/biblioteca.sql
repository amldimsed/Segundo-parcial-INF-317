CREATE TABLE Libros (
    id INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor_id INT NOT NULL,
    anio_publicacion DATE NOT NULL,
    genero_id INT NOT NULL,
    editorial_id INT NOT NULL,
    estante_id INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES Autores(id),
    FOREIGN KEY (genero_id) REFERENCES Generos(id),
    FOREIGN KEY (editorial_id) REFERENCES Editoriales(id),
    FOREIGN KEY (estante_id) REFERENCES Estantes(id),
    FOREIGN KEY (categoria_id) REFERENCES Categorias(id)
);

CREATE TABLE Prestamos (
    id INT PRIMARY KEY,
    libro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE NOT NULL,
    FOREIGN KEY (libro_id) REFERENCES Libros(id),
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id)
);

CREATE TABLE Usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono INT NOT NULL
);

CREATE TABLE Autores (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE Generos (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

CREATE TABLE Editoriales (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL
);

CREATE TABLE Estantes (
    id INT PRIMARY KEY,
    numero INT NOT NULL
);

CREATE TABLE Categorias (
    id INT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL
);

-- LLENADO DE SQL

use Bliblioteca

INSERT INTO Usuarios (id,nombre,direccion, telefono) 
VALUES 
(1, 'Franklin Garcia J', 'Zon miraflores call hondura', 2522604),
(2, 'Vargas Condori P', 'Calle Rafael Monje', 336501),
(3, 'Gutierrez Lopez', 'Calle Federico Roman', 1123694),
(4, 'Rodrigo Rojas J', 'Avenida Kollasuyo', 2522604),
(5, 'Fernandez Gonzales M', 'Avenida Rene Zavaleta Mercado', 4522633),
(6, 'Garcia Cruz', 'Calle 13 de Noviembre', 5526612),
(7, 'Perez Mendoza', 'Avenida Jose Agustin', 2022581),
(8, 'Sanchez Martinez', 'Calle Juana Azuduy de Padilla', 9612358),
(9, 'Chavez Ramos', 'Calle San Pedro de Sorata', 1511699),
(10, 'Sanches Martinez T', 'Avenida Ancohuma', 8721694);


INSERT INTO Autores (id,nombre,fecha_nacimiento) 
VALUES
(1,'Alan Hollinghurst','1983-10-05'),
(2,'Liu Cixin','1985-4-15'),
(3,'Kenneth Falconer','1981-05-31'),
(4,'Emotional Pathway','1975-08-21'),
(5,'Montero Lorenzo','1979-02-26'),
(6,'Jose Maria','1985-03-10'),
(7,'Lisa Feldman Barrett','1985-05-07'),
(8,'Raul Ibanies Torres','1988-08-16'),
(9,'Scott Smith','1989-03-23'),
(10,'Sun Tzu','');

INSERT INTO Generos (id,nombre) 
VALUES
(1,'novela ligera'),
(2,'Ciencia Ficcion'),
(3,'matematica abstracta'),
(4,'psicologia'),
(5,'Estadistica'),
(6,'Disenio electronico'),
(7,'Arte de la guerra'),
(8,'Cuentos para ninios'),
(9,'Poesia'),
(10,'cultura informativa'),
(11,'Ciencia-Estudios');

INSERT INTO Categorias (id,nombre) 
VALUES
(1,'politica'),
(2,'novela'),
(3,'Ciencia'),
(4,'Historia'),
(5,'Fantasia'),
(6,'Biografia'),
(7,'Arte'),
(8,'Musica'),
(9,'Literatura'),
(10,'Sociedad-Noticias');

INSERT INTO Editoriales (id,nombre,direccion) 
VALUES
(1,'ImportBort','Calle Miklin'),
(2,'Nova','Amazon'),
(3,'Wiley','Amazon'),
(4,'Faf Publishing','Espania Calle Perretagana'),
(5,'Alfa Centauro','La casa del Baobab-Hermanos Marrero'),
(6,'Libreria Doramas','Calle Leon y Castillo 17'),
(7,'Paidos','Amazon'),
(8,'RBA','Amazon'),
(9,'Quickstudy Reference Guide','Amazon'),
(10,'Asian Studies','Amazon');


INSERT INTO Estantes (id,numero) 
VALUES
(1,74),
(2,55),
(3,12),
(4,34),
(5,10),
(6,67),
(7,15),
(8,20),
(9,24),
(10,36);

INSERT INTO Libros (id,titulo,autor_id,anio_publicacion,genero_id,editorial_id,estante_id,categoria_id) 
VALUES
(1,'The Line of Beauty',1,'2022-09-25',1,1,1,1),
(2,'El bosque oscuro',2,'2018-02-27',2,2,2,2),
(3,'Fractal Geometry: Mathematical Foundations and Applications 3rd Edicion',3,'1990-02-21',3,3,3,3),
(4,'Como analizar a las personas con psicologia',4,'2021-04-01',4,4,4,3),
(5,'Trilogia de los tres cuerpos',2,'2008-03-15',2,2,2,2),
(6,'Estadistica descriptiva',5,'2007-06-27',5,5,5,3),
(7,'Estadistica descriptiva',6,'2007-06-27',5,5,5,3),
(8,'La vida secreta del cerebro',7,'2007-06-28',10,7,7,10),
(9,'La cuarta dimension: es nuestro universo la sombra de otro',8,'2020-12-08',10,8,9,10),
(10,'c++ Programing Language: a QuickStudy Laminated REference',9,'2019-05-01',11,9,9,3),
(11,'El arte de la guerra',10,'2007-11-01',7,10,10,4);

INSERT INTO Prestamos (id,libro_id,usuario_id,fecha_prestamo,fecha_devolucion) 
VALUES
(1,1,3,'2022-09-15','2022-09-20'),
(2,3,4,'2022-12-30','2023-02-01'),
(3,1,2,'2022-11-02','2022-11-10'),
(4,7,3,'2021-05-15','2021-05-18'),
(5,5,5,'2021-01-21','2021-01-30'),
(6,2,6,'2023-06-19','2023-06-25'),
(7,4,4,'2023-01-21','2023-01-25'),
(8,6,8,'2021-02-26','2021-03-02'),
(9,2,9,'2020-10-09','2020-10-11'),
(10,3,10,'2023-11-02','2023-11-10');

--****************************************************************************************************************
select * from Autores
select * from Categorias 
select * from Editoriales
select * from Estantes
select * from Generos
select * from Libros
select * from Prestamos
select * from Usuarios 

delete from Autores
delete from Categorias
delete from Editoriales
delete from Estantes
delete from Generos
delete from Libros
delete from Usuarios
delete from Prestamos


delete from Libros
delete from Usuarios
delete from Prestamos
delete from Autores
delete from Categorias
delete from Editoriales
delete from Estantes
delete from Generos