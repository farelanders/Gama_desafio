
/*consulta contemplando contagem ou totalização - CONTAGEM DE CLIENTES
select count(*) from clientes; 
*/

/*consulta contemplando a junção entre 2 tabelas - CONSULTA JUNÇÃO ENTRE CLIENTES E ENDEREÇOS - POR ID DE CLIENTE
select * from clientes
inner join enderecos
on clientes.id = enderecos.cliente
where clientes.id = 2;
*/


/*consulta contemplando a junção entre 3 tabelas - CONSULTA JUNÇÃO ENTRE CLIENTES/PEDIDOS/PRODUTOSPEDIDO - DE ACORDO COM O NUMERO DO PEDIDO
select nome, email, whatsapp, codigo as numero_pedido, data, pedidosstatus, descricao, precounitario , quantidade, precototal from clientes
inner join pedidos 
on clientes.id = pedidos.cliente
inner join produtospedido
on pedidos.id = produtospedido.pedidoid
where pedidos.id=1;
*/

/*consulta contemplando a junção entre 2 tabelas + uma operação de totalização e agrupamento - BUSCA DE QUANTIDADE ESTOQUE AGRUPADO POR DEPARTAMENTO 
select departamentos.nome, sum(estoque.quantidade) as estoque_total from produtos
inner join departamentos
on produtos.departamento = departamentos.id
inner join estoque
on produtos.id = estoque.produtoid
group by departamento
*/


/*consulta contemplando a junção entre 3 ou mais tabelas + uma operação de totalização e agrupamento- CONSULTA ITEMS COMPRADOS POR CLIENTE SOMANDO VALOR TOTAL E ITENS COMPRADOS  (RELACIONA CLIENTES, PEDIDOS, PRODUTOSPEDIDO)
select clientes.id, nome, email, whatsapp, sum(quantidade) as itenscomprados, sum(quantidade*precounitario)as valortotal from clientes
inner join pedidos 
on clientes.id = pedidos.cliente
inner join produtospedido
on pedidos.id = produtospedido.pedidoid
group by clientes.nome
*/
 

