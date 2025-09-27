-- USUARIO
INSERT INTO Usuario (id_usuario, nome_usuario, email, senha, tipo_usuario, preferencias_alimentares, nome_fazenda, descricao_produtor) VALUES
	(1, 'Ana Clara Souza', 'ana.souza@email.com', 'senha123', 'Consumidor', 'Vegetariana, sem glúten', NULL, NULL),
	(2, 'Bruno Martins', 'bruno.martins@email.com', 'senha123', 'Consumidor', 'Sem lactose', NULL, NULL),
	(3, 'Carla Ferreira', 'carla.ferreira@email.com', 'senha123', 'Consumidor', 'Orgânicos', NULL, NULL),
	(4, 'Daniel Alves', 'daniel.alves@email.com', 'senha123', 'Consumidor', NULL, NULL, NULL),
	(5, 'Eduarda Lima', 'eduarda.lima@email.com', 'senha123', 'Consumidor', 'Vegana', NULL, NULL),
	(6, 'Fazenda Sol Nascente', 'contato@solnascente.com', 'fazendaforte', 'Produtor', NULL, 'Fazenda Sol Nascente', 'Produção familiar de hortaliças e legumes orgânicos.'),
	(7, 'Sítio Verde Perto', 'vendas@verdeperto.com', 'fazendaforte', 'Produtor', NULL, 'Sítio Verde Perto', 'Especializados em frutas vermelhas e tropicais da estação.'),
	(8, 'Apiário Doce Mel', 'mel@docemel.com', 'fazendaforte', 'Produtor', NULL, 'Apiário Doce Mel', 'Produção de mel silvestre e derivados de abelhas nativas.'),
	(9, 'Queijaria Artesanal Minas', 'queijo@artesanalminas.com', 'fazendaforte', 'Produtor', NULL, 'Queijaria Artesanal Minas', 'Queijos frescos e curados feitos com leite de vaca Jersey.'),
	(10, 'Granja Ovos de Ouro', 'ovos@deouro.com', 'fazendaforte', 'Produtor', NULL, 'Granja Ovos de Ouro', 'Criação de galinhas caipiras para produção de ovos de alta qualidade.');

-- ENDERECO
INSERT INTO Endereco (id_endereco, id_usuario, rua, cep, cidade, estado) VALUES
	(1, 1, 'Rua das Flores, 123', '01001000', 'São Paulo', 'SP'),
	(2, 2, 'Avenida Paulista, 1500', '01310200', 'São Paulo', 'SP'),
	(3, 3, 'Rua Copacabana, 45', '22020001', 'Rio de Janeiro', 'RJ'),
	(4, 4, 'Praça da Liberdade, 10', '30140010', 'Belo Horizonte', 'MG'),
	(5, 5, 'Rua das Laranjeiras, 88', '22240003', 'Rio de Janeiro', 'RJ'),
	(6, 6, 'Estrada Vicinal, Km 5', '13400970', 'Piracicaba', 'SP'),
	(7, 7, 'Rodovia dos Bandeirantes, S/N', '13295000', 'Itupeva', 'SP'),
	(8, 8, 'Caminho da Serra, 300', '37580000', 'Monte Sião', 'MG'),
	(9, 9, 'Estrada Real, 1850', '36325000', 'Tiradentes', 'MG'),
	(10, 10, 'Avenida das Aves, 77', '18010000', 'Sorocaba', 'SP');

-- TELEFONE
INSERT INTO Telefone (id_telefone, id_usuario, tipo_telefone, ddd, numero) VALUES
	(1, 1, 'Celular', '11', '987654321'),
	(2, 2, 'Celular', '11', '912345678'),
	(3, 3, 'Comercial', '21', '999887766'),
	(4, 4, 'Celular', '31', '988776655'),
	(5, 5, 'Fixo', '21', '25554321'),
	(6, 6, 'Comercial', '19', '976543210'),
	(7, 7, 'Comercial', '11', '965432109'),
	(8, 8, 'Celular', '35', '954321098'),
	(9, 9, 'Fixo', '32', '33551234'),
	(10, 10, 'Comercial', '15', '943210987');

-- PRODUTO
INSERT INTO Produto (id_produto, id_produtor, nome_produto, categoria, preco, descricao_produto, estoque_disponivel, foto) VALUES
	(1, 6, 'Alface Crespa Orgânica', 'Hortaliças', 3.50, 'Alface fresca e crocante, cultivada sem agrotóxicos.', 100, 'alface.jpg'),
	(2, 6, 'Tomate Italiano Orgânico (kg)', 'Legumes', 8.90, 'Tomate ideal para molhos, suculento e saboroso.', 80, 'tomate.jpg'),
	(3, 7, 'Morango Bandeja 250g', 'Frutas', 12.00, 'Morangos doces e frescos, colhidos no dia.', 50, 'morango.jpg'),
	(4, 7, 'Amora Congelada 500g', 'Frutas', 18.50, 'Amoras selecionadas e congeladas para manter o frescor.', 60, 'amora.jpg'),
	(5, 8, 'Mel Silvestre 500g', 'Apiário', 25.00, 'Mel puro de florada silvestre, sem aditivos.', 120, 'mel.jpg'),
	(6, 8, 'Própolis Verde Extrato 30ml', 'Apiário', 15.00, 'Extrato de própolis verde com alta concentração.', 200, 'propolis.jpg'),
	(7, 9, 'Queijo Minas Frescal 500g', 'Laticínios', 22.00, 'Queijo fresco, de massa leve e sabor suave.', 40, 'queijo_frescal.jpg'),
	(8, 9, 'Queijo Canastra Curado (peça)', 'Laticínios', 45.00, 'Queijo de casca amarela e sabor intenso, maturado por 30 dias.', 30, 'queijo_canastra.jpg'),
	(9, 10, 'Ovos Caipiras (dúzia)', 'Avicultura', 14.00, 'Ovos de galinhas criadas soltas, com gema bem amarela.', 90, 'ovos.jpg'),
	(10, 6, 'Cenoura Orgânica (maço)', 'Legumes', 4.00, 'Maço de cenouras frescas e adocicadas.', 70, 'cenoura.jpg');

-- PEDIDO
INSERT INTO Pedido (id_pedido, id_consumidor, status, valor_total, data_pedido) VALUES
	(1, 1, 'Finalizado', 36.90, '2025-09-01'),
	(2, 2, 'Finalizado', 45.00, '2025-09-03'),
	(3, 3, 'Enviado', 24.00, '2025-09-10'),
	(4, 4, 'Em Preparação', 83.00, '2025-09-15'),
	(5, 5, 'Finalizado', 25.50, '2025-09-18'),
	(6, 1, 'Aguardando Pagamento', 14.00, '2025-09-20'),
	(7, 2, 'Enviado', 25.00, '2025-09-21'),
	(8, 3, 'Finalizado', 12.00, '2025-09-22'),
	(9, 4, 'Em Preparação', 54.90, '2025-09-25'),
	(10, 5, 'Finalizado', 22.00, '2025-09-26');

-- ITEMPEDIDO
INSERT INTO ItemPedido (seq_item, id_pedido, id_produto, preco_unitario, quantidade) VALUES
	(1, 1, 2, 8.90, 2), -- Pedido de Ana: Tomate
	(2, 1, 1, 3.50, 1), -- Pedido de Ana: Alface
	(3, 1, 5, 15.00, 1), -- Pedido de Ana: Mel (preço promocional, diferente do cadastro)
	(4, 2, 8, 45.00, 1), -- Pedido de Bruno: Queijo Canastra
	(5, 3, 3, 12.00, 2), -- Pedido de Carla: Morango
	(6, 4, 8, 45.00, 1), -- Pedido de Daniel: Queijo Canastra
	(7, 4, 7, 22.00, 1), -- Pedido de Daniel: Queijo Frescal
	(8, 4, 9, 14.00, 1), -- Pedido de Daniel: Ovos
	(9, 5, 1, 3.50, 3), -- Pedido de Eduarda: Alface
	(10, 5, 10, 4.00, 2), -- Pedido de Eduarda: Cenoura
	(11, 5, 6, 15.00, 1), -- Pedido de Eduarda: Própolis (preço promocional)
	(12, 6, 9, 14.00, 1), -- Pedido de Ana: Ovos
	(13, 7, 5, 25.00, 1), -- Pedido de Bruno: Mel
	(14, 8, 3, 12.00, 1), -- Pedido de Carla: Morango
	(15, 9, 2, 8.90, 1), -- Pedido de Daniel: Tomate
	(16, 9, 8, 45.00, 1), -- Pedido de Daniel: Queijo Canastra
	(17, 10, 7, 22.00, 1); -- Pedido de Eduarda: Queijo Frescal

-- ENTREGA
INSERT INTO Entrega (id_entrega, id_pedido, data_entrega, status_entrega) VALUES
	(1, 1, '2025-09-03', 'Entregue'),
	(2, 2, '2025-09-05', 'Entregue'),
	(3, 3, NULL, 'Em Trânsito'),
	(4, 4, NULL, 'Aguardando Envio'),
	(5, 5, '2025-09-20', 'Entregue'),
	(6, 6, NULL, 'Aguardando Envio'),
	(7, 7, NULL, 'Em Trânsito'),
	(8, 8, '2025-09-24', 'Entregue'),
	(9, 9, NULL, 'Aguardando Envio'),
	(10, 10, '2025-09-27', 'Entregue');

-- AVALIACAO
INSERT INTO Avaliacao (id_avaliacao, id_consumidor, id_produto, id_produtor, nota, comentario, data_avaliacao) VALUES
	-- Avaliações de Produtos
	(1, 1, 2, NULL, 5, 'Tomates perfeitos para molho! Muito saborosos.', '2025-09-04'),
	(2, 2, 8, NULL, 5, 'Queijo Canastra autêntico, sabor incrível. Recomendo!', '2025-09-06'),
	(3, 3, 3, NULL, 4, 'Morangos bem doces, mas alguns chegaram um pouco amassados.', '2025-09-25'),
	(4, 5, 1, NULL, 5, 'Alface super fresca, durou a semana toda na geladeira.', '2025-09-21'),
	(5, 1, 5, NULL, 5, 'Mel de excelente qualidade.', '2025-09-05'),
	-- Avaliações de Produtores
	(6, 4, NULL, 9, 5, 'A Queijaria Artesanal Minas tem produtos maravilhosos e entrega rápida.', '2025-09-07'),
	(7, 2, NULL, 8, 4, 'Gostei muito dos produtos do Apiário, mas o site poderia ser melhor.', '2025-09-08'),
	(8, 3, NULL, 7, 5, 'Sítio Verde Perto sempre com frutas frescas e de qualidade.', '2025-09-12'),
	(9, 5, NULL, 6, 5, 'Os orgânicos da Fazenda Sol Nascente são os melhores da região!', '2025-09-22'),
	(10, 1, NULL, 10, 4, 'Ovos muito bons, com a gema bem colorida. A embalagem poderia ser mais segura.', '2025-09-23');
