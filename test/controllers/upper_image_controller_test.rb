require 'test_helper'

class UpperImageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get upper_image_index_url
    assert_response :success
  end

  test "should get new" do
    get upper_image_new_url
    assert_response :success
  end

  test "should get show" do
    get upper_image_show_url
    assert_response :success
  end

end
