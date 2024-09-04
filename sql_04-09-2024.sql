create database rede_social;
use rede_social;

create table usuarios(
idusuarios int primary key not null auto_increment,
nome varchar(45) not null unique,
email varchar(100),
data_conta date not null
);

create table postagens(
idpostagens int primary key not null auto_increment,
texto varchar (255) not null,
data_publicacao date not null,
imagem varchar(255),
usuarios_id int not null,
foreign key (usuarios_id) references usuarios(idusuarios)
);

create table comentarios(
idcomentarios int primary key not null auto_increment,
texto varchar(255) not null,
 data_publicacao date not null,
 usuarios_id int not null,
 postagens_id int not null, 
 foreign key (usuarios_id) references usuarios(idusuarios),
 foreign key (postagens_id) references postagens(idpostagens)
 );
 
 create table curtidas (
 idcurtidas int not null,
 usuarios_idusuarios int not null,
 postagens_idpostagens int not null,
 primary key (idcurtidas, usuarios_idusuarios, postagens_idpostagens)
 );
 
 insert into usuarios (nome, email, data_conta) values ('João', 'jão007@gmail.com', '04-09-2024');
 insert into usuarios (nome, email, data_conta) values ('Bia', 'Bibi@gmail,com', '28-03-2011');
 insert into usuarios (nome, email, data_conta) values ('Eduar_do', 'Edu@hotmail.com', '06-12-2019');
 insert into usuarios (nome, email, data_conta) values ('Nathy', 'Natily@gmail.com', '23-04-2022');
 insert into usuarios (nome, email, data_conta) values ('Madalyn', 'Mady@')