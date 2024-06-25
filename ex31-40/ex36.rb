def prompt; print "->> "; end
# starting room
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
                    puts "\n\t*You attempt to open the door but with difficulty. You try again\n\t and it falls off its hinges revealing a pasageway. You move through\n\t cautiously and find yourself in another room.*"
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

starting_room

# trap door room

# swining axe room

# ravine

# final room