require 'test_helper'

class ComparatorControllerTest < ActionController::TestCase
  test "should get comparate" do
    get :comparate
    assert_response :success
  end

end
