CREATE DATABASE aula;

USE aula;

CREATE TABLE cidade(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    sigla char(3) UNIQUE
);

INSERT INTO cidade (id, nome, sigla) VALUES (1, 'Minas gerais', 'MG');

SELECT * FROM cidade;

CREATE TABLE cliente(
    id int PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    idcidade int,
    constraint fkclientecidade FOREIGN KEY (idcidade) REFERENCES cidade(id)
)

INSERT INTO cliente VALUES (1, 'Eduardo', 1);

SELECT * FROM cliente;

ALTER TABLE cidade
ADD  dddd CHAR(05);

ALTER TABLE cidade
change dddd ddd CHAR(5);

ALTER TABLE cidade
MODIFY ddd CHAR(2);

UPDATE cidade SET ddd = 31 WHERE id = 1;

SELECT * FROM cidade