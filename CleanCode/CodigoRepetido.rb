def chk(n)
  if n>=9
    puts "otimo"
  elsif n>=7
    puts "bom"
  elsif n>=5
    puts "regular"
  elsif n>=0
    puts "reprovado"
  else
    puts "invalido"
  end
end

def chk2(n)
  if n>=9
    puts "A"
  elsif n>=7
    puts "B"
  elsif n>=5
    puts "C"
  elsif n>=0
    puts "D"
  else
    puts "invalido"
  end
end

chk(8.5)
chk2(8.5)