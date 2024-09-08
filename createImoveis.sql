CREATE TABLE IF NOT EXISTS CorretoraImoveis.Imoveis (
    inscricao int auto_increment not null,
    areaTotal float not null,
    tipoTransacao varchar(10),
    preco float not null,
    endereco int not null,
    tipoImoveis int not null,
    proprietario char(11),
    primary key(inscricao), 
    foreign key (endereco) references Enderecos(codigo)
		on delete cascade
        on update cascade,
    foreign key(tipoImoveis) references TipoImoveis(inscricao)
		on delete cascade
        on update cascade,
    foreign key(proprietario) references Proprietarios(cpf)
        on update cascade
        on delete set null
 );




