CREATE TABLE artista (
  	ID SERIAL PRIMARY key,
  	nome VARCHAR(20) UNIQUE
);

CREATE TABLE musica (
  	id SERIAL PRIMARY key,
 	nome VARCHAR(30) not NULL
);

CREATE table gravacao (
	id SERIAL PRIMARY KEY,
  	duracao_seg INT not NULL
);


-----------------------------

dROP TABLE gravacao -- eliminando uma tabela cuidado ao usar

alter table musica-- alterando a tabela 
	add column duracao_seg INT NOT NULL;
    
INSERT INTO artista (nome) VALUES
	('Djavan'),
    ('Os mutantes'),
    ('Pitty');
    
SELECT * from artista

---------------- add musicas---
SELECT * from musica
INSERT into musica (nome, duracao_seg) VALUES
	('Samurai', 180),
    ('Balada do Louco', 240),
    ('Me adora', 120);

----------------ADD RELACIONAMENTOS------------------
--obs: colunas com caracteristica not null só podem ser criadas no inicio da criação da tabela
alter table musica
	add column fk_id_artista INT,
    add CONSTRAINT fk_artista/* nome da CONSTRAINT (chave estrangeira)*/-- CONSTRAINT significa restrição
    FOREIGN KEY (fk_id_artista)/*coluna que representa a chave estrangeira, necessita estar entre parenteses*/
    REFERENCES artista(id) /*qual coluna ela se referencia?*/

SELECT * from musica

update musica
set fk_id_artista = 1-- o que queremos atualizar? 
where nome = 'Samurai'; -- condição onde será a atualização 

update musica
set fk_id_artista = 3-- o que queremos atualizar? 
where nome = 'Me adora'; -- condição onde será a atualização

update musica
set fk_id_artista = 2-- o que queremos atualizar? 
where nome = 'Balada do Louco'; -- condição onde será a atualização 

SELECT * from musica
SELECT * from artista

-------------------------------------- Retirando os constraint

alter table musica
drop CONSTRAINT fk_artista

------------------------------------- add constraintartista
alter table musica
add constraint fk_artista FOREIGN key (fk_id_artista)
REFERENCES artista(ID)
on delete cascade -- para assim ser possível ser deletar os artistas quando deletar as musicas de sua referencia

--------------------- agora é possível deletar o registro Djavanartista
DELETE from artista
WHERe id = 1/*mais recomendável usar os ids porém podemos fazer com o nome das colunas tmb por exemplo nome lembrar que é case sensitive ou seja escreva igualmente as letras minúsculas e minúsculas e cuidado!*/
-- podemos perceber que foi excluído o djavan e sua música respectiva de ambas as tabelas
SELECT * from musica
select * from artista 