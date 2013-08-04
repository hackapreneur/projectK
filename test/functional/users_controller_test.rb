require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get profilelink" do
    get :profilelink
    assert_response :success
  end

end
