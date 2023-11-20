--se alguém puder me ajudar não estou entendendo o porque de trazer joão e maria no select final--

CREATE TABLE produtos (
  	id SERIAL PRIMARY KEY,
  	nome_produto varchar (20) not NULL,
  	preco FLOAT not NULL
)

INSERT into produtos (nome_produto, preco) VALUES ('tv 4k', 2000.00)
INSERT into produtos (nome_produto, preco) VALUES ('jbl', 800.00)
INSERT into produtos (nome_produto, preco) VALUES ('sofa', 1500.00)
INSERT into produtos (nome_produto, preco) VALUES ('arcondicionado', 3000.00)

SELECT * FROM produtos
SELECT (nome_produto) FROM produtos

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome varchar(20) not NULL
)


INSERT into clientes (nome) VALUES ('João')
INSERT into clientes (nome) VALUES ('Maria')

ALTER table clientes
add column fk_id_produtos INT,
add CONSTRAINT fk_produtos FOREIGN KEY (fk_id_produtos) REFERENCES produtos(id)

update clientes set fk_id_produtos = 1
where nome = 'João'

update clientes set fk_id_produtos = 2
where nome = 'Maria'

select * from clientes

select nome, nome_produto, preco from clientes
left join produtos
on produtos.id = clientes.fk_id_produtos