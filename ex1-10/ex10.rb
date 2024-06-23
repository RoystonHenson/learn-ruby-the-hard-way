tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
  I'll do a list:
                  * Cat food
                  * Fishies
                  * Catnip
                  * Grass
"""

puts """#{tabby_cat}
  #{persian_cat}
  #{backslash_cat}
  #{fat_cat}
"""
puts """
    I'm a \\string.
    I'm a \'string.
    I'm a \"string.
    I'm a \astring.
    I'm a \bstring.
    I'm a \fstring.
    I'm a \nstring.
    I'm a \rstring.
    I'm a \tstring.
    I'm a \vstring.
"""