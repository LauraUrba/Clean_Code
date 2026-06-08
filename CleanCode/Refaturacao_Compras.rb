PERCENTUAIS_DE_DESCONTO = {
  1 => 0.10,
  2 => 0.20,
  3 => 0.30
}.freeze

def calcular_total(quantidade, preco_unitario, incluir_frete:, valor_frete:, nivel_desconto:)
  subtotal  = quantidade * preco_unitario
  percentual = PERCENTUAIS_DE_DESCONTO.fetch(nivel_desconto, 0)
  total     = subtotal - (subtotal * percentual)

  total += valor_frete if incluir_frete
  total
end

puts calcular_total(
       10,
       5,
       incluir_frete:  true,
       valor_frete:    15,
       nivel_desconto: 2
     )