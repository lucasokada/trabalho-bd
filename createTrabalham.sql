CREATE TABLE IF NOT EXISTS CorretoraImoveis.Trabalham (
    imovel int not null,
    prestador char(14) not null,
    dataServico date not null, 
    valor decimal(10, 6) not null,
    primary key(imovel, prestador, dataServico),
    foreign key(imovel) references Imoveis(inscricao)
      on update cascade
      on delete cascade,
    foreign key(prestador) references Prestadores(cnpj)
        on update cascade
        on delete cascade
);

