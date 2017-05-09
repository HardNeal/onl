require 'test_helper'

class BazarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bazars_index_url
    assert_response :success
  end

  test "should get show" do
    get bazars_show_url
    assert_response :success
  end

end
