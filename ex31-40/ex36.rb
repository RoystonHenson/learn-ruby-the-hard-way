def prompt; print "->> "; end

def you_lose(event)
    puts "\n\t<***> #{event}\n\t      Ouch! Game over... <***>"
    exit(0)
end

=begin
def starting_room
    puts "Announcer:\n\t\"Welome to the challenge rooms!\n\t Your task is to escape here alive!\n\t Good luck!\""
    puts "\n\tBefore you are two doors;\n\ta pristine-looking door on the left\n\tand a shoddy one on the right."

    left_door_closed = true
    while true
        puts "\nDo you choose to approach the door on the left or the right?"
        prompt
        choice = $stdin.gets.chomp
     
        if choice.include?('left') && left_door_closed == true
            puts "\n\t*You open the pristine door only to find yourself staring at a wall.\n\t There is no way through.*"
            left_door_closed = false
        elsif choice.include?('left') && left_door_closed == false
            puts "\n\tYou have already opened this door! Don't you remember?"    
        elsif choice.include?('right')
            while true
                puts "\n\t*You approach the shoddy door on the right.*\n\nAre you sure you want to open it?"
                choice = $stdin.gets.chomp
                    
                if choice.include?('right') || choice.include?('yes')
                    puts "\n\t*You attempt to open the door but with difficulty. You try again\n\t and it falls off its hinges revealing a pasageway. You move through\n\t cautiously and find yourself in another narrow room.*"
                    trap_door_room
                else
                    puts "\n\t*You wander around the room aimlessly until you pass out*"  # change later to use you_lose
                    exit(0)
                end
            end
        else    
            puts "\n\t*You stumble around the room for a while but don't find anything.\n\t Frustrated, you look back at the two doors.*"    
        end
    end
end
=end
def trap_door_room
    puts "\n\tSpanning the room are nine large tiles arranged three by three. They each\n\thave one letter on them, reading from left to right: L, F, R."
    puts "\tBeyond the tiles you can see another door."
    
    while true
        puts "\nWhich tile do you step on?: 'L' 'F' or 'R'?"
        get_choice
        if @choice == 'l'
            puts "\n\t*You step onto the tile 'L'. Nothing happens and\n\t you let out a sigh of relief."
            while true
                puts "\nFrom here you can step onto either the next 'L' or 'F' tile. Which do you pick?"
                get_choice
                if @choice == 'f'
                    puts "\n\t*You scrunch your face as you slowly step onto the tile. Nothing happens.*"
                    while true
                        puts "\nOnly one set of tiles remains! From here you can step onto 'L', 'F' or 'R'.\nWhat do you choose?"
                        get_choice
                        if @choice == 'r'
                            puts 'you made it!'
                            exit(0)
                        else
                            you_lose("The tile explodes sending you flying into the air and back\n\t      down into the gaping maw below!")
                        end
                    end
                else
                    you_lose("Nothing happens, then suddenly the tile shatters, sending you down\n\t      into the abyss!")
                end
            end
        else
            you_lose("The tile crumbles as you step onto it and you fall into a deep hole!")
        end
    end
end

def get_choice
    prompt
    @choice = $stdin.gets.chomp.downcase
end

# trap door room

# swining axe room

# ravine

# final room

# delete to run code
#starting_room
trap_door_room