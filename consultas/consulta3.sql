/*
Quais são os imóveis (código e endereço) negociadas nos últimos 5 anos de uma
determinada pessoa (cliente/proprietária).
*/
SELECT inscricao, rua, numero, complemento, bairro, cidade
    FROM CorretoraImoveis.Enderecos, CorretoraImoveis.Imoveis 
        WHERE Enderecos.codigo = Imoveis.endereco AND
        inscricao in (SELECT inscricao 
            FROM CorretoraImoveis.Proprietarios, CorretoraImoveis.Imoveis, CorretoraImoveis.Negociacoes
            WHERE Proprietarios.cpf = Imoveis.proprietario 
                AND Imoveis.inscricao = Negociacoes.imovel 
                AND dataNegociacao > '2017-12-12' 
                AND cpf = '27278850835');