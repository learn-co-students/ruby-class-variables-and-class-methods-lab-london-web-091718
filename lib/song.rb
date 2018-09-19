
class Song

  @@artists = Array.new
  @@genres = Array.new
  @@genre_count = Hash.new(0)
  @@artist_count = Hash.new(0)
  @@count = 0

def initialize(name="", artist="", genre="")
  @genre = genre
  @name = name
  @artist = artist
  @@count = @@count+1

  @@artists<<@artist
  @@genres<<@genre

  if @@genre_count[genre]
    @@genre_count[genre] += 1
  else
    @@genre_count[genre]=1
  end

  if  @@artist_count[artist]
    @@artist_count[artist] +=1
  else
    @@artist_count[artist]=1
  end

end

def self.count
  @@count
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  @@genre_count
end

def self.artist_count
  @@artist_count
end

def self.artists
  @@artists.uniq
end


attr_accessor :artist, :name, :genre, :genre_count, :count ,:artists

end
