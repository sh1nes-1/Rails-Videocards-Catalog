require "test_helper"

class Api::VideoCardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_video_cards_index_url
    assert_response :success
  end
end
