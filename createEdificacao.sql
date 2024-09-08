CREATE TABLE IF NOT EXISTS CorretoraImoveis.Edificacao (
    inscricao int auto_increment not null,
    areaConstruida float not null, 
    padraoConstrucao varchar(15) not null, 
    habitacao boolean not null, 
    destinacao varchar(11) not null,
    imovel int not null,
    primary key(inscricao),
    foreign key(imovel) references Imoveis(inscricao)
        on update cascade
        on delete cascade
 );

