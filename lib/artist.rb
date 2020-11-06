require "pry"

class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        
        new_song = Song.new(name, self, genre)
        # binding.pry
        
    end

    def songs
        
        Song.all.select {|song| song.artist == self}
    end

    def genres
        # binding.pry
        songs.collect do |song|
            # binding.pry
            song.genre
        end
            
        
    end
end