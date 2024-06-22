print "Hi there! Give me some money and I'll show you a magic trick! Type in how much you give me: "
amount = gets.chomp.to_f
money_back = amount * 0.1
print "Hey presto! Here is #{money_back.round(2)} back! The rest of it I made dissapear. Impressive right?"