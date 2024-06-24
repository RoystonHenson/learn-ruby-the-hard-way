puts "Announcer: Let's play a game of 'Left? or Right?!' \nThe aim of the game is to reach the end by only guessing 'left' or 'right'. \nAre you up to the challenge?!"

choose = "\nChoose left or right!: "
you_lose = "\nToo bad! Try again!".upcase
you_win = "\nCongratulations! You made it to the end!".upcase

puts choose
choice = $stdin.gets.chomp

if choice == 'left'                    
  puts choose
  choice = $stdin.gets.chomp
    if choice == 'left'             
      puts you_lose
    else
      puts choose
      choice = $stdin.gets.chomp
        if choice == 'left'         
          puts choose
          choice = $stdin.gets.chomp    
            if choice == 'left'     
              puts choose
              choice = $stdin.gets.chomp
                if choice == 'left' 
                  puts you_lose
                else
                  puts choose
                  choice = $stdin.gets.chomp
                    if choice == 'left' 
                      puts choose
                      choice = $stdin.gets.chomp
                        if choice == 'left' 
                          puts you_lose  
                        else
                          puts choose
                          choice = $stdin.gets.chomp
                            if choice == 'left' 
                              puts you_lose  
                            else
                              puts choose
                              choice = $stdin.gets.chomp 
                                if choice == 'left'
                                  puts choose
                                  choice = $stdin.gets.chomp  
                                    if choice == 'left'  
                                      puts you_lose      
                                    else
                                      puts you_win
                                    end
                                else
                                  puts you_lose      
                                end
                            end
                        end
                    else
                      puts you_lose        
                    end
                end
            else
              puts you_lose        
            end
        else
          puts you_lose    
        end
    end
else
    puts you_lose
end