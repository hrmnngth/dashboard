require 'test_helper'

class DatabaseCleanControllerTest < ActionController::TestCase
  test "should get delete" do
    get :delete
    assert_response :success
  end

end
