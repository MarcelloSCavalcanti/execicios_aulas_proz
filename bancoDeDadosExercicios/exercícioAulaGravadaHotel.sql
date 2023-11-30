create table quarto (
	numero INT NOT NULL PRIMARY key,
  	valor_diaria FLOAT NOT NULL,
  	vista_mar BOOLEAN
);

create TABLE cliente (
  	id serial PRIMARY key,
	nome VARCHAR (48) not NULL,
  	rg VARCHAR (8) not NULL,
  	telefone VARCHAR (12) not NULL
)

INSERT INTO quarto (numero, valor_diaria, vista_mar) VALUES
	(101, 74.99, TRUE),
  	(102, 54.50, FALSE),
  	(201, 110, TRUE)

CREATE table estadia (
  	ID SERIAL PRIMARY KEY,
	fk_id_quarto INT NOT NULL,
  	fk_id_cliente INT NOT NULL,
  	CONSTRAINT fk_quarto FOREIGN key (fk_id_quarto) references quarto(numero),
  	CONSTRAINT fk_cliente FOREIGN key (fk_id_cliente) REFERENCES cliente(id)
)

insert INTO estadia (fk_id_quarto,fk_id_cliente) VALUES
	(101, 1),
    (102, 2),
    (201, 1),
    (102,2)
    
SELECT * FROM estadia

CREATE table meio_pagamento (
id serial PRIMARY key,
  nome VARCHAR(18) not NULL
)

insert into meio_pagamento (nome) values
	('dinheiro'),
    ('cartão de crédito'),
    ('cartão de débito')

SELECT * FROM meio_pagamento

alter table estadia
	add column data_entrada VARCHAR(48),
    add COLUMN data_saida VARCHAR(48),
    add COLUMN valor_total FLOAT,
    add COLUMN fk_id_meio_pagamento INT,
    add CONSTRAINT fk_meio_pagamento FOREIGN key (fk_id_meio_pagamento)
    REFERENCES meio_pagamento(id)
    
    SELECT * from estadia
    
 update estadia
 set data_entrada = '2022-08-16'
 where id = 8
 
     SELECT * from estadia
     
 update estadia
 set data_entrada = '2022-08-16T08:54:00',
 fk_id_meio_pagamento = 1
 where id = 8
 
  update estadia
 set data_saida = '2022-08-17T08:00:00',
 valor_total = 148.99,
 fk_id_meio_pagamento = 1
 where id = 8
 
 
     SELECT * from estadia
    