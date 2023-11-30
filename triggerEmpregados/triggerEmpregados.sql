CREATE TABLE IF NOT EXISTS /*isso serve para evitar o erro*/ empregado (
      id SERIAL PRIMARY KEY,
      nome VARCHAR(50) NOT NULL,
      email VARCHAR(50) UNIQUE,
      filial VARCHAR(30)NOT NULL
);

CREATE TABLE IF NOT EXISTS statusCadastro (
  ID SERIAL PRIMARY KEY,
    mensagem VARCHAR(200)
);

CREATE TRIGGER IF NOT EXISTS inserir_dados AFTER INSERT ON empregado
FOR EACH ROW
BEGIN
    IF NEW.email IS NULL THEN
        INSERT INTO statusCadastro(id, mensagem) VALUES (NEW.id, CONCAT('Oi ', NEW.nome, ', atualize seu email!'));
    END IF;
END

insert into empregado(nome, email, filial) VALUES ('Vinicius', null, 'Rio de Janeiro');
insert into empregado(nome, email, filial) VALUES ('Marcello', 'marcellonsovaes98@gmssail.com', 'Cachoeira de Macacu');

SELECT * FROM empregado;
select * FROM statusCadastro;