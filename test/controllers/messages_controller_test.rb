require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  setup do
    @message = messages(:one)
  end

  test "Should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "Should get list" do
    get :list
    assert_response :success
  end

  test "Should get new" do
    post :new
    assert_response :success
  end  
  
  test "should create message" do
    assert_difference('Message.count') do
      post :create, message: { text: @message.text }
    end
    assert_redirected_to messages_path
  end
  test "leading and trailing whitespace should be removed" do
    assert_no_difference('Message.count') do
      post :create, message: { text: "               s                     " }
    end
  end  
end
