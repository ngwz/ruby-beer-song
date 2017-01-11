class BeerSong
        def initialize
        end

        def verse (number_of_line)
                @line_number = number_of_line
                #@bottle_noun = "bottles"
                if @line_number > 1
                        then start_verse="#{@line_number} bottles of beer on the wall, #{@line_number} bottles of beer.\n"
                else
                        if @line_number == 1
                                then start_verse="#{@line_number} bottle of beer on the wall, #{@line_number} bottle of beer.\n"
                        else
                                start_verse="No more bottles of beer on the wall, no more bottles of beer.\n"
                        end 
                end
                if @line_number > 2
                        then end_verse="Take one down and pass it around, #{@line_number-1} bottles of beer on the wall.\n"
                else 
                        if @line_number == 2
                                then end_verse="Take one down and pass it around, #{@line_number-1} bottle of beer on the wall.\n"
                        else
                                if @line_number == 1
                                        then end_verse="Take it down and pass it around, no more bottles of beer on the wall.\n"
                                else
                                        end_verse="Go to the store and buy some more, 99 bottles of beer on the wall.\n"
                                end
                        end
                end
                verse=start_verse+end_verse
        end

end
