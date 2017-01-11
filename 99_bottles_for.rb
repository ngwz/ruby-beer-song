for compteur in (-99..-1)
  case compteur.abs
  when 2..99
    puts "#{compteur.abs} bottles of beer on the wall, #{compteur.abs} bottles of beer."
  when 1
    puts "#{compteur.abs} bottle of beer on the wall, #{compteur.abs} bottle of beer."
  end
  compteur += 1
  case compteur.abs
  when 2..99
    puts "Take one down and pass it around, #{compteur.abs} bottles of beer on the wall."
  when 1
    puts "Take one down and pass it around, #{compteur.abs} bottle of beer on the wall."
  when 0
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts "No more bottles of beer on the wall, no more bottles of beer."
  end
end
puts "Go to the store and buy some more, 99 bottles of beer on the wall."