require 'uri'

class WelcomeController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "aVCresL99gsHG6McK7nNvOIFt"
      config.consumer_secret = "Ck4tm8qoAYp0zno66vrfKpytnmJlt3e7MhefLljMFSLg4oYXp9"
      config.access_token = "324123882-28coMhHnj3hE7KM0TVaGDFciAV9dyHwq9DXeyXif"
      config.access_token_secret = "M6IdCuBipF9GxEyLoqFZgp7rzZehynbwZSSFd4zNuJp0c"
    end

    @garry = client.get('https://api.twitter.com/1.1/users/show.json?screen_name=gioiacobucci')
    @tokyo = client.get('https://api.twitter.com/1.1/users/show.json?screen_name=Tokyo_Art_Days')
    @alex = client.get('https://api.twitter.com/1.1/users/show.json?screen_name=alexmoskowitz')
    @james = client.get('https://api.twitter.com/1.1/users/show.json?screen_name=jamesrainmorris')
  end
end
