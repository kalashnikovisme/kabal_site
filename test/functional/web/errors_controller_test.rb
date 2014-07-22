require 'test_helper'

class Web::ErrorsControllerTest < ActionController::TestCase
  test "should not found" do
    get :not_found
    assert_response 404
  end
  test "should forbidden" do
    get :forbidden
    assert_response 403
  end
end
