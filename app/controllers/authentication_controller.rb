class AuthenticationController < ApplicationController
  def callback
    auth_hash = request.env['omniauth.auth']
    credentials = auth_hash[:credentials]
    redirect_to "exp://192.168.1.12:19000?token=#{credentials[:token]}&secret=#{credentials[:secret]}"
  end
end
