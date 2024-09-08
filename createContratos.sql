CREATE TABLE IF NOT EXISTS CorretoraImoveis.Contratos (
    numero int not null auto_increment, 
    dataAcordo date not null, 
    proprietario char(11) not null, 
    dataNegociacao date not null,
    corretor varchar(11) not null,
    negociante varchar(11) not null,
    primary key(numero),
    foreign key(proprietario) references Proprietarios(cpf)
      on update cascade
      on delete cascade,
    foreign key(negociante) references Negociantes(cpf)
      on update cascade
      on delete cascade,
    foreign key(dataNegociacao, corretor, negociante) references Negociacoes(dataNegociacao, corretor, negociante)
      on update cascade
      on delete cascade
);