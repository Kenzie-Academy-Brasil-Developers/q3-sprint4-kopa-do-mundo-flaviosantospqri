CREATE DATABASE kopa_db;

create table kopas (
id BIGSERIAL NOT null,
selecao varchar(128) not null,
qnt_copas integer
);

insert into kopas(selecao, qnt_copas) values
('Brasil',5),
('Alemanha',5),
('Itália',4),
('Argentina',2),
('França',2),
('Uruguai',2),
('Inglaterra',1),
('Espanha',1),
('Japão',1);

update kopas set qnt_copas = 4 where selecao = 'Alemanha';

delete from kopas where selecao = 'Japão' returning *;

select * from kopas;

alter table kopas add column pts integer;

update kopas set pts = 237 where selecao = 'Brasil';
update kopas set pts = 221 where selecao = 'Alemanha';
update kopas set pts = 156 where selecao = 'Itália';
update kopas set pts = 144 where selecao = 'Argentina';
update kopas set pts = 115 where selecao = 'França';
update kopas set pts = 84 where selecao = 'Uruguai';
update kopas set pts = 108 where selecao = 'Inglaterra';
update kopas set pts = 105 where selecao = 'Espanha';

select * from kopas;
