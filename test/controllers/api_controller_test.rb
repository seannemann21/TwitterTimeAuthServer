require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get request_token" do
    get api_request_token_url
    assert_response :success
  end

end
