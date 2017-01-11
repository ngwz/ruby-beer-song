class BeerSong
  def verse(line_number)
    if line_number > 0 then
      ['%s %s of beer on the wall, %s %s of beer.' % ([format_number(line_number), pluralize_bottle(line_number)] * 2),
      'Take %s down and pass it around, %s %s of beer on the wall.' % [one_it(line_number), format_number(line_number - 1), pluralize_bottle(line_number - 1)]].join("\n")+"\n"
    else
      ['No more bottles of beer on the wall, no more bottles of beer.',
     'Go to the store and buy some more, 99 bottles of beer on the wall.'].join("\n")+"\n"
    end
  end
  
  def verses(first_number, last_number)
    first_number.downto(last_number).map do | line_number |
      verse(line_number)
    end.join("\n")
  end
  
  def format_number(line_number)
    if line_number == 0 then 'no more' else line_number end
  end
  
  def lyrics
    verses(99, 0)
  end
  
  def pluralize_bottle(line_number)
    if line_number == 1 then 'bottle' else 'bottles' end
  end
  
  def one_it(line_number)
    if line_number == 1 then 'it' else 'one' end
  end
end

class BookKeeping
  VERSION = 2
end