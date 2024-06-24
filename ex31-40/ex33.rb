# i = 0
# numbers = []
# number_to_break = 6

def fill_numbers
  i = 0
  numbers = []
  number_to_break = 6  
  while i < number_to_break
    puts "At the top i is #{i}"
    numbers.push(i)
    i += 1
    puts 'Numbers now: ', numbers
    puts "At the bottom i is #{i}"
  end
end

puts 'The numbers: '

fill_numbers
#numbers.each { |num| puts num }