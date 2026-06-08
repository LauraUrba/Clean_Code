CLASSIFICACOES = [
  { minimo: 9, descricao: "Ótimo",     letra: "A" },
  { minimo: 7, descricao: "Bom",       letra: "B" },
  { minimo: 5, descricao: "Regular",   letra: "C" },
  { minimo: 0, descricao: "Reprovado", letra: "D" }
].freeze

def classificar_nota(nota)
  return "Inválido" if nota < 0

  faixa = CLASSIFICACOES.find { |c| nota >= c[:minimo] }
  faixa ? faixa[:descricao] : "Inválido"
end

def nota_para_letra(nota)
  return "Inválido" if nota < 0

  faixa = CLASSIFICACOES.find { |c| nota >= c[:minimo] }
  faixa ? faixa[:letra] : "Inválido"
end

puts classificar_nota(8.5)  # Bom
puts nota_para_letra(8.5)   # B
puts classificar_nota(4.0)  # Reprovado
puts nota_para_letra(4.0)   # D