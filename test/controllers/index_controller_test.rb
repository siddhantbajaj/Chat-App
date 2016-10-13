require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get wall" do
    get :wall
    assert_response :success
  end

  test "should get signIn" do
    get :signIn
    assert_response :success
  end

end
