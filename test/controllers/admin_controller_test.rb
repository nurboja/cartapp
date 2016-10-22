require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

  test "should get products" do
    get :products
    assert_response :success
  end

  test "should get categories" do
    get :categories
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

end
