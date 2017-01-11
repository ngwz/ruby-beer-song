iterateur = 99
while iterateur >= 0 
  espace = " "
  point = "."
  virgule = ","
  str1 = "bottle"
  str2 = "of beer"
  str3 = "on the wall"
  str4 = "Take one down and pass it around, "
  str5 = "no more"
  str6 = "s"
  str7 = "Go to the store and buy some more, 99 bottles of beer on the wall."
  
  bouteille = iterateur
  
  if bouteille == 0
    nombre = str5
  else
    nombre = "#{bouteille}"
  end
  
  str_a = nombre.capitalize << espace << str1 
  
  if bouteille != 1
    str_a = str_a << str6
  end
  
  str_a = str_a << espace << str2 << espace << str3 << virgule << espace << nombre << espace << str1
  
  if bouteille != 1
    str_a = str_a << str6
  end
  
  puts str_a << espace << str2 << point
  
  bouteille -= 1
  
  if bouteille == 0
    nombre = str5
  else
    nombre = "#{bouteille}"
  end
  
  if bouteille == -1
    puts str7
  else
    str_a = str4 << nombre << espace << str1
    if bouteille != 1
      str_a = str_a << str6
    end
    puts str_a << espace << str2 << espace << str3 << point
  end
  
  iterateur -= 1
  
end