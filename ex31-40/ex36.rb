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
                    puts "\n\t*You attempt to open the door but with difficulty. You try again\n\t and it falls off its hinges revealing a pasageway. You move through\n\t cautiously and find yourself in another narrow room."
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
    puts "\n\t\rSpanning the room are nine large tiles arranged three by three. They each\n\t have one letter on them, reading from left to right: L, F, R."
    puts "\t Beyond the tiles you can see another door.*"
    
    while true
        puts "\nWhich tile do you step on?: 'L' 'F' or 'R'?"
        get_choice
        if @choice == 'l'
            puts "\n\t*You step onto the tile 'L'. Nothing happens and\n\t you let out a sigh of relief.*"
            while true
                puts "\nFrom here you can step onto either the next 'L' or 'F' tile. Which do you pick?"
                get_choice
                if @choice == 'f'
                    puts "\n\t*You scrunch your face as you slowly step onto the tile. Nothing happens.*"
                    while true
                        puts "\nOnly one set of tiles remains! From here you can step onto 'L', 'F' or 'R'.\nWhat do you choose?"
                        get_choice
                        if @choice == 'r'
                            puts "\n\t*With a huge sign of relief, you step off the tiles. You made it!\n\t You open the door and enter the next room."
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
    puts "\n\r\t Before you is a combination of axes swinging from left-to-right and \n\t right-to-left!"
    puts "\t After taking some time to analyse the movement of the axes you think \n\t you've figured out howto get through.*"
    puts "\nYou can go slowly, average-speed or quickly. Which do you choose?"
    get_choice
    if @choice.include?('average')
        puts "\n\t*Whew, that was close! But you've made it.! You head through\n\t into the next room"
        ravine
    else
        you_lose('Wow, that was messy.')
    end
end

def ravine
    puts "\n\r\t There is a ravine in front of you with a rope and plank\n\t bridge crossing it.*"
    while true
        puts "\nDo you cross the bridge or look around first?"
        get_choice
        if @choice.include?('cross') || @choice.include?('bridge')
            you_lose("You make it halfway across the bridge before one of main ropes\n\t      give way, sending you plumetting into the ravine.")
        elsif @choice.include?('look')
            while true
                puts "\n\t*After looking around you find a spring board seemingly set up\n\t to propel someone over the ravine."
                puts "\t You also find some dodgy-looking vines.*"
                puts "\nDo you try the board or the vines?"
                get_choice
                if @choice.include?('spring') || @choice.include?('board')
                    you_lose("You take a run up and jump onto the board, sending\n\t      yourself high up into the air and then straight into the ravine.\n\t      Why did you think that would work? ")        
                elsif @choice.include?('vine')
                    puts "\n\t*Surprisingly, the vines are actually pretty strong and \n\t carry you across the ravine easily.*"
                    puts "\n\t \r*You leave this room through another door.*"
                    final_room_intro
                else
                    puts "\n You'll have to pick one unless you want to be stuck here forever."
                end
            end
        else
            you_lose("Afraid to cross the ravine, you end up here until your last days.")
        end
    end
end

def final_room_intro
    puts "\n\t*You find yourself in a small room with a large stone door.\n\t There are small blocks on the door with letters"
    puts "\t that read 'MENOP SSEEA'(note there is one space). It seems like you are\n\t able to push the buttons.*"
    final_room_puzzle
end

def final_room_puzzle
    @answer = "open sesame"
    @user_input = []
    while true
        puts "\nWhich letter do you press?"
        get_choice
        @user_input << @choice
        if @user_input[0] == 'o' || 'open sesame'
            puts "\n*The stones light up and hum.*"
            if (@answer =~ /#{@user_input.join}/) == 0 && @user_input.join != @answer
                puts "\nWhich letter do you press next?"
            elsif @answer == @user_input.join
                puts "\nThere is a loud rumble as the door opens!"
                you_win
            else
                puts "\n*The stones dim and go silent. You must start again.*"
                final_room_puzzle
            end
        else
            puts "\n*Nothing happens. Try again.*"
            final_room_puzzle
        end
    end
end

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
    puts"""\n\tWhat a legend! RAHHH!    __
                                / (|
                               (   :
                           _____\\   \\  __
                          (______)   `|
                         (______)|    |
                          (______).___|
                           (_____)___.|__
    """
    exit(0)
end

starting_room
 