CREATE OR REPLACE FUNCTION fn_log_aprovacao_insert()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO log_aprovacao (
        evento_id,
        usuario_id,
        decisao
    )
    VALUES (
        NEW.id,
        NEW.id_usuario,
        NEW.status_aprovacao
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
