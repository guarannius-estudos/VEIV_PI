CREATE TRIGGER tr_log_evento_insert
AFTER INSERT ON evento
FOR EACH ROW
EXECUTE FUNCTION fn_log_evento_insert();
