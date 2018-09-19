require 'pry'

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count_hash = {}
  @@artist_count_hash = {}

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq   #uniq gets rid of duplicates
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    self.genres.each do |genre|
      @@genre_count_hash[genre] = @@genres.count(genre)   #creates new key value pair in hash where .count(genre) counts the amount of times that genre appears
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

# binding.pry
