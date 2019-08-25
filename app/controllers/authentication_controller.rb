class AuthenticationController < ApplicationController
  def callback
    puts request.env['omniauth.auth']
    redirect_to "exp://192.168.1.12:19000"
  end
end
