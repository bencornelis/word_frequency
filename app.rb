require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  @sentence = params.fetch('sentence')
  @frequency = @sentence.word_frequency(@word)

  if @word.==('')
    erb(:error)
  else
    erb(:results)
  end
end
