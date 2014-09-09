# encoding: UTF-8
require 'sinatra'
require 'json'
require 'pp'

get '/' do
  "POST something to me…"
end

post '/payload' do
  payload = JSON.parse(request.body.read)
  logger.info(pp payload)
end
