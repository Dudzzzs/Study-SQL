USE estudos_sql; 

CREATE TABLE clientes (
    id INT,
    nome VARCHAR(100),
    cpf VARCHAR(11), 
    contato VARCHAR(20)
    );

INSERT INTO clientes VALUES(1, 'EDUARDO', '12345678910', '31912345678');
INSERT INTO clientes VALUES(2, 'ALICE', '09876543210', '31909876543');
INSERT INTO clientes VALUES(3, 'ANA', '10293847561', '31923459876');

SELECT * FROM clientes WHERE nome = 'EDUARDO';
SELECT id, cpf 
FROM clientes 
WHERE nome = 'EDUARDO';
SELECT * 
FROM clientes 
LIMIT 2

CREATE TABLE cidade (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    sigla_estado VARCHAR(2) 
    );
INSERT INTO cidade (nome, sigla_estado) VALUES ('Belo horizonte', 'MG');
INSERT INTO cidade (nome, sigla_estado) VALUES ('Belo horizonte', 'MG');
UPDATE cidade SET nome = 'Sao Paulo', sigla_estado = 'SP' WHERE id = 2;

ALTER TABLE clientes
MODIFY id INT PRIMARY KEY AUTO_INCREMENT;

INSERT INTO clientes(nome, cpf, contato) VALUES ('Ariane', '12784391827', '31902945672');
UPDATE clientes SET nome = UPPER(nome) WHERE id = 4;

SELECT * FROM clientes WHERE nome in ('EDUARDO', 'ALICE');
SELECT * FROM clientes WHERE nome LIKE 'EDUA%' or nome LIKE '%ICE';

ALTER TABLE clientes
ADD COLUMN pontos INT DEFAULT 0;
ALTER TABLE clientes
RENAME COLUMN id TO id_clientes;

SELECT *, pontos + 5 AS adicao_de_pontos FROM clientes;

ALTER TABLE clientes
ADD COLUMN data_cadastro VARCHAR(100) DEFAULT '2026-08-20 21:20:00 +0000 UTC';

UPDATE clientes
SET data_cadastro = STR_TO_DATE(SUBSTRING(data_cadastro,1,19), '%Y-%m-%d %H:%i:%s');

ALTER TABLE clientes
MODIFY data_cadastro DATETIME;

SELECT id_clientes, data_cadastro, DATE_FORMAT(data_cadastro, '%d/%m/%Y as %H:%i em uma %W') as data_formatada FROM clientes; 


