# encoding: UTF-8
require 'sinatra'
require 'json'

get '/' do
  "POST something to me…"
end

post '/' do
  @payload = JSON.parse(params[:payload])
  logger.info(parse_payload)
  "I got this stuff: <br />#{parse_payload}"
end

private
def parse_payload(payload=@payload)
  payload.each do |key, value|
    if value.is_array?
      parse_payload(value)
    else
      puts "[#{key}] => #{value}"
    end
  end
end
