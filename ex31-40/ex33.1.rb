i = 0
numbers = []
numbers2 = []

def fill_to_6(array)
    for num in 0..6 do
        array << num
    end
end

def also_fill_to_6(array, starting_point)
    array << starting_point
    array.each do |num|
        if array.length < 7
            num += 1
            array << num
            
        end
    end
end

fill_to_6(numbers)
puts 'Filling numbers to 6:'
puts numbers

also_fill_to_6(numbers2, i)
puts 'Also filling numbers2 to 6:'
puts numbers2