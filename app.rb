require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @sentence = params.fetch('sentence')
  @frequency = @sentence.word_frequency(@word)
  erb(:results)
end
