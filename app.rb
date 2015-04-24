require('sinatra')
require('sinatra/reloader')
require('./lib/word_frequency.rb')
require('./lib/style_word.rb')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @word = params.fetch('word')
  sentence = params.fetch('sentence')
  @frequency = sentence.word_frequency(@word)
  @sentence = params.fetch('sentence').style_word(@word, 'userentry')

  if @word.==('') || @sentence.==('')
    erb(:error)
  else
    erb(:results)
  end
end
