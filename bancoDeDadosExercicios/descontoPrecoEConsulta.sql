CREATE OR REPLACE FUNCTION aplicar_desconto(preco FLOAT, desconto FLOAT)
	returns float as $$
    BEGIN
    	RETURN preco * (1 - desconto);/*precisa do ponto e virgula*/
    END
$$ LANGUAGE PLPGSQL

SELECT aplicar_desconto(200, 0.2)

CREATE table produto (
	id SERIAL PRIMARY key,
  	nome VARCHAR(16) NOT NULL UNIQUE,
  	preco FLOAT NOT NULL
);

INSERT into produto (nome, preco) VALUES
	('Bicicleta', 799.99),
    ('Patins', 234.50),
    ('Scooter', 450.00);
    
SELECT * FROM produto

SELECT nome, aplicar_desconto(preco,0.3) as novo_preco /*altera o nome da coluna resultado*/
	FROM produto
    where id = 1;/*somente necessário para se quiser filtrar a informação*/