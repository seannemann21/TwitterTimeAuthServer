require 'twitter'

class TwitterController < ApplicationController
  def my_timeline
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "wBNkP61kNAUANd80t5raZv95V"
      config.consumer_secret     = "ttruIGqsiA849B2Z9KNwv3pk76SlUGqXMciEFdYRCB2X4YMouK"
      config.access_token        = params[:token]
      config.access_token_secret = params[:secret]
    end

    puts "\n\n\n\n\n"
    puts "configuration should be below"
    puts config.consumer_key
    puts config.consumer_secret
    puts config.access_token
    puts config.access_token_secret
    puts "\n\n\n\n\n"
    home_timeline = client.home_timeline
    puts home_timeline
    render :json => home_timeline
  end
end
