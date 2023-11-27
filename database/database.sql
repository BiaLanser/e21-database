DROP TABLE IF EXISTS livros;

CREATE TABLE livros(
    id INT NOT NULL,
    cod INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(150),
    preco VARCHAR(10),
    id_secao INT,
    PRIMARY KEY(id),
    FOREIGN KEY (id_secao) REFERENCES secao(id)
);

DROP TABLE IF EXISTS  secoes;

CREATE TABLE secoes(
    id INT NOT NULL,
    cod INT NOT NULL,
    nome VARCHAR(150),
    localizacao VARCHAR(150),
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS  vendas;

CREATE TABLE vendas(
    id INT NOT NULL,
    cod INT NOT NULL,
    data_venda VARCHAR(150),
    numero VARCHAR(150),
    item1 INT,
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id),
    FOREIGN KEY (id_item_vendido) REFERENCES Vendedores(id),
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS  itens_vendidos;

CREATE TABLE itens_vendidos(
    id INT NOT NULL,
    cod INT NOT NULL,
    sequencia VARCHAR(150),
    livro VARCHAR(150),
    quantidade INT,
    preco_unitario INT,
    preco_total INT,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS  vendedores;

CREATE TABLE vendedores(
    id INT NOT NULL,
    cod INT NOT NULL,
    nome VARCHAR(150),
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS  clientes;

CREATE TABLE clientes(
     id INT NOT NULL,
     cod INT NOT NULL,
     nome VARCHAR(150),
     telefone VARCHAR(13),
     cpf VARCHAR(14),
     total_compras INT,
     PRIMARY KEY (id)
);

DROP TABLE IF EXISTS  emprestimos;

CREATE TABLE emprestimos(
     id INT NOT NULL,
     cod INT NOT NULL,
     data_emprestimo DATE,
     data_devolucao DATE,
     id_cliente INT,
     id_livro INT,
     PRIMARY KEY (id),
     FOREIGN KEY (id_cliente) REFERENCES clientes (id),
     FOREIGN KEY (id_livro) REFERENCES livros (id),
);

DROP TABLE IF EXISTS  reservas;

CREATE TABLE reservas(
     id INT NOT NULL,
     cod INT NOT NULL,
     data_reserva DATE,
     id_cliente INT,
     id_livro INT,
     PRIMARY KEY (id),
     FOREIGN KEY (id_cliente) REFERENCES clientes (id),
     FOREIGN KEY (id_livro) REFERENCES livros (id),
);

DROP TABLE IF EXISTS  fornecedores;

CREATE TABLE fornecedores(
     id INT NOT NULL,
     cod INT NOT NULL,
     nome VARCHAR(150),
     telefone VARCHAR(13),
     email VARCHAR(40),
     PRIMARY KEY (id)
);

DROP TABLE IF EXISTS  pedidos_fornecedores;

CREATE TABLE pedidos_fornecedores(
     id INT NOT NULL,
     cod INT NOT NULL,
     data_pedido DATE,
     id_fornecedor INT,
     detalhes VARCHAR(150),
     PRIMARY KEY (id),
     FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id)
);