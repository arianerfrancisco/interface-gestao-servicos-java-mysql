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
insert into tbusuarios (iduser,usuario,fone,login,senha, perfil) values (3,'Ana','9999-9999','manoeljose','123456','user');
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

describe tbos;
select * from  tbos;
create table tbos (
os int primary key auto_increment,
dataos timestamp default current_timestamp, -- garante que as os emitam data e hora
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli) -- aqui garante que todas as os tenham cli vinculados
);
insert into tbos (equipamento,defeito,servico,tecnico,valor,idcli) values
('PC','não liga', 'troca fonte','Almir', 45.56,1);

-- o codigo abaixo traz informacoes de duas tabelas
select -- garante o requisito relatorio de serviços
O.os, equipamento,defeito,servico,valor,
C.nomecli,fone
from tbos as O
inner join tbclientes as C
on (o.idcli = C.idcli);

select * from tbusuarios;
select * from tbusuarios where login='admin' and senha='admin';

describe tbusuarios;
--  alinha abaixo adiciona um campo na tabela
alter table tbusuarios add column perfil varchar(20) not null;
-- a linha abaixo remove um campo da tabela
alter table tbusuarios drop column perfil;

update tbusuarios set perfil='admin' where iduser=1;
update tbusuarios set perfil='admin' where iduser=2;

select * from tbclientes;
select idcli, nomecli, fone from tbclientes where nomecli like 'sa%';
--  a linha abaixo cria um apelido aos campos
select idcli as Id, nomecli as Nome, fone as Fone from tbclientes where nomecli like 'sa%';

describe tbos;
select * from tbos;
alter table tbos add tipo varchar(15) not null after dataos;
alter table tbos add situacao varchar(20) not null after tipo;