require('sinatra')
require('sinatra/reloader')
require('pry')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")

  @width = params.fetch("width")
  if @length == @width
    @rectangle = "This is a square."
  else
    @rectangle = "This is not a square"
  end
erb(:output)
end
