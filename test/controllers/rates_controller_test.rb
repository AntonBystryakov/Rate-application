require 'test_helper'

class RatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get "/"
    assert_response :success
  end
  test "should get edit" do
    get edit_rate_path(2)
    assert_response :success
  end

end
