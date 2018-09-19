require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count_hash = {}
  @@artist_count_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
    #binding.pry
  end

  def self.genre_count
    self.genres.each do |genre|
    @@genre_count_hash[genre] = @@genres.count(genre)
    end
    @@genre_count_hash
  end

  def self.artist_count
    self.artists.each do |artist|
    @@artist_count_hash[artist] = @@artists.count(artist)
    end
    @@artist_count_hash
  end

end

#binding.pry

#p "eof"
