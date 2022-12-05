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