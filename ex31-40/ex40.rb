class Song

    def initialize(lyrics)
        @lyrics = lyrics
    end

    def sing_me_a_song
        @lyrics.each { |line| puts line }
    end
end

divider = '-' * 10

happy_bday = ['Happy birthday to you',
              "I don't want to get sued",
              "So I'll stop right there"]
happy_bday_song = Song.new(happy_bday)

bulls_on_parade = ['They rally around tha family',
                   'With pockets full of shells']
bulls_on_parade_song = Song.new(bulls_on_parade)

star_trek =['Space, the final frontier',
            'These are the voyages of the Starship Enterprise',
            'Its five-year mission: to explore strange new worlds', 
            'To seek out new life and new civilizations', 
            'To boldly go where no man has gone before',
            'Many say exploration is part of our destiny', 
            "But it’s actually our duty to future generations",
            'And their quest to ensure the survival of the human species']
star_trek_song = Song.new(star_trek)

happy_bday_song.sing_me_a_song
puts divider
bulls_on_parade_song.sing_me_a_song
puts divider
star_trek_song.sing_me_a_song