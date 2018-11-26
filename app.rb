require('sinatra')
require('sinatra/reloader')
require('./lib/triangle.rb')
require('pry')

get ('/') do
  erb(:input)
end

get ('/output') do
  @side1 = params['side1'].to_i
  @side2 = params['side2'].to_i
  @side3 = params['side3'].to_i
  triangle = Triangle.new(@side1, @side2, @side3)
  @check = triangle.check()
  erb(:output)
end
