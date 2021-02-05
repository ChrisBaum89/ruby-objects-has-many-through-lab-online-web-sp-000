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
      x.artist == self
    end
  end

  def genres
    songs.map do |x|
      x.genre
    end
  end

  def new_song(name, genre)
    new_song = Song.new(name, self.name, genre)
    #binding.pry
  end


end
