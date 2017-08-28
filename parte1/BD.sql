/*
	Estrururas básicas do banco de dados.
	
		Bases de Dados (DATABASE) - Estrutura lógica de organização dos objetos.

		Tabela (TABLE) - Estrutura física composta de campos, chaves e modificadores
		onde os dados são efetivamente armazenados.

**/

-- Exibir bases de dados.
SHOW DATABASES;

-- Eliminar uma base de dados (CUIDADO).
DROP DATABASE Base;

-- Criar uma base de dados.
CREATE DATABASE Base;

-- Selecionar base de dados.
USE Base;

-- Criar tabela.
CREATE TABLE produto(
	nome 	VARCHAR(30), 
	fabric 	VARCHAR(20), 
	qtd 	INT, 
	preco 	FLOAT);
	
-- Exibir tabelas existentes.
SHOW TABLES;

-- Exibir estrutura de uma tabela.
DESC produto;

-- Inserir os dados na tabela.
INSERT INTO produto VALUES('Notebook', 'Dell', 2, 2300);

INSERT INTO produto VALUES('Impressora', 'HP', 4, 460.9);
INSERT INTO produto VALUES('Camera', 'Sony', 3, 980);
INSERT INTO produto VALUES('Monitor', 'LG', 2, 530);
INSERT INTO produto VALUES('Tablet', 'Apple', 1, 2150);
INSERT INTO produto VALUES('Computador', 'Dell', 4, 1800);
INSERT INTO produto VALUES('Smartphone', 'Sony', 3, 2500);
INSERT INTO produto VALUES('Projetor', 'Epson', 1, 1970.5);

-- Consultas.
-- Sintax: SELECT lista-de-campos FROM fonte-dados;

SELECT nome, preco FROM produto;

SELECT fabric, nome, qtd FROM produto;

SELECT nome, fabric, qtd, preco FROM produto;
-- mesmo que
SELECT * FROM produto;

-- Ordenação

SELECT nome, preco, qtd 
	FROM produto ORDER BY nome;
	
SELECT nome, preco, qtd 
	FROM produto ORDER BY preco;

SELECT * FROM produto ORDER BY qtd;
-- mesmo que	
SELECT * FROM produto ORDER BY qtd ASC;

-- Ordernar do Maior para o Menor
SELECT * FROM produto 
	ORDER BY qtd DESC;

-- Limitar a quantidade de registros exibida.
SELECT fabric, nome 
	FROM produto LIMIT 3;

SELECT fabric, nome 
	FROM produto LIMIT 2, 3;
	
SELECT fabric, nome, preco 
	FROM produto ORDER BY preco
	LIMIT 3;
	
SELECT fabric, nome, preco 
	FROM produto ORDER BY preco DESC
	LIMIT 3;

-- Calculos Matematicos.
SELECT nome, preco, preco - 20
	FROM produto;

SELECT nome, qtd, qtd + 5
	FROM produto;
	
-- Alias - Alterar o rótulo de uma coluna.
SELECT nome AS NomeProduto, preco, 
	preco - (preco*(20/100)) AS PrecoDesconto
	FROM produto;

-- Filtros - Condições em uma pesquisa.

SELECT * FROM produto WHERE fabric = 'Sony';
SELECT * FROM produto WHERE fabric <> 'Sony';
SELECT * FROM produto WHERE preco < 2000;
SELECT * FROM produto WHERE qtd >= 3 ORDER BY preco;

-- Operadores Relacionais.

SELECT * FROM produto 
	WHERE fabric = 'Sony' AND preco < 1000;
	
SELECT * FROM produto 
	WHERE fabric = 'Sony' OR preco < 900;

SELECT * FROM produto 
	WHERE fabric = 'Sony' OR preco < 900;

SELECT * FROM produto 
	WHERE (fabric = 'Dell' OR fabric = 'Sony')
	AND preco < 2000;

SELECT * FROM produto 
	WHERE preco < 2000 AND 
	(fabric = 'Dell' OR fabric = 'Sony');

-- Falhas de integridade da tabela produto.
INSERT INTO produto VALUES(NULL, 'LG', 3, NULL);
INSERT INTO produto VALUES('Projetor', 'Epson', 1, 1970.5);

SELECT * FROM produto;

-- Alterar dados de uma tabela.
UPDATE produto SET nome = 'SmartTV'
	WHERE fabric = 'LG' AND qtd = 3;
	
UPDATE produto SET preco = 2000
	WHERE nome = 'SmartTV';	

-- Excluir registros da tabela.
DELETE FROM produto WHERE nome = 'Projetor';

/*
	Estudo de Caso:
	
	Uma empresa requer manter os dados de seus clientes. Os dados são: nome, email, genero e endereço.

	Esses dados são fornecidos a terceiros para envio de campanhas publicitarias. O sistema não 
	mantém histórico de fornecimento, assim como não controla as campanhas.
	
	ENTIDADES
	
	Cliente		
		nome
		email
		genero
		endereco
	
**/

-- PRIMARY KEY(Chave Primária) - Campo identificador, não nulo e único.
-- NOT NULL - Campo não nulo.
CREATE TABLE cliente(
	codCliente	INT				PRIMARY KEY,
	nome 		VARCHAR(40)		NOT NULL, 
	email 		VARCHAR(40)		NOT NULL, 
	genero		CHAR			NOT NULL, 
	endereco 	VARCHAR(100)	NOT NULL);
	
SHOW TABLES;
DESC cliente;

INSERT INTO cliente 
	VALUES(101, 'Nat', 'nat@uol.com', 'f', 'Rua a, Cidade q, rj');

INSERT INTO cliente 
	VALUES(102, 'Edu', 'edu@aol.com', 'm', 'Rua s, Cidade w, sp');	
	
SELECT * FROM cliente;
	