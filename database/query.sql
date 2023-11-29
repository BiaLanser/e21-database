SELECT 
    emprestimos.cod,
    nome,
    clientes.id
FROM
    emprestimos
    JOIN clientes ON emprestimos.id_cliente = clientes.id