class Bottle99
  
  def song
    body + ending
  end
  
  def body
    99.downto(1).map do | line_number |
      ['%s %s of beer on the wall, %s %s of beer.' % ([format_number(line_number), pluralize_bottle(line_number)] * 2),
      'Take one down and pass it around, %s %s of beer on the wall.' % [format_number(line_number - 1), pluralize_bottle(line_number - 1)]]
    end
  end
  
  def ending
    ['No more bottles of beer on the wall, no more bottles of beer.',
     'Go to the store and buy some more, 99 bottles of beer on the wall.']
  end
  
  def format_number(line_number)
    if line_number == 0 then 'no more' else line_number end
  end
  
  def pluralize_bottle(line_number)
    if line_number == 1 then 'bottle' else 'bottles' end
  end
  
end

puts Bottle99.new.song