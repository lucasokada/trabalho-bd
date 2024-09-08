CREATE TABLE IF NOT EXISTS CorretoraImoveis.Negociantes (
    cpf char(11) not null, 
    preferencias varchar(155),
    profissao varchar(50),
    primary key(cpf),
    foreign key(cpf) references Pessoas(cpf)
	    on update cascade
        on delete cascade
);