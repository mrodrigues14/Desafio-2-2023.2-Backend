CREATE DATABASE IF NOT EXISTS DetranDB;
USE DetranDB;

CREATE TABLE Categoria (
    numeroCategoria INT PRIMARY KEY,
    nomeCategoria VARCHAR(255) NOT NULL
);

CREATE TABLE Modelo (
    numeroModelo INT PRIMARY KEY,
    nomeModelo VARCHAR(255) NOT NULL
);

CREATE TABLE Proprietario (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    bairro VARCHAR(255),
    cidade VARCHAR(255) NOT NULL,
    estado CHAR(2) NOT NULL,
    telefones VARCHAR(255),
    sexo CHAR(10),
    dtNascimento DATE NOT NULL,
    idade INT
);

CREATE TABLE Veiculo (
    placa VARCHAR(10) PRIMARY KEY,
    chassi VARCHAR(17) NOT NULL,
    corPredominante VARCHAR(50),
    anoFab YEAR NOT NULL,
    numeroModelo INT,
    numeroCategoria INT,
    cpfPropietarios VARCHAR(11),
    FOREIGN KEY (nomeModelo) REFERENCES Modelo (NumeroModelo),
    FOREIGN KEY (numeroCategoria) REFERENCES Categoria (NumeroCategoria),
    FOREIGN KEY (cpfPropietarios) REFERENCES Proprietario (CPF)
);

CREATE TABLE AgenteTransito (
    matriculaFuncional INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    dtCotratacao DATE NOT NULL,
    tempoServico INT NOT NULL
);

CREATE TABLE TipoInfracao (
    numeroTipo INT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Local (
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    velocidadePermitida INT,
    PRIMARY KEY (latitude, longitude)
);

CREATE TABLE Infracao (
    numeroIfnracao INT AUTO_INCREMENT PRIMARY KEY,
    dataHora DATETIME NOT NULL,
    velocidadeaferida INT,
    placaVeiculo VARCHAR(10),
    numeroTipo INT,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    matriculaAgente INT,
    FOREIGN KEY (placaVeiculo) REFERENCES Veiculo (placa),
    FOREIGN KEY (numeroTipo) REFERENCES TipoInfracao (numerotipo),
    FOREIGN KEY (latitude, longitude) REFERENCES Local (latirtude, longitude),
    FOREIGN KEY (matriculaAgente) REFERENCES AgenteTransito (matriculaFuncional)
);
