/*
Quais são os imóveis residenciais (código e endereço) disponíveis para venda/aluguel com
determinado tamanho (faixa da área em m2), disponíveis para negociação (pode ser
locação ou venda – deve aparecer no resultado o tipo da negociação).
*/

SELECT Imoveis.inscricao, rua, numero, complemento, bairro, cidade, tipoTransacao
FROM  CorretoraImoveis.Edificacao, CorretoraImoveis.Imoveis, CorretoraImoveis.Enderecos
WHERE Edificacao.imovel = Imoveis.inscricao 
	AND Enderecos.codigo = Imoveis.endereco 
	AND destinacao = 'Residencial' 
	AND areaTotal BETWEEN 200 AND 400 
	AND tipoTransacao IS NOT NULL