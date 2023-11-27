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
     FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
     FOREIGN KEY (id_livro) REFERENCES Livros (id),
);

CREATE TABLE reservas(
     id INT NOT NULL,
     cod INT NOT NULL,
     data_reserva DATE,
     id_cliente INT,
     id_livro INT,
     PRIMARY KEY (id),
     FOREIGN KEY (id_cliente) REFERENCES Clientes (id),
     FOREIGN KEY (id_livro) REFERENCES Livros (id),
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
     FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores (id)
);

