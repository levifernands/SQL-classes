
CREATE TABLE departamento (
id_dep int,
nome varchar(50),
id_gerente int,
horario varchar(50),
	PRIMARY KEY(id_dep));

CREATE TABLE empregado (
id_emp int,
nome varchar(50),
aniversario DATE,
endereco varchar(100),
salario float,
id_dep int,
	PRIMARY KEY(id_emp));

CREATE TABLE localizacao (
id_localizacao int,
id_dep int);

CREATE TABLE trabalha_em (
id_emp int,
id_projeto int,
horas varchar(50));

CREATE TABLE projeto (
id_projeto int,
nome varchar(50),
id_dep int,
horario varchar(50));

CREATE TABLE dependente (
id_depen int,
id_emp int,
nome varchar(50),
aniversario DATE,
parentesco varchar(50));