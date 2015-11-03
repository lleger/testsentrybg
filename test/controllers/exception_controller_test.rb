require 'test_helper'

class ExceptionControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
