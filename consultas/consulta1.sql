/*
1. Quais são os imóveis (código e endereço) disponíveis para venda/aluguel num
determinado bairro.
*/

SELECT inscricao, rua, numero, complemento, tipoTransacao
    FROM CorretoraImoveis.Enderecos, CorretoraImoveis.Imoveis
        WHERE Enderecos.codigo = Imoveis.endereco AND bairro = 'Bela Vista' 
        AND cidade = 'São Carlos' AND tipoTransacao IS NOT NULL
    ORDER BY tipoTransacao;