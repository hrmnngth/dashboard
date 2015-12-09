require 'test_helper'

class Chapter2ControllerTest < ActionController::TestCase
  test "should get myresponse" do
    get :myresponse
    assert_response :success
  end

end
