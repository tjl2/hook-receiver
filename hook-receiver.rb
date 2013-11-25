require 'sinatra'
require 'json'

get '/' do
  "POST something to me…"
end

post '/' do
  payload = JSON.parse(params[:payload])
  "I got this stuff: #{payload.inspect}"
end
