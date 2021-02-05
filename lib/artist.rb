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

  def songs
    vtest = self.all.select do |x|
      x.artist == self
    end

  end
end
