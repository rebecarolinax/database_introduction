CREATE DATABASE Exercicio_1_3;

USE Exercicio_1_3;

CREATE TABLE Clinica(
IdClinica INT PRIMARY KEY IDENTITY,
Nome VARCHAR(30) NOT NULL,
Endereco VARCHAR(100) NOT NULL
)

CREATE TABLE Veterinario(
IdVeterinario INT PRIMARY KEY IDENTITY,
IdClinica INT FOREIGN KEY REFERENCES Clinica(IdClinica) NOT NULL,
NomeVet VARCHAR(30) NOT NULL,
)

CREATE TABLE TipoPet(
IdTipoPet INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(30)
)

CREATE TABLE Raca(
IdRaca INT PRIMARY KEY IDENTITY,
Descricao VARCHAR(30)
)

CREATE TABLE Dono(
IdDono INT PRIMARY KEY IDENTITY,
Endereco VARCHAR(50) NOT NULL
)

CREATE TABLE Pets(
IDPets INT PRIMARY KEY IDENTITY ,
IDRaca INT FOREIGN KEY REFERENCES Raca(IdRaca) NOT NULL,
IdTipoPet INT FOREIGN KEY REFERENCES TipoPet(IdTipoPet) NOT NULL,
IdDono INT FOREIGN KEY REFERENCES Dono(IdDono) NOT NULL,
Nome VARCHAR(30) NOT NULL,
DataNascimento DATE NOT NULL
)

CREATE TABLE Atendimento(
IdAtendimento INT PRIMARY KEY IDENTITY,
IdVeterinario INT FOREIGN KEY REFERENCES Veterinario(IdVeterinario) NOT NULL,
IdPets INT FOREIGN KEY REFERENCES Pets(IdPets) NOT NULL
)