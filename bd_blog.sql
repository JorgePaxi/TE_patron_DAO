DROP DATABASE IF EXISTS bd_blog;
CREATE DATABASE bd_blog CHARACTER SET utf8 COLLATE utf8_general_ci;
use bd_blog;

create table usuarios (
id int(11) unsigned auto_increment primary key,
usuario varchar(20) null,
password varchar(255) null
);

INSERT INTO usuarios (id, usuario, password) VALUES
(1, 'admin', '12345'),
(2, 'demo1', '12345'),
(3, 'demo2', '12345');

create table posts (
id int(11) unsigned auto_increment primary key,
fecha date null,
titulo varchar(255) null,
contenido text null,
id_usuario int(11) not null	
);

INSERT INTO posts (id, fecha, titulo, contenido, id_usuario) VALUES

(1, '2021-05-04', 'Como adelgazar mejora tu sistema digestivo', 'Autoedicion y editores de pagina web usan el Lorem Ipsum como su texto por defecto, y al hacer una busqueda de \"Lorem Imsum\" va dar como resultado muchos sitios web. ', 1),
(2, '2021-05-07', 'Modelo conputacional que puso al mundo en cuarentena', 'Autoedicion y editores de pagina web usan el Lorem Ipsum como su texto por defecto, y al hacer una busqueda de \"Lorem Imsum\" va dar como resultado muchos sitios web. ', 1);


