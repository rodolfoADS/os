create database dbos;

use dbos;

create table tbUsuarios(
	idUser int primary key,
    usuario varchar(50) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(15) not null
);

insert into tbUsuarios(idUser, usuario, fone, login, senha)
values(1,'Rafael Felipe','11954437322', 'rafaelfez', '123');

insert into tbUsuarios(idUser, usuario, fone, login, senha)
values(2,'Rodolfo Henrique','12948293112', 'rodolfo', '123');

insert into tbUsuarios(idUser, usuario, fone, login, senha)
values(3,'Rogerio Alves','13974447332', 'rogerio', '123');

insert into tbUsuarios(idUser, usuario, fone, login, senha)
values(4,'Marcelo Acacio','12958745322', 'marcelo', '123');

insert into tbUsuarios(idUser, usuario, fone, login, senha)
values(5,'Administrador','11911137322', 'admin', 'admin');

update tbUsuarios set senha='123' where idUser=5;

create table tbClientes(
	idCli int primary key auto_increment,
    nomeCli varchar(50)not null,
    endCli varchar(100),
    cidadeCli varchar(50),
    foneCli varchar(50) not null,
    emailCli varchar(50)
);

insert into tbClientes(nomeCli, endCli, cidadeCli, foneCli, emailCli)
values('Bruno José', 'Rua Paraibuna', 'Paraíba', '11988751122','brunojose@gmail.com');

create table tbOs(
	os int primary key auto_increment,
    data_os timestamp default current_timestamp,
    equipamento varchar(150),
    defeito varchar(150),
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    idCli int not null,
    foreign key(idCli) references tbClientes(idCli)
);

insert into tbOs(equipamento, defeito, servico, tecnico, valor, idCli)
values('Macbook', 'Não liga', 'Trocar botão', 'Rogerio', 989.99, 1);

select O.os,equipamento,defeito,servico,valor, C.nomeCli,foneCli
from tbOs as O
inner join tbClientes as C
on (O.idCli = C.idCli);