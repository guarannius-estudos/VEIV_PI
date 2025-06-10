CREATE TRIGGER tr_log_evento_update
BEFORE UPDATE ON evento
FOR EACH ROW
WHEN (
    OLD.nome           IS DISTINCT FROM NEW.nome           OR
    OLD.data           IS DISTINCT FROM NEW.data           OR
    OLD.horario_inicio IS DISTINCT FROM NEW.horario_inicio OR
    OLD.horario_fim    IS DISTINCT FROM NEW.horario_fim    OR
    OLD.id_segmento    IS DISTINCT FROM NEW.id_segmento    OR
    OLD.id_localidade  IS DISTINCT FROM NEW.id_localidade  OR
    OLD.descricao      IS DISTINCT FROM NEW.descricao
)
EXECUTE FUNCTION fn_log_evento_update();
