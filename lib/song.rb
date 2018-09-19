class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    rtn_obj = {}
    @@genres.each {
      |g|
      rtn_obj[g] ||= @@genres.count(g)
    }
    rtn_obj
  end

  def self.artist_count
    rtn_obj = {}
    @@artists.each {
      |a|
      rtn_obj[a] ||= @@artists.count(a)
    }
    rtn_obj
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist # if !@@artists.include?(artist)
    @@genres << genre # if !@@genres.include?(genre)
  end
end
