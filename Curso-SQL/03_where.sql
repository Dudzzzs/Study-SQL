
SELECT * 
FROM produtos 
WHERE DescNomeProduto LIKE '%Drag%';

SELECT * 
FROM produtos 
WHERE DescCategoriaProduto = 'espada'
OR DescCategoriaProduto = 'armadura';

SELECT * 
FROM produtos 
WHERE DescCategoriaProduto IN ('espada', 'armadura')
