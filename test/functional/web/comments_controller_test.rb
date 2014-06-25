require 'test_helper'

class Web::CommentsControllerTest < ActionController::TestCase
  test "should post create" do
    create :number
    attributes = attributes_for :comment
    post :create, comment: attributes
    assert_response :redirect, @response.body
    comment = Comment.last
    assert_equal attributes[:text], comment.text
    assert_redirected_to number_path(comment.number)
  end
end
