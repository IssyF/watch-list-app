# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting existing movies..."
Movie.destroy_all


# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
# Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
# Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
# Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

require 'json'
require 'open-uri'

page_num = 1
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=7a9c9254c4d36bc5c6d029dbef80dfb6&language=en-US&page=#{page_num}"
movies_serialized = URI.open(url).read
movies_json = JSON.parse(movies_serialized)
index = 0
# @titles = movies_json['results'][0]["title"]
20.times do
  puts "creating new movie number #{index + 1} from page #{page_num}..."
  movie_title = movies_json['results'][index]['title']
  movie_overview = movies_json['results'][index]['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movies_json['results'][index]['poster_path']}"
  movie_rating = movies_json['results'][index]['vote_average']
  Movie.create!(title: movie_title, overview: movie_overview, poster_url: movie_poster, rating: movie_rating)
  index += 1
end

page_num = 2
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=7a9c9254c4d36bc5c6d029dbef80dfb6&language=en-US&page=#{page_num}"
movies_serialized = URI.open(url).read
movies_json = JSON.parse(movies_serialized)
index = 0
# @titles = movies_json['results'][0]["title"]
20.times do
  puts "creating new movie number #{index + 1} from page #{page_num}..."
  movie_title = movies_json['results'][index]['title']
  movie_overview = movies_json['results'][index]['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movies_json['results'][index]['poster_path']}"
  movie_rating = movies_json['results'][index]['vote_average']
  Movie.create!(title: movie_title, overview: movie_overview, poster_url: movie_poster, rating: movie_rating)
  index += 1
end

page_num = 3
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=7a9c9254c4d36bc5c6d029dbef80dfb6&language=en-US&page=#{page_num}"
movies_serialized = URI.open(url).read
movies_json = JSON.parse(movies_serialized)
index = 0
# @titles = movies_json['results'][0]["title"]
20.times do
  puts "creating new movie number #{index + 1} from page #{page_num}..."
  movie_title = movies_json['results'][index]['title']
  movie_overview = movies_json['results'][index]['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movies_json['results'][index]['poster_path']}"
  movie_rating = movies_json['results'][index]['vote_average']
  Movie.create!(title: movie_title, overview: movie_overview, poster_url: movie_poster, rating: movie_rating)
  index += 1
end

page_num = 4
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=7a9c9254c4d36bc5c6d029dbef80dfb6&language=en-US&page=#{page_num}"
movies_serialized = URI.open(url).read
movies_json = JSON.parse(movies_serialized)
index = 0
# @titles = movies_json['results'][0]["title"]
20.times do
  puts "creating new movie number #{index + 1} from page #{page_num}..."
  movie_title = movies_json['results'][index]['title']
  movie_overview = movies_json['results'][index]['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movies_json['results'][index]['poster_path']}"
  movie_rating = movies_json['results'][index]['vote_average']
  Movie.create!(title: movie_title, overview: movie_overview, poster_url: movie_poster, rating: movie_rating)
  index += 1
end

page_num = 5
url = "https://api.themoviedb.org/3/movie/top_rated?api_key=7a9c9254c4d36bc5c6d029dbef80dfb6&language=en-US&page=#{page_num}"
movies_serialized = URI.open(url).read
movies_json = JSON.parse(movies_serialized)
index = 0
# @titles = movies_json['results'][0]["title"]
20.times do
  puts "creating new movie number #{index + 1} from page #{page_num}..."
  movie_title = movies_json['results'][index]['title']
  movie_overview = movies_json['results'][index]['overview']
  movie_poster = "https://image.tmdb.org/t/p/w500#{movies_json['results'][index]['poster_path']}"
  movie_rating = movies_json['results'][index]['vote_average']
  Movie.create!(title: movie_title, overview: movie_overview, poster_url: movie_poster, rating: movie_rating)
  index += 1
end

puts "All movies seeded :)"
