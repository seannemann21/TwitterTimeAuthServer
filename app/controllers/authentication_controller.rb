class AuthenticationController < ApplicationController
  def callback
    redirect_to "exp://192.168.1.12:19000"
  end
end
