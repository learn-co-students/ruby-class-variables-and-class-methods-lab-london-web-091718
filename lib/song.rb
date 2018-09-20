require 'pry'

class Song
  attr_accessor :genre, :artist, :name

  @@artists = []
  @@genres = []
  @@count = 0

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
  end

  def self.genre_count
    g_c = Hash.new(0)
    @@genres.each { |g| g_c[g] += 1 }
    return g_c
  end

  def self.artist_count
    a_c = Hash.new(0)
    @@artists.each { |a| a_c[a] += 1 }
    return a_c
  end


end

binding.pry
p 'end'
