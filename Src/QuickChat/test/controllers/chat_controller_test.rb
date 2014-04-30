require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get join" do
    get :join
    assert_response :success
  end

  test "should get send" do
    get :send
    assert_response :success
  end

  test "should get leave" do
    get :leave
    assert_response :success
  end

end
