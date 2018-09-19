genres = ['rap', 'pop', 'rap' ,'country']

def genre_count (genres)
  count = {}
  genres.each do |genre|
    count["#{genre}"] = 0
    count["#{genre}"] += genre.count
  end
  count
end

p genre_count(genres)
