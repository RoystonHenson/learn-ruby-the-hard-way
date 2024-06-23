wrap_type, side, drink = ARGV

print 'Welcome to our kebab shop! What meat do you want? '
ARGV << $stdin.gets.chomp
print 'And what salad do you want? '
ARGV << $stdin.gets.chomp
print 'What sauce would you like? '
ARGV << $stdin.gets.chomp

print "Ok, coming right up! One #{ARGV[3]} #{wrap_type} kebab with #{ARGV[4]} and #{ARGV[5]} sauce. And here are your #{side} and #{drink}."