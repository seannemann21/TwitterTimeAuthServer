require 'test_helper'

class AuthenticationControllerTest < ActionDispatch::IntegrationTest
  test "should get callback" do
    get authentication_callback_url
    assert_response :success
  end

end
