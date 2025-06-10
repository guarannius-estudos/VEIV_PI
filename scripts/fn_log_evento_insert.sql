CREATE OR REPLACE FUNCTION fn_log_evento_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_evento (
        id_evento,
        nome_new,
        data_new,
        horario_inicio_new,
        horario_fim_new,
        id_segmento_new,
        id_localidade_new,
        descricao_new,
        id_usuario
    )
    VALUES (
        NEW.id,
        NEW.nome,
        NEW.data,
        NEW.horario_inicio,
        NEW.horario_fim,
        NEW.id_segmento,
        NEW.id_localidade,
        NEW.descricao,
        NEW.id_usuario
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
