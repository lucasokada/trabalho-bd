CREATE TABLE IF NOT EXISTS CorretoraImoveis.Enderecos (
    codigo int not null auto_increment,
    rua varchar(50) not null,
    numero int not null,
    complemento varchar(50),
    bairro varchar(50) not null,
    cep char(8) not null,
    cidade varchar(50) not null,
    estado char(2) not null,
    proprietario char(11),
    primary key(codigo),
    foreign key(proprietario) references Pessoas(cpf)
        on update cascade
        on delete set null
);