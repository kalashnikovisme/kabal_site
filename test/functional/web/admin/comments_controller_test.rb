require 'test_helper'

class Web::Admin::CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = create :comment
    @user = create :user
    sign_in @user
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    attributes = attributes_for :comment

    post :create, comment: attributes
    assert_response :redirect

    comment = Comment.last
    assert_equal attributes[:text], comment.text
  end

  test "should not create comment" do
    attributes = { text: @comment.text }

    post :create, comment: attributes
    assert_response :success
  end

  test "should get edit by user" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment by user" do
    attributes = attributes_for :comment
    put :update, id: @comment, comment: attributes
    assert_response :redirect

    @comment.reload
    assert_equal attributes[:text], @comment.text
  end

  test "should not update comment with render edit" do
    attributes = attributes_for :comment
    attributes[:text] = nil
    put :update, id: @comment, comment: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to admin_comments_path
  end
end
