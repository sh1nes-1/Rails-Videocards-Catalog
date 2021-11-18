require "test_helper"

class VideoCardProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get video_card_products_index_url
    assert_response :success
  end
end
