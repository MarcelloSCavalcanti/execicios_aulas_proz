create table Aluno (
    aluno_id SERIAL PRIMARY key,
    nome VARCHAR(50) not NULL,
  	matricula VARCHAR (6) NOT null,
    e_mail VARCHAR(50) NOT NULL,
    endereço VARCHAR(50) NOT null,
  	telefone VARCHAR(15) NOT null
)

INSERT INTO aluno (nome, matricula, e_mail, endereço, telefone) Values ('João Carlos', '1234','jcarlos@gmail.com','Rua 13 de maio', '(11)7825-4489')
INSERT INTO aluno (nome, matricula, e_mail, endereço, telefone) Values ('José Vitor', '2345','jvitor@gmail.com','Rua da Saudade', '(11)7825-6589')
INSERT INTO aluno (nome, matricula, e_mail, endereço, telefone) Values ('José Vitor', '3456','pandr@gmail.com','Rua do Sol', '(11)7825-4495')

SELECT * FROM aluno