class AuthenticationController < ApplicationController
  def callback
    auth_hash = request.env['omniauth.auth']
    puts request.env["omniauth.params"].to_yaml
    credentials = auth_hash[:credentials]
    redirect_to "#{request.env['omniauth.params']['callback']}?token=#{credentials[:token]}&secret=#{credentials[:secret]}"
  end
end
