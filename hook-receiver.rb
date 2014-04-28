# encoding: UTF-8
require 'sinatra'
require 'json'
require 'pp'

get '/' do
  "POST something to me…"
end

post '/' do
  payload = JSON.parse(params[:payload])
  logger.info(pp payload)
end
