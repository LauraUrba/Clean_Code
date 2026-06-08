# CLEAN CODE
## Erros

### CodigoRepetido.rb é vereficação de notas
*Erros propositais:*

- código completamente duplicado (chk e chk2), formatação inconsistente e bagunçada, nomes ruins.

### Compras
*Erros propositais:*

- nomes sem sentido (a, b, c, x), comentários óbvios, números mágicos, return explícito desnecessário.

### ProcessadorProdutos.rb
*Erros propositais:*

- comentários inadequados/ofensivos, variáveis x, y, z, xx, método enorme com várias responsabilidades, números mágicos, abreviações nas chaves do hash.

## Códigos refaturados

### CodigoRetido.rb
- chk e chk2 → classificar_nota e nota_para_letra, nomes que explicam o que fazem
- Lógica duplicada eliminada — a constante CLASSIFICACOES centraliza tudo
- Formatação consistente com indentação padrão Ruby (2 espaços)
- return antecipado para caso inválido, sem else desnecessário

### Compras
- a, b, c, d, x → parâmetros com nomes claros; os keyword arguments (incluir_frete:, valor_frete:, nivel_desconto:) tornam a chamada autoexplicativa
- if x == 1 / elsif x == 2... → hash PERCENTUAIS_DE_DESCONTO elimina a repetição
- Comentários óbvios removidos (# verifica desconto, # retorna resultado)
- return explícito removido — em Ruby o último valor é retornado automaticamente

### Produtos
- Comentários agressivos (Não mexa, Não é minha culpa) removidos
- x, y, z, xx → disponiveis, caros, baratos, total
- Chaves :n, :p, :q → :nome, :preco, :quantidade
- Método único com 4 responsabilidades dividido em funções pequenas e objetivas
- Ifs aninhados eliminados com select e reject
- Número mágico 100 virou a constante PRECO_LIMITE_PRODUTO_CARO

