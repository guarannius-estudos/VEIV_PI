CREATE TABLE log_aprovacao (
    id INT,
    evento_id INT NOT NULL,
    usuario_id INT NOT NULL,
    data_decisao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    decisao VARCHAR NOT NULL,
    comentarios VARCHAR
);

ALTER TABLE log_aprovacao ADD CONSTRAINT pk_log_aprovacoes PRIMARY KEY (id);

ALTER TABLE log_aprovacao
    ADD CONSTRAINT fk_log_aprovacao_evento FOREIGN KEY (evento_id) REFERENCES evento(id),
    ADD CONSTRAINT fk_log_aprovacao_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id);

ALTER TABLE log_aprovacao ALTER COLUMN id SET DEFAULT nextval('sq_log_aprovacao_id');
