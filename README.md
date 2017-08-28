# Estudos de banco de dados SQL

Este repositório tem como objetivo de armazenar meus estudos da linguagem SQL. 

## Exibir base de dados
SHOW DATABASES;

## Eliminar uma base de dados
DROP DATABASE nome da base;

## Criar uma base de dados
CREATE DATABASE nome da base;

## Selecionar a base criada
USE nome da base;

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

## Inserir dados na tabela
INSERT INTO produto VALUES(101,'Notebook', 'Dell', 2, 2300);