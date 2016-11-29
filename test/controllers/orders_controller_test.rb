require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get update" do
    get :update
    assert_response :success
  end

  test "should get add_product" do
    get :add_product
    assert_response :success
  end

end
