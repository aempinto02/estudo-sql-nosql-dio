--- Consulta básica
SELECT * FROM CLIENTE

--- Consulta renomeando
SELECT C.* FROM CLIENTE C

--- Apenas nome e nascimento
SELECT nome, nascimento FROM CLIENTE

--- Apenas os clientes de sexo masculino
SELECT nome, cpf FROM CLIENTE WHERE sexo=’masculino’

--- Apenas do sexo masculino com ordenação por nome
SELECT nome, cpf FROM CLIENTE WHERE sexo=’masculino’ ORDER BY nome DESC

--- Apenas os clientes com telefone de tipo residencial
SELECT nome, fone FROM CLIENTE, FONE WHERE CLIENTE.codigo=FONE.codigo and tipo=’residencial’

--- Renomeando campos
SELECT (SELECT COUNT(*) FROM CLIENTES WHERE sexo=’masculino’) AS QtdeHomens,
(SELECT COUNT(*) FROM CLIENTES WHERE sexo=’feminino’) AS QtdeMulheres

--- Usando INNER JOIN para pessoas residentes em São Paulo
SELECT CLIENTE.nome, CLIENTE.sexo, CLIENTE.nascimento
FROM CLIENTE
INNER JOIN ENDERECO ON CLIENTE.id=ENDERECO.clienteId
WHERE ENDERECO.cidade=Sao_Paulo;
