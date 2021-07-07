require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  SONGS = []

  def initialize(name="", artist="", genre="")
    @name = name
    @artist = artist
    @genre = genre
    SONGS << self
  end

  def self.all
    SONGS
  end

  def artist
    @artist
  end

end
