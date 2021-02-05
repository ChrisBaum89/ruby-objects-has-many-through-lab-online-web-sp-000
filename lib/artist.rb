require 'pry'

class Artist

  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |x|
      if x.artist == self
        x.name
      end
    end
  end

  def new_song(name, genre)
    newsong = Song.new(name, self.name, genre)
    #binding.pry
    #binding.pry
  end

  def genres

  end


end
