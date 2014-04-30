require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get channel" do
    get :channel
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
