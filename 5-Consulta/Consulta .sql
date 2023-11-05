SELECT * FROM Veiculo
WHERE cpfPropietarios = 'CPF_DO_PROPRIETARIO';

SELECT * FROM Proprietario
WHERE nome LIKE '%PARTE_DO_NOME%';

SELECT i.*, v.*
FROM Infracao i
JOIN Veiculo v ON i.placaVeiculo = v.placa
WHERE i.dataHora BETWEEN 'DATA_INICIAL' AND 'DATA_FINAL';

SELECT m.nomeModelo, COUNT(v.placa) AS QuantidadeVeiculos
FROM Modelo m
LEFT JOIN Veiculo v ON m.numeroModelo = v.numeroModelo
GROUP BY m.nomeModelo
ORDER BY QuantidadeVeiculos DESC;
