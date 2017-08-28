# Estudos de banco de dados SQL

Este repositório tem como objetivo de armazenar meus estudos da linguagem SQL. 

## Exibir base de dados
SHOW DATABASES;  

## Eliminar uma base de dados
DROP DATABASE nome da base;  
DROP DATABASE estoque;  

## Criar uma base de dados
CREATE DATABASE nome da base;  
CREATE DATABASE estoque;  

## Selecionar a base criada
USE nome da base;  
USE estoque;  

## Criar uma tablela
CREATE TABLE nome da tabela(nome do campo tipo do campo);  
CREATE TABLE produto(  
    codigo      INTEGER,   
    nome        VARCHAR(30),   
    fabricante  VARCHAR(20),  
    quantidade  INTEGER,  
    preco       FLOAT  
);  

##  Exibir tabelas existentes
SHOW TABLES;  

## Exibir estrutura de uma tabela
DESC nome da tabela;  
DESC produto;  

Obs.: DESC é a abraviação do DESCRIBLE que também pode ser utilizado.  

## Inserir dados na tabela
INSERT INTO nome da tabela VALUES(dados);   
INSERT INTO produto VALUES(101,'Notebook', 'Dell', 2, 2300);  

Obs: Os dados inseridos na tabela respeita a ordem dos campos criada na tabela.  

INSERT INTO produto(codigo, nome, fabricante, quantidade, preco)   
             VALUES(101,'Notebook', 'Dell', 2, 2300);  

## CONSULTAS
Sintaxe: SELECT lista de campos FROM fonte de dados;  
leitura: Selecione lista de campos da fonte de dados;  

SELECT nome, preco FROM produto;  
Selecione nome e preco da tabela produto;  

SELECT nome, preco, quantidade FROM produto;  
Selecione nome, preco e quantidade da tabela produto;  

SELECT * FROM produto;  
selecione tudo da tabela produto;  

## Ordenaçao
SELECT nome, preco, quantidade FROM produto ORDER BY nome;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo nome;  

SELECT nome, preco, quantidade FROM produto ORDER BY preco;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo preco;  

SELECT * FROM produto ORDER BY quantidade;  
Selecione tudo da tabela produto ordenando pela quantidade;  

## Ordenação do maior para o menor
SELECT nome, preco, quantidade FROM produto ORDER BY nome DESC;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo nome de forma decrescente;  

SELECT nome, preco, quantidade FROM produto ORDER BY preco DESC;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo preco de forma decrescente;  

SELECT * FROM produto ORDER BY quantidade DESC;  
Selecione tudo da tabela produto ordenando pela quantidade de forma decrescente;  

SELECT nome, preco, quantidade FROM produto ORDER BY nome ASC;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo nome de forma crescente;  

## Limitar a quantidade de registros exebida na tela
SELECT fabricante, nome FROM produto limit 3;  
Selecione fabricante e nome da tabela produto limitando em 3;  

SELECT nome, preco, quantidade FROM produto ORDER BY nome DESC LIMIT 3;  
Selecione nome, preco e quantidade da tabela produto ordenando pelo nome de forma decrescente limitando em 3;  

## Calculos matemáticos
SELECT nome, preco, preco - 20 FROM produto;  
Selecione nome, preco e preco - 20 da tabela produto;  

## Alterar o rótulo de uma coluna
SELECT nome AS "Nome do Produto", preco AS "Preço", preco - (preco * (20/100)) As "Preço com   Desconto" FROM produto;  
Selecione nome como Nome do Produto, preco como Preço, preco - (preco * (20/100)) como "Preço  com Desconto" da tabela produto;  

## Condições em uma pesquisa (filtros)
SELECT * FROM produto WHERE fabricante = 'Sony';    
Selecione tudo da tabela produto onde o fabricante seja igual a Sony;  

SELECT * FROM produto WHERE fabricante <> 'Sony';    
Selecione tudo da tabela produto onde o fabricante seja diferente de Sony;  

SELECT * FROM produto WHERE preco < 2000;  
Selecione tudo da tabela produto onde o preco seja menor que 2000;  

SELECT * FROM produto WHERE quantidade >= 3 ORDER BY preco;  
Selecione tudo da tabela produto onde a quantidade seja maior ou igual a 3 ordenado pelo preco;  

