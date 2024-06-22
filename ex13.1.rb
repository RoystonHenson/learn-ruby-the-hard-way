user, date = ARGV

print "Hello #{user}, welcome to the library! Which book would you like to take out today? "
book = $stdin.gets.chomp 
print "OK, just wait a second while I find #{book}. Ok all good! #{book} recorded as taken out by #{user} on #{date}."