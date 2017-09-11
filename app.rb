require('sinatra')
require('sinatra/reloader')
# require('pry')
also_reload('.lib/**/*.rb')
require('./lib/rectangle')

get('/') do
  erb(:input)
end

get('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  # if @length == @width
  #   @rectangle = "This is a square."
  # else
  #   @rectangle = "This is not a square"
  # end
    rectangle = Rectangle.new(@length, @width)
    if rectangle.square?
      @string_to_display = "This is a square."
    else
      @string_to_display = "This is not a square."
    end

erb(:output)
end
