require 'test_helper'

class Web::NumbersControllerTest < ActionController::TestCase
  setup do
    @number = create :number
  end

  test "should get new" do
    get :new
    assert_response :success, @response.body
  end

  test "should post create" do
    attributes = attributes_for :number
    post :create, number: attributes
    assert_response :redirect, @response.body
    number = Number.last
    assert_equal attributes[:value], number.value
    assert_redirected_to number_path(number)
  end

  test "should not create and redirect to existing number" do
    number = create :number
    attributes = { value: number.value, language: number.language }
    post :create, number: attributes
    assert_response :redirect, @response.body
    assert_redirected_to number_path(number)
  end

  test "should get show" do
    get :show, id: @number
    assert_response :success, @response.body
  end
end
