-- Tabelas

create table usuaria (
	id serial primary key,
	nome varchar(100),
	email varchar (150),
	senha varchar (255),
	data_cadastro date
);

create table questoes (
	id serial primary key,
	pergunta varchar(255), 
	alternativa_a varchar(255),
	alternativa_b varchar(255),
	alternativa_c varchar(255),
	alternativa_d varchar(255),
	resposta char(1)
);

create table simulado (
	id serial primary key,
	pontuacao int,
	data_realizacao date,
	fk_id_usuario int,
	constraint fk_usuario foreign key (fk_id_usuario) references usuaria(id)
);

create table ranking (
	id serial primary key,
	pontuacao int,
	posicao int,
	data_realizacao date,
	fk_id_usuario int,
	constraint fk_usuario foreign key (fk_id_usuario) references usuaria(id)
);


create table jornada (
	id serial primary key, 
	titulo varchar(100),
	descricao varchar(255),
	observacoes varchar(255)
);


create table progresso_jornada(
	id serial primary key,
	progresso float,
	data_ultima_atualizacao date,
	fk_id_usuario int,
	fk_id_jornada int,
	constraint fk_usuario foreign key (fk_id_usuario) references usuaria(id),
	constraint fk_jornada foreign key (fk_id_jornada) references jornada(id)
);

