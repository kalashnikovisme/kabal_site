require 'test_helper'

class Web::Admin::WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    user = create :user
    sign_in user
    get :index
    assert_response :success, @response.body
  end
  test "should not get index" do
    get :index
    assert_response :redirect, @response.body
    assert_redirected_to new_session_path
  end
end
