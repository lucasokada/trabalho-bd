CREATE TABLE IF NOT EXISTS CorretoraImoveis.Negociacoes (
  dataNegociacao date not null,
  corretor varchar(11) not null,
  negociante varchar(11) not null,
  prioridade varchar(5) default 'baixa',
  imovel int not null,
  primary key(dataNegociacao, corretor, negociante),
  foreign key(corretor) references Corretores(cpf)
    on delete cascade
    on update cascade,
  foreign key(negociante) references Negociantes(cpf)
    on delete cascade
    on update cascade,
  foreign key(imovel) references Imoveis(inscricao)
    on delete cascade
    on update cascade
);

