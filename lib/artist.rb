require 'pry'

class Artist

  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self #<Artist:0x00000000023bf0b8 @name="Jay-Z">
    #binding.pry
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |x|
      x.artist == self
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #binding.pry
  end

  def genres
    songs.map do |x|
      x.genre
    end
  end

end
