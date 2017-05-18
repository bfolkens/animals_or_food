#!/usr/bin/env ruby

require 'rubygems'
require 'cloudsight'
require 'csv'

Cloudsight.oauth_options = {
  consumer_key: ENV['CLOUDSIGHT_API_KEY'],
  consumer_secret: ENV['CLOUDSIGHT_API_SECRET']
}

requests = []
$ARGV.shuffle.each do |filename|
  STDERR.puts "Sending '#{filename}'"

  requestData = Cloudsight::Request.send(locale: 'en', file: File.open(filename))
  requests << { filename: filename, token: requestData['token'] }
end

CSV($stdout) do |csv|
  requests.each do |request|
    Cloudsight::Response.retrieve(request[:token]) do |responseData|
      STDERR.puts "Received '#{request[:filename]}'"

      csv << [request[:token], request[:filename], responseData['name']]
    end
  end
end
