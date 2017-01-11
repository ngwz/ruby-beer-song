class Bottle99
  
  def song
    body + ending
    #body.zip(body).flatten + ending
    #body.flat_map{|body| [body] * 5} + ending
  end
  
  def body
    99.downto(1).flat_map do | line |
      ["#{format_number(line)} #{pluralize_bottle(line)} of beer on the wall, " + 
       "#{format_number(line)} #{pluralize_bottle(line)} of beer.",
      "Take one down and pass it around, #{format_number(line - 1)} #{pluralize_bottle(line - 1)} of beer on the wall."]
    end
  end
  
  def ending
    ['No more bottles of beer on the wall, no more bottles of beer.',
     'Go to the store and buy some more, 99 bottles of beer on the wall.']
  end
  
  def format_number(line)
    if line == 0 then 'no more' else line end
  end
  
  def pluralize_bottle(line)
    if line == 1 then 'bottle' else 'bottles' end
  end
  
end

puts Bottle99.new.song.join("\n")