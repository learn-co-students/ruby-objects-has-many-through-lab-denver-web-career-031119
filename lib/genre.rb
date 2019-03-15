class Genre

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
    Song.all.select{ |songs|
    songs.genre == self}
  end

  def artists
    Song.all.map{ |song|
    if song.genre == self
      song.artist
    end}
  end
end
