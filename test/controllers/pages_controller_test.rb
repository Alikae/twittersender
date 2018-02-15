require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get tweetform" do
    get pages_tweetform_url
    assert_response :success
  end

end
