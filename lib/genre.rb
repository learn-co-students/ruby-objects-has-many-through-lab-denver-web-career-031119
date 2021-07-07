class Genre

  attr_reader :name

  GENRES =[]

  def initialize(name)
    @name = name
    GENRES << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def self.all
    GENRES
  end

  def artists
    songs.map{|song| song.artist}
  end

end
