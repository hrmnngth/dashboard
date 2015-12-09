require 'test_helper'

class Chapter3ControllerTest < ActionController::TestCase
  test "should get get_time" do
    get :get_time
    assert_response :success
  end

  test "should get repeat" do
    get :repeat
    assert_response :success
  end

  test "should get reverse" do
    get :reverse
    assert_response :success
  end

  test "should get fire" do
    get :fire
    assert_response :success
  end

end
