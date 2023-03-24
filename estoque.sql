CREATE TABLE clientes (
id int,
nome varchar(50),
endereco varchar(100),
telefone char(10),
cpf char(10),
	PRIMARY KEY (id));

CREATE TABLE funcionarios (
id int,
nome varchar(50),
endereco varchar(100),
telefone char(10),
salario float(10),
	PRIMARY KEY (id));

CREATE TABLE categoria (
id int,
descricao varchar(100),
	PRIMARY KEY (id));

CREATE TABLE produtos (
id int,
descricao varchar(100),
preco float(10),
categoria_id int,
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id));
	

CREATE TABLE filiais (
id int,
razao_social varchar(50),
 endereco varchar(50),
 telefone char(10),
	PRIMARY KEY (id));
 

CREATE TABLE vendas (
id int,
funcionario_id int,
cliente_id int,
filial_id int,
data date,
	PRIMARY KEY (id),
	FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id),
	FOREIGN KEY (cliente_id) REFERENCES clientes(id),
	FOREIGN KEY (filial_id) REFERENCES filiais(id));

CREATE TABLE vendasProdutos (
venda_id int,
produto_id int,
quantidade int,
	PRIMARY KEY (venda_id, produto_id),
	FOREIGN KEY (venda_id) REFERENCES vendas(id),
	FOREIGN KEY (produto_id) REFERENCES produtos(id));
 
CREATE TABLE estoques (
filial_id int,
produto_id int,
quantidade int,
	PRIMARY KEY (filial_id, produto_id),
	FOREIGN KEY (filial_id) REFERENCES filiais(id),
	FOREIGN KEY (produto_id) REFERENCES produtos(id));
