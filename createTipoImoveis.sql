CREATE TABLE IF NOT EXISTS CorretoraImoveis.TipoImoveis (
	 inscricao int auto_increment not null,
	 tipo varchar(6) not null,
	 taxaITR float,
	 melhorias varchar(255),
	 codigoImovel char(13),
	 codigoMunicipal char(7),
	 quadra varchar(20),
	 numeroQuadra int,
	 IPTU float,
     primary key(inscricao)
 );