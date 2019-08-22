require 'oauth'

class ApiController
  def request_token
    callback_url = "https://quiqly.herokuapp.com/api/callback"
    oauth_consumer = OAuth::Consumer.new("wBNkP61kNAUANd80t5raZv95V", "ttruIGqsiA849B2Z9KNwv3pk76SlUGqXMciEFdYRCB2X4YMouK", :site => "https://api.twitter.com")
    
    request_token = oauth_consumer.get_request_token(:oauth_callback => callback_url)

    puts(request_token)
  end
end
