CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario ENUM('Consumidor', 'Produtor') NOT NULL,
    preferencias_alimentares TEXT,
    nome_fazenda VARCHAR(150),
    descricao_produtor TEXT,
    CHECK (
        (tipo_usuario = 'Consumidor' AND nome_fazenda IS NULL AND descricao_produtor IS NULL) OR 
        (tipo_usuario = 'Produtor' AND nome_fazenda IS NOT NULL)
    )
);

CREATE TABLE Endereco (
    id_endereco INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    rua VARCHAR(150) NOT NULL,
    cep CHAR(8) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    estado CHAR(2) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Telefone (
    id_telefone INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    tipo_telefone ENUM('Celular', 'Fixo', 'Comercial') NOT NULL,
    ddd CHAR(2) NOT NULL,
    numero VARCHAR(9) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);


CREATE TABLE Produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_produtor INT NOT NULL,
    nome_produto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL CHECK (preco > 0),
    descricao_produto TEXT,
    estoque_disponivel INT NOT NULL CHECK (estoque_disponivel >= 0),
    foto VARCHAR(255),
    FOREIGN KEY (id_produtor) REFERENCES Usuario(id_usuario)
);


CREATE TABLE Pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_consumidor INT NOT NULL,
    status ENUM('Aguardando Pagamento', 'Em Preparação', 'Enviado', 'Finalizado') NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL CHECK (valor_total >= 0),
    data_pedido DATE NOT NULL, 
    FOREIGN KEY (id_consumidor) REFERENCES Usuario(id_usuario)
);

CREATE TABLE ItemPedido (
    seq_item INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL CHECK (preco_unitario > 0),
    quantidade INT NOT NULL CHECK (quantidade > 0),
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto)
);

CREATE TABLE Entrega (
    id_entrega INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL UNIQUE,
    data_entrega DATE,
    status_entrega ENUM('Aguardando Envio', 'Em Trânsito', 'Entregue') NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id_pedido)
);

CREATE TABLE Avaliacao (
    id_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
    id_consumidor INT NOT NULL,
    id_produto INT,
    id_produtor INT,
    nota INT NOT NULL CHECK (nota BETWEEN 1 AND 5),
    comentario TEXT,
    data_avaliacao DATE NOT NULL,
    FOREIGN KEY (id_consumidor) REFERENCES Usuario(id_usuario),
    FOREIGN KEY (id_produto) REFERENCES Produto(id_produto),
    FOREIGN KEY (id_produtor) REFERENCES Usuario(id_usuario)
);