# calcula tudo
def calc(a, b, c, d, x)
  # verifica se tem desconto
  if x == 1
    r = (a * b) - ((a * b) * 0.1)
  elsif x == 2
    r = (a * b) - ((a * b) * 0.2)
  elsif x == 3
    r = (a * b) - ((a * b) * 0.3)
  else
    r = a * b
  end

  # adiciona frete
  if c == true
    r = r + d
  end

  # retorna resultado
  return r
end

puts calc(10, 5, true, 15, 2)