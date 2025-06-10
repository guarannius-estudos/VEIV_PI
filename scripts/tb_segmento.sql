CREATE TABLE segmento (
    id INT,
    nome VARCHAR NOT NULL
);

ALTER TABLE segmento ADD CONSTRAINT pk_segmento PRIMARY KEY (id);

ALTER TABLE segmento ALTER COLUMN id SET DEFAULT nextval('sq_segmento_id');
