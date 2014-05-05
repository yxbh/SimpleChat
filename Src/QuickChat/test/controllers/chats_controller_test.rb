require 'test_helper'

class ChatsControllerTest < ActionController::TestCase
  test "should get room" do
    get :room
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
