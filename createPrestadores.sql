CREATE TABLE IF NOT EXISTS CorretoraImoveis.Prestadores (
    cnpj char(14) not null, 
    nome varchar(50) not null, 
    tipoServico varchar(50) not null,
    primary key(cnpj) 
 );
