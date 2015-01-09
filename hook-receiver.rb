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

post '/pull-request' do
  payload = JSON.parse(request.body.read)
  output = "\nWebhook triggered by '#{payload['action']}' action on PR\n"
  output << "Details:\n========\n"
  output << "PR: #{payload['pull_request']['title']} ##{payload['pull_request']['number']}\n"
  output << "Created at: #{payload['pull_request']['created_at']}\n"
  output << "Updated at: #{payload['pull_request']['updated_at']}\n"
  output << "Closed at: #{payload['pull_request']['closed_at']}\n"
  output << "Merge commit SHA: #{payload['pull_request']['merge_commit_sha']}\n"
  output << "Head SHA: #{payload['pull_request']['head']['sha']}\n"
  puts output
end
