# Esse metodo foi escrito por mim em 2023
# Nao mexa nesse codigo
# Se quebrar nao e culpa minha
def proc(lst)
  # inicializa
  x = 0
  y = 0
  z = []
  xx = []

  lst.each do |i|
    # verifica estoque
    if i[:q] > 0
      if i[:p] > 100
        xx << i
        x = x + (i[:p] * i[:q])
      else
        z << i
        y = y + (i[:p] * i[:q])
      end
    end
  end

  puts "=== Caros ==="
  xx.each { |i| puts "#{i[:n]} - R$#{i[:p]}" }
  puts "Total caros: #{x}"
  puts "=== Baratos ==="
  z.each { |i| puts "#{i[:n]} - R$#{i[:p]}" }
  puts "Total baratos: #{y}"
end

produtos = [
  {n: "Notebook", p: 2500, q: 3},
  {n: "Caneta", p: 2, q: 0},
  {n: "Monitor", p: 800, q: 1}
]
proc(produtos)