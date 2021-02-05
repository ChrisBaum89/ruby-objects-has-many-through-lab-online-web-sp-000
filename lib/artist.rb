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
    vsongs = Song.all.select do |x|
      x.artist == self
    end
    binding.pry
  end

  def genres
    songs.map do |x|
      x.genre
    end
  end

  def new_song(name, genre)
    genrename = genre.name
    new_song = Song.new(name, self.name, genrename)
    relaysongs = self.songs
    binding.pry
  end


end
