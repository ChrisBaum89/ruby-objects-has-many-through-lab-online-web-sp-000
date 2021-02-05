require 'pry'

class Artist

  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
  end


end
