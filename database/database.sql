CREATE TABLE livros(
    id INT NOT NULL,
    cod INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    autor VARCHAR(150),
    preco VARCHAR(10),
    PRIMARY KEY(id)
);

CREATE TABLE secoes(
    id INT NOT NULL,
    cod INT NOT NULL,
    nome VARCHAR(150),
    localizacao VARCHAR(150),
    PRIMARY KEY(id)
);

CREATE TABLE vendas(
    id INT NOT NULL,
    cod INT NOT NULL,
    data_venda VARCHAR(150),
    numero VARCHAR(150),
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_vendedor) REFERENCES vendedores(id),
    PRIMARY KEY(id)
);

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

CREATE TABLE vendedores(
    id INT NOT NULL,
    cod INT NOT NULL,
    nome VARCHAR(150),
    PRIMARY KEY(id)
);

CREATE TABLE clientes(
     id INT NOT NULL,
     cod INT NOT NULL,
     nome VARCHAR(150),
     telefone VARCHAR(13),
     cpf VARCHAR(14),
     total_compras INT,
     PRIMARY KEY (id)
);

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

CREATE TABLE fornecedores(
     id INT NOT NULL,
     cod INT NOT NULL,
     nome VARCHAR(150),
     telefone VARCHAR(13),
     email VARCHAR(40),
     PRIMARY KEY (id)
);

CREATE TABLE pedidos_fornecedores(
     id INT NOT NULL,
     cod INT NOT NULL,
     data_pedido DATE,
     id_fornecedor INT,
     detalhes VARCHAR(150),
     PRIMARY KEY (id),
     FOREIGN KEY (id_fornecedor) REFERENCES fornecedores (id)
);