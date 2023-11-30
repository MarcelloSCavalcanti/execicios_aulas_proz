create function soma(num1 INT,num2 INT)
	returns INT /*tipo de retorno esperado*/ As $$
    BEGIN
    	RETURN num1 + num2;
    END
    $$ LANGUAGE PLPGSQL /*forma resumida de procedural language Postgresql no qual é uma biblioteca com mais opções de comando sql*/

SELECT soma(32,57) /*no banco de dados devemos projetar o resultado*/

create or replace function soma(num1 INT,num2 INT) -- cria ou substitui uma função soma serve apenas para quando muda a lógica da função
	returns INT As $$
    BEGIN
    	RETURN num1 + num2 + num2;
    END
    $$ LANGUAGE PLPGSQL

SELECT soma(32,57)


