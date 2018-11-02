require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get showmemytax" do
    get home_showmemytax_url
    assert_response :success
  end

end
