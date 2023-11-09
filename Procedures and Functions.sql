SET GLOBAL log_bin_trust_function_creators = 1;

select vendedor_aleatorio();

select numero from notas_fiscais;

select * from tabela_de_produtos;

describe tabela_de_produtos; 

select count(*) from tabela_de_produtos;

select f_produto_alea();

select * from tabela_de_produtos where CODIGO_DO_PRODUTO = f_produto_alea();

call p_inserir_venda(20231119,26,100);

select a.numero ,count(*) as numero_itens ,sum(b.preco * b.quantidade) as faturamento from notas_fiscais a  
inner join itens_notas_fiscais b on a.numero = b.numero where a.DATA_VENDA = '20231119' group by a.numero;