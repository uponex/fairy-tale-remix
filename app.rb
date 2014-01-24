require 'sinatra'
require 'json'

genres = JSON.load(File.read('data/genres.json'))
tales  = JSON.load(File.read('data/fairy-tales.json'))

get '/' do
  @genre = genres[rand(genres.length)]
  tale_index = rand(tales.keys.length)

  @tale_title = tales.keys[tale_index]
  @tale_url   = tales[@tale_title]

  erb :index
end
