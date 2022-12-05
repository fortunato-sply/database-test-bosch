-- procedures
CREATE PROCEDURE AtualizarSituacao
AS BEGIN
	UPDATE Pagamentos
		SET Situacao = 'em atraso'
		WHERE Boleto < GETDATE() AND Situacao = 'pendente'
END

exec AtualizarSituacao
SELECT * FROM Pagamentos

CREATE OR ALTER PROCEDURE MostrarDisciplinasPorAluno
@nomeAluno varchar(45) -- parameter
AS BEGIN
	SELECT a.Nome as 'NOME DO ALUNO', d.Nome as DISCIPLINA FROM DisciplinaXCurso dxc
	JOIN Turma t on t.FK_IdDisciplinaXCurso = dxc.Id
	JOIN Aluno a on a.Id = t.FK_IdAluno
	JOIN Disciplina d on d.Id = dxc.FK_IdDisciplina
	WHERE a.Nome = @nomeAluno
END

exec MostrarDisciplinasPorAluno 'Felipe Matos'