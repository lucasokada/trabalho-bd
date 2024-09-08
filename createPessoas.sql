CREATE TABLE IF NOT EXISTS CorretoraImoveis.Pessoas (
	cpf char(11) not null, 
    nome varchar(50) not null, 
    rg char(11) not null, 
    email varchar(50), 
    tipo varchar(7) not null,
    primary key(cpf)
);