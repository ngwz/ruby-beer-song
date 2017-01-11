compteur = 99
while compteur > 0 
  case compteur
  when 2..99
    puts "#{compteur} bottles of beer on the wall, #{compteur} bottles of beer."
  when 1
    puts "#{compteur} bottle of beer on the wall, #{compteur} bottle of beer."
  end
  compteur -= 1
  case compteur
  when 2..99
    puts "Take one down and pass it around, #{compteur} bottles of beer on the wall."
  when 1
    puts "Take one down and pass it around, #{compteur} bottle of beer on the wall."
  when 0
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer."
  end
end
puts "Go to the store and buy some more, 99 bottles of beer on the wall."