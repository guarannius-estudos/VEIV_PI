CREATE TABLE log_evento (
    id INT,
    id_evento INT,
    nome_old VARCHAR,
    nome_new VARCHAR,
    data_old DATE,
    data_new DATE,
    horario_inicio_old TIME,
    horario_inicio_new TIME,
    horario_fim_old TIME,
    horario_fim_new TIME,
    id_segmento_old INT,
    id_segmento_new INT,
    id_localidade_old INT,
    id_localidade_new INT,
    descricao_old VARCHAR,
    descricao_new VARCHAR,
    data_hora_alteracao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT
);

ALTER TABLE log_evento ADD CONSTRAINT pk_log_evento PRIMARY KEY (id);

ALTER TABLE log_evento
    ADD CONSTRAINT fk_log_evento_evento FOREIGN KEY (id_evento) REFERENCES evento(id),
    ADD CONSTRAINT fk_log_evento_segmento_old FOREIGN KEY (id_segmento_old) REFERENCES segmento(id),
    ADD CONSTRAINT fk_log_evento_segmento_new FOREIGN KEY (id_segmento_new) REFERENCES segmento(id),
    ADD CONSTRAINT fk_log_evento_localidade_old FOREIGN KEY (id_localidade_old) REFERENCES localidade(id),
    ADD CONSTRAINT fk_log_evento_localidade_new FOREIGN KEY (id_localidade_new) REFERENCES localidade(id),
    ADD CONSTRAINT fk_log_evento_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id);

ALTER TABLE log_evento ALTER COLUMN id SET DEFAULT nextval('sq_log_evento_id');
