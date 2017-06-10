require 'test_helper'

class RestoransControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restorans_index_url
    assert_response :success
  end

  test "should get show" do
    get restorans_show_url
    assert_response :success
  end

end
