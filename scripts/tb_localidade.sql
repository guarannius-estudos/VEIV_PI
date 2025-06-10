CREATE TABLE localidade (
    id INT,
    nome VARCHAR NOT NULL,
    endereco VARCHAR NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR NOT NULL,
    cep BIGINT NOT NULL,
    capacidade INT NOT NULL
);

ALTER TABLE localidade ADD CONSTRAINT pk_localidade PRIMARY KEY (id);

ALTER TABLE localidade ALTER COLUMN id SET DEFAULT nextval('sq_localidade_id');
