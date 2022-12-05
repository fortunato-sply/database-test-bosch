CREATE DATABASE ProvaDB
USE ProvaDB

-- creating tables
CREATE TABLE Aluno
(
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Cpf VARCHAR(11) NOT NULL,
	Data_nasc DATE NOT NULL
)

CREATE TABLE Professor
(
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Cpf VARCHAR(11) NOT NULL
)

CREATE TABLE Curso
(
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Ativo BIT DEFAULT 1
)

CREATE TABLE Disciplina
(
	Id INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Ativo BIT DEFAULT 1
)

CREATE TABLE DisciplinaXCurso
(
	Id INT IDENTITY PRIMARY KEY,
	FK_IdCurso INT NOT NULL,
	FK_IdDisciplina INT NOT NULL,
	Ativo BIT DEFAULT 1,
	FOREIGN KEY(FK_IdCurso) REFERENCES Curso(Id),
	FOREIGN KEY(FK_IdDisciplina) REFERENCES Disciplina(Id)
)

CREATE TABLE Turma
(
	Id INT IDENTITY PRIMARY KEY,
	FK_IdAluno INT NOT NULL,
	FK_IdProfessor INT NOT NULL,
	FK_IdDisciplinaXCurso INT NOT NULL,
	Nota1 FLOAT,
	Nota2 FLOAT,
	Nota3 FLOAT,
	Nota4 FLOAT,
	Notafinal FLOAT,
	Ativo BIT DEFAULT 1,
	FOREIGN KEY(FK_IdAluno) REFERENCES Aluno(Id),
	FOREIGN KEY(FK_IdProfessor) REFERENCES Professor(Id),
	FOREIGN KEY(FK_IdDisciplinaXCurso) REFERENCES DisciplinaXCurso(Id)
)

CREATE TABLE Pagamentos
(
	Id INT IDENTITY PRIMARY KEY,
	FK_IdAluno INT NOT NULL,
	Boleto DATE NOT NULL,
	Situacao VARCHAR(10),
	CHECK(Situacao = 'pendente' OR Situacao = 'pago' OR Situacao = 'em atraso')
)

-- inserts
INSERT INTO Aluno (Nome, Cpf, Data_nasc)
VALUES ('Lucas Fortunato', '12345678910', '2004-08-21'),
('Ana Cardoso', '12345678910', '2004-08-19'),
('Pedro Jose', '12345678910', '2003-05-15'),
('Claudio Massa', '12345678910', '2002-04-13'),
('Denise Macedo', '12345678910', '2005-08-12'),
('Tiffany Medeiros', '12345678910', '2004-09-10'),
('Leticia Moreira', '12345678910', '2002-06-20'),
('Felipe Matos', '12345678910', '2003-08-21'),
('Italo Kaua', '12345678910', '2002-08-21'),
('Murilo Lobo', '12345678910', '2004-08-21'),
('Kauan da Silva', '12345678910', '2005-05-21'),
('Thiago Marcelino', '12345678910', '2003-11-21'),
('Leonardo Falango', '12345678910', '2003-10-22'),
('Murilo Sertorio', '12345678910', '2003-09-23'),
('Anelise Silva', '12345678910', '2004-08-13'),
('Nycollas Wendy', '12345678910', '2003-02-15'),
('Andre Polonio', '12345678910', '2004-05-17'),
('Gabrielle Fialkoski', '12345678910', '2003-04-18'),
('Iago Souza', '12345678910', '2003-05-04'),
('Hemerson Rodrigues', '12345678910', '2004-10-23')

INSERT INTO Professor (Nome, Cpf)
VALUES ('Vitoria Moraes', '12345678910'),
('Teodoro Macedo', '12345678910'),
('Abigail Dolores', '12345678910'),
('Miriam Gonçalves', '12345678910'),
('Guilherme Lemos', '12345678910')

INSERT INTO Curso (Nome, Ativo)
VALUES ('Desenvolvimento de Sistemas', 1),
('Mecatrônica', 0),
('Inteligência Artificial', 1)

INSERT INTO Disciplina (Nome, Ativo)
VALUES ('Fundamentos de Web', 1),
('Teologia', 1),
('Robótica', 1),
('Criatividade', 1),
('Design', 1),
('Python Machine Learning', 1),
('Javascript + Frameworks', 1),
('POO com C#', 1)

INSERT INTO DisciplinaXCurso (FK_IdCurso, FK_IdDisciplina, Ativo)
VALUES (1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(2, 4, 1),
(2, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1)

INSERT INTO Turma (FK_IdAluno, FK_IdProfessor, FK_IdDisciplinaXCurso, Nota1, Nota2, Nota3, Notafinal, Ativo)
VALUES (1, 1, 1, 7.5, 6, 7.8, 7, 1), -- turma 01
(2, 1, 1, 7.5, 6, 7.8, 7, 1),
(3, 1, 1, 7.5, 6, 7.8, 7, 1),
(4, 1, 1, 7.5, 6, 7.8, 7, 1),
(5, 1, 1, 7.5, 6, 7.8, 7, 1)

INSERT INTO Turma (FK_IdAluno, FK_IdProfessor, FK_IdDisciplinaXCurso, Nota1, Nota2, Notafinal, Ativo)
VALUES (6, 2, 2, 7.5, 6, 7.8, 1), -- turma 02
(7, 2, 2, 7.5, 6, 7.8, 1),
(8, 2, 2, 7.5, 6, 7.8, 1),
(9, 2, 2, 7.5, 6, 7.8, 1),
(10, 2, 2, 7.5, 6, 7.8, 1),
(11, 2, 2, 7.5, 6, 7.8, 1), -- turma 03
(12, 2, 2, 7.5, 6, 7.8, 1),
(13, 2, 2, 7.5, 6, 7.8, 1),
(14, 2, 2, 7.5, 6, 7.8, 1),
(15, 2, 2, 7.5, 6, 7.8, 1)

INSERT INTO Turma (FK_IdAluno, FK_IdProfessor, FK_IdDisciplinaXCurso, Nota1, Notafinal, Ativo)
VALUES (16, 4, 4, 7.5, 7.5, 1), -- turma 04
(17, 4, 4, 7.5, 7.5, 1),
(18, 4, 4, 7.5, 7.5, 1),
(19, 4, 4, 7.5, 7.5, 1),
(20, 4, 4, 7.5, 7.5, 1)

INSERT INTO Pagamentos (FK_IdAluno, Boleto, Situacao)
VALUES (1, GETDATE(), 'pago'), -- 1 pago e 1 pendente
(1, '2023-01-05', 'pendente'),
(2, GETDATE(), 'pago'),
(2, '2023-01-05', 'pendente'),
(3, GETDATE(), 'pago'),
(3, '2023-01-05', 'pendente'),
(4, GETDATE(), 'pago'),
(4, '2023-01-05', 'pendente'),
(5, GETDATE(), 'pago'),
(5, '2023-01-05', 'pendente'),
-- 2 pagos e 1 pendente
(6, GETDATE(), 'pago'), 
(6, GETDATE(), 'pago'),
(6, '2023-01-05', 'pendente'),
(7, GETDATE(), 'pago'),
(7, GETDATE(), 'pago'),
(7, '2023-01-05', 'pendente'),
(8, GETDATE(), 'pago'),
(8, GETDATE(), 'pago'),
(8, '2023-01-05', 'pendente'),
(9, GETDATE(), 'pago'),
(9, GETDATE(), 'pago'),
(9, '2023-01-05', 'pendente'),
(10, GETDATE(), 'pago'),
(10, GETDATE(), 'pago'),
(10, '2023-01-05', 'pendente'),
(11, GETDATE(), 'pago'),
(11, GETDATE(), 'pago'),
(11, '2023-01-05', 'pendente'),
(12, GETDATE(), 'pago'),
(12, GETDATE(), 'pago'),
(12, '2023-01-05', 'pendente'),
(13, GETDATE(), 'pago'),
(13, GETDATE(), 'pago'),
(13, '2023-01-05', 'pendente'),
(14, GETDATE(), 'pago'),
(14, GETDATE(), 'pago'),
(14, '2023-01-05', 'pendente'),
(15, GETDATE(), 'pago'),
(15, GETDATE(), 'pago'),
(15, '2023-01-05', 'pendente'), 
-- 4 pagos e 1 pendente
(16, GETDATE(), 'pago'),
(16, GETDATE(), 'pago'),
(16, GETDATE(), 'pago'),
(16, GETDATE(), 'pago'),
(16, '2023-01-05', 'pendente'),
(17, GETDATE(), 'pago'),
(17, GETDATE(), 'pago'),
(17, GETDATE(), 'pago'),
(17, GETDATE(), 'pago'),
(17, '2023-01-05', 'pendente'),
(18, GETDATE(), 'pago'),
(18, GETDATE(), 'pago'),
(18, GETDATE(), 'pago'),
(18, GETDATE(), 'pago'),
(18, '2023-01-05', 'pendente'),
-- 3 pagos, 1 pendente (vai virar 'em atraso') e 1 pendente pra mes que vem
(19, GETDATE(), 'pago'),
(19, GETDATE(), 'pago'),
(19, GETDATE(), 'pago'),
(19, '2022-12-01', 'pendente'),
(19, '2023-01-05', 'pendente'),
(20, GETDATE(), 'pago'),
(20, GETDATE(), 'pago'),
(20, GETDATE(), 'pago'),
(20, '2022-12-01', 'pendente'),
(20, '2023-01-05', 'pendente')

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

-- views
CREATE OR ALTER VIEW AlunosDiscENotas AS
	SELECT a.Nome as NOMEALUNO, d.Nome as DISCIPLINA, t.Nota1, t.Nota2, t.Nota3, t.Nota4, t.Notafinal
	FROM Turma t
	JOIN Aluno a ON a.Id = t.FK_IdAluno
	JOIN DisciplinaXCurso dxc ON dxc.Id = t.FK_IdDisciplinaXCurso
	JOIN Disciplina d ON d.Id = dxc.FK_IdDisciplina
	
SELECT * FROM AlunosDiscENotas

CREATE OR ALTER VIEW MostrarCaloteiros AS
	SELECT a.Nome, p.Situacao, p.Boleto
	FROM Pagamentos p
	JOIN Aluno a ON a.Id = p.FK_IdAluno
	WHERE p.Situacao = 'em atraso'

SELECT * FROM MostrarCaloteiros