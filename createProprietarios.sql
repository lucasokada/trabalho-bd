CREATE TABLE IF NOT EXISTS CorretoraImoveis.Proprietarios (
    cpf char(11) not null, 
    estadoCivil varchar(10) not null,
    primary key(cpf),
    foreign key(cpf) references Pessoas(cpf)
        on update cascade
        on delete cascade
 );