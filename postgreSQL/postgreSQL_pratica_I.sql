-- Para mostrar o HORÁRIO em que estamos EXECUTANDO a QUERY
SELECT NOW();

-- Para CRIAR uma DATABASE
CREATE DATABASE alura;

CREATE DATABASE grupobt;

CREATE DATABASE teste2
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1; -- 	para não colocarmos limites de conexão

-- Para EXCLUIR uma DATABASE
DROP DATABASE grupobt;

CREATE TABLE aluno
(
    id SERIAL,
    nome  VARCHAR(255),
    cpf CHAR(11),
    observacao TEXT,
    idade INTEGER,
    dinheiro NUMERIC(10,2),
    altura REAL,
    ativo BOOLEAN,
    data_nascimento DATE,
    hora_aula TIME,
    matriculado_em TIMESTAMP
);

-- Para CONSULTAR na TABELA
SELECT * FROM aluno;


-- Para INSERIR DADOS na TABELA
INSERT INTO aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Carmem',
	'12345678901',
	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras finibus mollis justo in congue. Curabitur eget malesuada lorem, posuere varius ante. Mauris in est orci. Sed semper pretium velit vitae egestas. Donec finibus semper eleifend. Ut id velit ultricies, pellentesque purus nec, maximus risus. Nulla tristique tellus nec quam condimentum, sit amet convallis erat fermentum. Mauris in dictum dui. In et ante quam. Suspendisse tempor leo nec elementum mattis. Vestibulum rutrum quam risus, eu aliquam sem rhoncus eu.Vestibulum facilisis nunc at viverra luctus. Vestibulum quis tortor lacus. Sed at euismod mauris. Praesent sed neque risus. Donec sed cursus ligula. Nam cursus porttitor purus auctor consequat. In vitae turpis aliquet, euismod quam eu, finibus lacus. Curabitur volutpat tellus et pretium volutpat.',
	28,
	1000.50,
	1.61,
	TRUE,
	'1994-08-27',
	'17:30:00',
	'2021-02-21 12:30:30'
);

 SELECT * FROM aluno;
 
 SELECT * FROM aluno WHERE ID = 1; -- Não retornará
 
 
 -- Para ATUALIZAR a TABELA
 UPDATE aluno
 SET nome = 'Mia',
	cpf = '10987654321',
	observacao ='ballet',
	idade = 29,
	dinheiro = 15.32,
	altura = 1.65,
	ativo = FALSE,
	data_nascimento = '1994-01-15',
	hora_aula = '13:00:00',
	matriculado_em = '2020-01-02 15:00:00'
  WHERE id = 1;
  
  -- Para EXCLUIR a TABELA
  
 -- Primeiro procuramos a partir do todo (*)
SELECT * FROM aluno WHERE nome = 'Mia';

-- Em seguida, excluimos
DELETE FROM aluno WHERE nome = 'Mia';
  
  
-- Para INSERIR NOVAMENTE
INSERT INTO aluno(
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em) 
VALUES (
	'Âmbar',
	'12345678901',
	'natação',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2020-02-08 12:32:45'
);




