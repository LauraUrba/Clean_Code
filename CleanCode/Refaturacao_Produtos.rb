PRECO_LIMITE_PRODUTO_CARO = 100

def em_estoque?(produto)
  produto[:quantidade] > 0
end

def produto_caro?(produto)
  produto[:preco] > PRECO_LIMITE_PRODUTO_CARO
end

def calcular_valor_total(produtos)
  produtos.sum { |produto| produto[:preco] * produto[:quantidade] }
end

def exibir_lista_de_produtos(titulo, produtos, total)
  puts "=== #{titulo} ==="
  produtos.each { |produto| puts "#{produto[:nome]} - R$#{produto[:preco]}" }
  puts "Total: R$#{total}"
  puts ""
end

def processar_produtos(produtos)
  disponiveis = produtos.select { |produto| em_estoque?(produto) }
  caros       = disponiveis.select { |produto|  produto_caro?(produto) }
  baratos     = disponiveis.reject { |produto|  produto_caro?(produto) }

  exibir_lista_de_produtos("Caros",   caros,   calcular_valor_total(caros))
  exibir_lista_de_produtos("Baratos", baratos, calcular_valor_total(baratos))
end

produtos = [
  { nome: "Notebook", preco: 2500, quantidade: 3 },
  { nome: "Caneta",   preco: 2,    quantidade: 0 },
  { nome: "Monitor",  preco: 800,  quantidade: 1 }
]

processar_produtos(produtos)