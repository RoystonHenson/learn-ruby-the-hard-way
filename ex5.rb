name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height_in_inches = 74 # inches
height_in_cm = height_in_inches * 2.54
weight_in_lbs = 180 # lbs
weight_in_kg = 180 * 0.453592
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

print "  Let's talk about #{name}.
  He's #{height_in_inches} inches(or #{height_in_cm}cm) tall.
  He's #{weight_in_lbs} pounds(or #{weight_in_kg.round(2)}kg) heavy.
  Actually that's not too heavy.
  He's got #{eyes.downcase} eyes and #{hair.downcase} hair.
  His teeth are usually #{teeth.downcase} depending on the coffee.
"
  # this line is tricky, try to get it exactly right
  puts "  If I add #{age}, #{height_in_inches}, and #{weight_in_lbs} I get #{age + height_in_inches + weight_in_lbs}."

