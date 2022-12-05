-- triggers
CREATE OR ALTER TRIGGER RefreshActiveD
ON Disciplina
AFTER UPDATE
AS BEGIN
	DECLARE @id INT
	DECLARE @ativo BIT
	SELECT @id = d.Id, @ativo = d.Ativo FROM Disciplina d

	UPDATE DisciplinaXCurso SET Ativo = @ativo
	WHERE FK_IdDisciplina = @id
END

CREATE OR ALTER TRIGGER RefreshActiveC
ON Curso
AFTER UPDATE
AS BEGIN
	DECLARE @id INT
	DECLARE @ativo BIT
	SELECT @id = c.Id, @ativo = c.Ativo FROM Curso c

	UPDATE DisciplinaXCurso SET Ativo = @ativo
	WHERE FK_IdCurso = @id
END