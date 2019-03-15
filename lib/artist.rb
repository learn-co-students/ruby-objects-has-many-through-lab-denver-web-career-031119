class Artist

  attr_reader :name, :song

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @song = song
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.map {|song| song.genre}
  end
end
