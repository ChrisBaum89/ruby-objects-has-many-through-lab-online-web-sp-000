class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << @name
  end

  def self.all
    @@all
  end

  def songs
    self.all.select do |x|
      x.artist == self
    end
  end
end
