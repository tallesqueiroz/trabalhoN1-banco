-- Todos os usuários que são produtores:
SELECT nome_usuario, nome_fazenda, email
FROM Usuario
WHERE tipo_usuario = 'Produtor';



--  Todos os produtos com estoque baixo (menos de 50 unidades):
SELECT nome_produto, estoque_disponivel, categoria
FROM Produto
WHERE estoque_disponivel < 50;



-- Todos os pedidos que ainda estão sendo preparados:
SELECT id_pedido, id_consumidor, valor_total, data_pedido
FROM Pedido
WHERE status = 'Em Preparação';



-- Todas as avaliações com nota máxima (5 estrelas):
SELECT id_avaliacao, id_consumidor, comentario, nota
FROM Avaliacao
WHERE nota = 5;



-- Todos os produtos e o nome da fazenda que os vende:
SELECT
    p.nome_produto,
    p.preco,
    p.categoria,
    u.nome_fazenda AS produtor
FROM Produto p
JOIN Usuario u 
	ON p.id_produtor = u.id_usuario;



-- Ver os detalhes de um pedido específico (ID = 4), mostrando nome do produto e quantidade:
SELECT
    ped.id_pedido,
    prod.nome_produto,
    item.quantidade,
    item.preco_unitario
FROM ItemPedido item
JOIN Produto prod 
	ON item.id_produto = prod.id_produto
JOIN Pedido ped 
	ON item.id_pedido = ped.id_pedido
WHERE item.id_pedido = 4;



-- Atualizar o status de um pedido de 'Em Preparação' para 'Enviado' e registrar a mudança na tabela Entrega:
-- Primeiro, atualiza a tabela de Pedidos
UPDATE Pedido
SET status = 'Enviado'
WHERE id_pedido = 9;


SELECT * FROM Pedido where id_pedido = 9;


-- Depois, atualiza a tabela de Entrega
UPDATE Entrega
SET status_entrega = 'Em Trânsito'
WHERE id_pedido = 9;



-- Dar um desconto de 10% em todos os produtos da categoria 'Laticínios':
UPDATE Produto
SET preco = preco * 0.90
WHERE categoria = 'Laticínios';

-- SELECT para verificar a mudança
SELECT nome_produto, preco FROM Produto WHERE categoria = 'Laticínios';

