require 'test_helper'

class PodrazdelsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get podrazdels_show_url
    assert_response :success
  end

end
