require 'pry'
class Artist

  attr_accessor :name, :artist, :genre

  ARTISTS = []

  def initialize(name)
    @name = name
    ARTISTS << self
  end


  def self.all
    ARTISTS
  end

  def new_song(name, genre)
    # given a name and genre, creates a new song associated with that artist
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def genres
    songs.map {|song| song.genre}
    #songs.map(&:genre)
    #binding.pry
  end





end
