CREATE DATABASE OficinaDIO
GO

USE OficinaDIO
GO

CREATE TABLE Ordem_Servico (
	id int not null primary key,
	carro varchar(50) foreign key not null,
	equipe varchar(50) not null,
	data_emissao datetime not null,
  data_entrega datetime not null,
	horas_trabalhadas int not null,
	valor_total decimal(10,2) not null,
	status varchar(10) not null
	)
	GO
  
  
CREATE TABLE Peca (
	id int not null primary key,
	nome varchar(50) not null,
	modelo varchar(50) not null,
	marca datetime not null,
	valor decimal(10,2) not null
	)
	GO
  
  
CREATE TABLE Ordem_Servico_Peca (
	peca int not null primary key,
	ordem_service int not null primary key
	)
	GO  
  
CREATE TABLE Equipe (
	id int not null primary key,
	nome varchar(50) not null
	)
	GO


CREATE TABLE Carro (
	id int not null primary key,
  ano date not null,
	modelo varchar(50) not null,
  placa varchar(10) not null
	)
	GO
