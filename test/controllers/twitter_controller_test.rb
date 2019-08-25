require 'test_helper'

class TwitterControllerTest < ActionDispatch::IntegrationTest
  test "should get my_timeline" do
    get twitter_my_timeline_url
    assert_response :success
  end

end
