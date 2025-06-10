CREATE TRIGGER tr_log_aprovacao_update
BEFORE UPDATE ON evento
FOR EACH ROW
WHEN (
    OLD.status_aprovacao IS DISTINCT FROM NEW.status_aprovacao
)
EXECUTE FUNCTION fn_log_aprovacao_update();
