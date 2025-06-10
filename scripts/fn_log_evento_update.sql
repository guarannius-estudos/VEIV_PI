CREATE OR REPLACE FUNCTION fn_log_evento_update()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_evento (
        id_evento,
        nome_old,
        nome_new,
        data_old,
        data_new,
        horario_inicio_old,
        horario_inicio_new,
        horario_fim_old,
        horario_fim_new,
        id_segmento_old,
        id_segmento_new,
        id_localidade_old,
        id_localidade_new,
        descricao_old,
        descricao_new,
        id_usuario
    )
    VALUES (
        NEW.id,
        OLD.nome,
        NEW.nome,
        OLD.data,
        NEW.data,
        OLD.horario_inicio,
        NEW.horario_inicio,
        OLD.horario_fim,
        NEW.horario_fim,
        OLD.id_segmento,
        NEW.id_segmento,
        OLD.id_localidade,
        NEW.id_localidade,
        OLD.descricao,
        NEW.descricao,
        NEW.id_usuario
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
