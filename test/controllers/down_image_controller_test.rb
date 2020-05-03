require 'test_helper'

class DownImageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get down_image_index_url
    assert_response :success
  end

  test "should get new" do
    get down_image_new_url
    assert_response :success
  end

  test "should get show" do
    get down_image_show_url
    assert_response :success
  end

end
