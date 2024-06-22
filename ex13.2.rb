wrap_type, side, drink = ARGV

print 'Welcome to our kebab shop! What meat do you want? '
meat = $stdin.gets.chomp
print 'And what salad do you want? '
salad = $stdin.gets.chomp
print 'What sauce would you like? '
sauce = $stdin.gets.chomp

print "Ok, coming right up! One #{meat} #{wrap_type} kebab with #{salad} and #{sauce} sauce. And here are your #{side} and #{drink}."