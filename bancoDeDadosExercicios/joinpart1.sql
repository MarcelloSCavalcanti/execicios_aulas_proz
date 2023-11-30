 CREATE TABLE cliente (
	id SERIAL PRIMARY KEY,
   	nome VARCHAR(16) NOT NULL,
   	sobrenome VARCHAR(24) NOT NULL,
   	idade INT,
   	pais VARCHAR(4)
 );
 CREATE TABLE pedido (
 	id SERIAL PRIMARY KEY,
   	item VARCHAR(48) NOT NULL,
   	quantidade INT NOT NULL,
   	fk_id_cliente INT NOT NULL,
   CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id)
);

insert into cliente (nome, sobrenome, idade, pais) VALUES
	('João', 'Alves', 48, 'BR'),
	('Roberto', 'Garcia', 36, 'MX'),
	('Dario', 'Rubens', 39, 'ARG'),
	('Julia', 'Lopes', 28, 'PE'),
  	('Rebeca', 'Giglio', 54, 'IT');

INSERT INTO pedido (item, quantidade, fk_id_cliente) VALUES
	('teclado', 1, 4),
    ('mouse', 2, 4),
    ('monitor', 8, 3),
    ('teclado', 1, 1),
    ('mousepad', 4, 2);
    
SELECT * from pedido/*comparando as tabelas e trazendo as que contém similaridades*/
	INNER join cliente
    on pedido.fk_id_cliente = cliente.id

/*trazer também clientes sem pedido no lado direito*/
SELECT * from pedido
	RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id

/*Para achar os clientes que não fizeram pedidos*/
select * from pedido
	right join cliente
    	on pedido.fk_id_cliente = cliente.id
    where pedido.id is NULL

/*Consulta onde o pedido é igual a id 4*/

select * from pedido
	right join cliente
    	on pedido.fk_id_cliente = cliente.id
    where pedido.id = 4

/*Consulta onde o item é igual a teclado*/
select * from pedido
	Right join cliente
    	on pedido.fk_id_cliente = cliente.id
    where pedido.item = 'teclado'
    
/*quando tiver consultas de colunas ambíguas como duas de nome ID em tabelas diferentes*/

select pedido.id as fk_id_pedido, cliente.id as fk_id_cliente
	FROM pedido
	right join cliente
    	on pedido.fk_id_cliente = cliente.id
    where pedido.item = 'teclado'
    /*consultando de como acimas e pedindo mais informações*/
select pedido.id as fk_id_pedido, item, cliente.id as fk_id_cliente, nome, sobrenome
	FROM pedido
	right join cliente
    	on pedido.fk_id_cliente = cliente.id
    where pedido.item = 'teclado'