def prompt
    print "->> "
end

def get_choice
    prompt
    @choice = $stdin.gets.chomp.downcase
end

def you_lose(event)
    puts "\n\t<***> #{event}\n\t      Ouch! Game over... <***>"
    exit(0)
end

def you_win
    puts ""
    puts"""\n\tWhat a legend! RAHHH!    __
                                / (|
                               (   :
                           _____\\   \\  __
                          (______)   `|
                         (______)|    |
                          (______).___|
                           (_____)___.|__
"""
    #exit(0)
end

def starting_room
    puts "Announcer:\n\t\"Welome to the challenge rooms!\n\t Your task is to escape here alive!\n\t Good luck!\""
    puts "\n\tBefore you are two doors;\n\ta pristine-looking door on the left\n\tand a shoddy one on the right."

    left_door_closed = true
    while true
        puts "\nDo you choose to approach the door on the left or the right?"
        get_choice
        if @choice.include?('left') && left_door_closed == true
            puts "\n\t*You open the pristine door only to find yourself staring at a wall.\n\t There is no way through.*"
            left_door_closed = false
        elsif @choice.include?('left') && left_door_closed == false
            puts "\n\tYou have already opened this door silly! Don't you remember?"    
        elsif @choice.include?('right')
            while true
                puts "\n\t*You approach the shoddy door on the right.*\n\nAre you sure you want to open it?"
                get_choice
                if @choice.include?('right') || @choice.include?('yes')
                    puts "\n\t*You attempt to open the door but with difficulty. You try again\n\t and it falls off its hinges revealing a pasageway. You move through\n\t cautiously and find yourself in another narrow room.*"
                    trap_door_room
                else
                    you_lose('You wander around the room aimlessly until you pass out.')
                end
            end
        else    
            puts "\n\t*You stumble around the room for a while but don't find anything.\n\t Frustrated, you look back at the two doors.*"    
        end
    end
end

def trap_door_room
    puts "\n\t*Spanning the room are nine large tiles arranged three by three. They each\n\t have one letter on them, reading from left to right: L, F, R."
    puts "\t Beyond the tiles you can see another door."
    
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
                            puts "\n\t*With a huge sign of relief, you step off the tiles. You made it!\n\t You open the door and enter the next room.*"
                            axe_room
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

def axe_room
    puts "\n\t*Before you is a combination of axes swinging from left-to-right and \n\t right-to-left!"
    puts "\t After taking some time to analyse the movement of the axes you think \n\t you've figured out howto get through.*"
    puts "\nYou can go slowly, average-speed or quickly. Which do you choose?"
    get_choice
    if @choice.include?('average')
        puts "\n\t*Whew, that was close! But you've made it.! You head through\n\t into the next room*"
        you_win
    else
        you_lose('Wow, that was messy.')
    end
end

# ravine

# final room

# delete to run code
#starting_room
axe_room

 