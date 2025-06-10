CREATE TABLE usuario (
    id INT,
    nome VARCHAR NOT NULL,
    tipo_usuario INT NOT NULL,
    cpf_cnpj VARCHAR NOT NULL,
    senha VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    telefone BIGINT NOT NULL,
    tipo_acesso VARCHAR DEFAULT 'user'
);

ALTER TABLE usuario ADD CONSTRAINT pk_usuario PRIMARY KEY (id);

ALTER TABLE usuario ALTER COLUMN id SET DEFAULT nextval('sq_usuario_id');
