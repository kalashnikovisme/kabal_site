require 'test_helper'

class Web::Admin::NumbersControllerTest < ActionController::TestCase
  setup do
    @number = create :number
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

  test "should create number" do
    attributes = attributes_for :number

    post :create, number: attributes
    assert_response :redirect

    number = Number.last
    assert_equal attributes[:value], number.value
  end

  test "should not create number" do
    attributes = { value: @number.value }

    post :create, number: attributes
    assert_response :success
  end

  test "should get edit by user" do
    get :edit, id: @number
    assert_response :success
  end

  test "should update number by user" do
    attributes = attributes_for :number
    put :update, id: @number, number: attributes
    assert_response :redirect

    @number.reload
    assert_equal attributes[:value], @number.value
  end

  test "should not update number with render edit" do
    attributes = attributes_for :number
    attributes[:value] = nil
    put :update, id: @number, number: attributes

    assert_response :success

    assert_template :edit
  end

  test "should destroy number" do
    assert_difference('Number.count', -1) do
      delete :destroy, id: @number
    end

    assert_redirected_to admin_numbers_path
  end
end
