CREATE TABLE IF NOT EXISTS CorretoraImoveis.Corretores (
    cpf char(11) not null, 
    creci varchar(6) not null,
    dataAdmissao Date not null,
    primary key(cpf),
    foreign key(cpf) references Pessoas(cpf)
        on update cascade
        on delete cascade
);