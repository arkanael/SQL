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
