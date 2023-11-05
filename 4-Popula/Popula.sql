USE DetranDB;

INSERT INTO Categoria (numeroCategoria, nomeCategoria) VALUES
(01, 'Automóvel'),
(02, 'Motocicleta'),
(03, 'Caminhão'),
(04, 'Ônibus'),
(05, 'Van');

INSERT INTO Modelo (numeroModelo, nomeModelo) VALUES
(123456, 'Gol MI'),
(234567, 'Gol 1.8'),
(345678, 'Uno CS'),
(456789, 'Fiesta'),
(567890, 'Palio EDX');

INSERT INTO Proprietario (cpf, nome, endereco, bairro, cidade, estado, telefones, sexo, dtNascimento, idade) VALUES
('12345678901', 'Matheus Rodrigues', 'Rua A, 123', 'Centro', 'São Paulo', 'SP', '11987654321', 'Masculino', '1980-06-15', 42),
('23456789012', 'Julia Rodrigues', 'Rua B, 234', 'Jardim', 'Rio de Janeiro', 'RJ', '21987654322', 'Feminino', '1985-07-20', 37),
('34567890123', 'Carlos Silva', 'Av. C, 345', 'Vila Nova', 'Belo Horizonte', 'MG', '31987654323', 'Masculino', '1990-08-25', 32),
('45678901234', 'Ana Lucia', 'Rua D, 456', 'Industrial', 'Porto Alegre', 'RS', '51987654324', 'Feminino', '1975-09-30', 47),
('56789012345', 'Pedro Alves de Cabral', 'Av. E, 567', 'Centro', 'Salvador', 'BA', '71987654325', 'Masculino', '1982-10-05', 40);

INSERT INTO Veiculo (placa, chassi, corPredominante, anoFab, numeroModelo, numeroCategoria, cpfPropietarios) VALUES
('MNO1234', '9BWZZZ377VT004251', 'Preto', 2018, 123456, 01, '12345678901'),
('XYZ5678', '9BWZZZ377VT004252', 'Vermelho', 2019, 234567, 02, '23456789012'),
('ABC9012', '9BWZZZ377VT004253', 'Azul', 2020, 345678, 03, '34567890123'),
('DEF3456', '9BWZZZ377VT004254', 'Branco', 2021, 456789, 01, '45678901234'),
('GHI7890', '9BWZZZ377VT004255', 'Prata', 2022, 567890, 02, '56789012345');

INSERT INTO AgenteTransito (matriculaFuncional, nome, dtCotratacao, tempoServico) VALUES
(1234, 'Roberto Dias', '2010-01-10', 156),
(5678, 'Luciana Martins', '2012-05-15', 120),
(9101, 'Ricardo Gomes', '2014-07-20', 96),
(1213, 'Sandra Guedes', '2016-09-25', 72),
(1415, 'Tiago Nunes', '2018-11-30', 48);

INSERT INTO TipoInfracao (numeroTipo, descricao, valor) VALUES
(1, 'Avanço de Sinal Vermelho', 293.47),
(2, 'Parada sobre a Faixa de Pedestres', 195.23),
(3, 'Excesso de Velocidade até 20%', 131.86),
(4, 'Dirigir Veículo sem CNH', 880.41),
(5, 'Estacionar em Local Proibido', 127.69);

INSERT INTO Local (latitude, longitude, velocidadePermitida) VALUES
(-23.550520, -46.633308, 50),
(-22.906847, -43.172896, 60),
(-19.924502, -43.935238, 50),
(-30.034647, -51.217658, 40),
(-12.977749, -38.501630, 60);

INSERT INTO Infracao (dataHora, velocidadeaferida, placaVeiculo, numeroTipo, latitude, longitude, matriculaAgente) VALUES
('2023-01-15 08:30:00', 55, 'MNO1234', 1, -23.550520, -46.633308, 1234),
('2023-02-20 14:15:00', NULL, 'XYZ5678', 2, -22.906847, -43.172896, 5678),
('2023-03-25 09:45:00', 70, 'ABC9012', 3, -19.924502, -43.935238, 9101),
('2023-04-30 16:00:00', NULL, 'DEF3456', 4, -30.034647, -51.217658, 1213),
('2023-05-05 11:20:00', 65, 'GHI7890', 5, -12.977749, -38.501630, 1415);
