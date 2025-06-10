CREATE TRIGGER tr_log_aprovacao_insert
AFTER INSERT ON evento
FOR EACH ROW
EXECUTE FUNCTION fn_log_aprovacao_insert();
