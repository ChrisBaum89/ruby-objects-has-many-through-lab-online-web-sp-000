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
    songsv = Song.all.select do |x|
      x.artist == self
    end
  end

  def new_song(name, genre)
    newsong = Song.new(name, self.name, genre.name)
    binding.pry
  end

end
