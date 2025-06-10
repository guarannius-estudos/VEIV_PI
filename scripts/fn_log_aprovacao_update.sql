CREATE OR REPLACE FUNCTION fn_log_aprovacao_update()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE log_aprovacao
    SET
        decisao      = NEW.status_aprovacao,
        comentarios  = NEW.descricao,
        data_decisao = CURRENT_TIMESTAMP
    WHERE
        evento_id = NEW.id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
