require 'test_helper'

class RandomControllerTest < ActionController::TestCase
  test "should get spinner" do
    get :spinner
    assert_response :success
  end

end
