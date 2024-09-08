CREATE TABLE IF NOT EXISTS CorretoraImoveis.Telefones (
	 numero char(9) not null,
	 prefixo char(2) not null,
     numeroOrdem int,
	 endereco int not null,
     primary key(numero, prefixo),
     foreign key (endereco) references Enderecos(codigo)
 );