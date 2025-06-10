CREATE TABLE evento (
    id INT,
    nome VARCHAR NOT NULL,
    data DATE NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    id_usuario INT NOT NULL,
    id_segmento INT NOT NULL,
    id_localidade INT NOT NULL,
    descricao VARCHAR NOT NULL,
    imagem_banner_1 BYTEA NOT NULL,
    status_aprovacao VARCHAR DEFAULT 'pendente'
);

ALTER TABLE evento ADD CONSTRAINT pk_evento PRIMARY KEY (id);

ALTER TABLE evento
    ADD CONSTRAINT fk_evento_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    ADD CONSTRAINT fk_evento_segmento FOREIGN KEY (id_segmento) REFERENCES segmento(id),
    ADD CONSTRAINT fk_evento_localidade FOREIGN KEY (id_localidade) REFERENCES localidade(id);

ALTER TABLE evento ALTER COLUMN id SET DEFAULT nextval('sq_evento_id');
