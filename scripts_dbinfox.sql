create database dbinfox;
use dbinfox;
create table tbusuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null
);
describe tbusuarios;
select * from tbusuarios;

-- operacoes CRUD----

-- CREATE --> insert
insert into tbusuarios (iduser,usuario,fone,login,senha) values (1,'Jose de Assis','9999-9999','joseassis','123456');
-- READ --> select
insert into tbusuarios (iduser,usuario,fone,login,senha) values (2,'Administrador','9999-9999','admin','admin');
insert into tbusuarios (iduser,usuario,fone,login,senha) values (3,'Manoel José','9999-9999','manoeljose','123456');
-- UPADTE --> update
update tbusuarios set fone='8888-8888' where iduser=2;
-- DELETE --> delete
delete from tbusuarios where iduser=3;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
enderecocliente varchar(100),
fone varchar(50) not null,
email varchar(50)
);

describe tbclientes;
select * from tbclientes;

insert into tbclientes(nomecli,enderecocliente,fone,email) 
values ('Ana','Rua','9999-9899','ana@email');