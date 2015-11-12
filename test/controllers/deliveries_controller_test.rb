require 'test_helper'

class DeliveriesControllerTest < ActionController::TestCase
  setup do
    @delivery = deliveries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deliveries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery" do
    assert_difference('Delivery.count') do
      post :create, delivery: { address_line1: @delivery.address_line1, address_line2: @delivery.address_line2, amazon_email: @delivery.amazon_email, amazon_password: @delivery.amazon_password, city: @delivery.city, condition_id: @delivery.condition_id, country: @delivery.country, first_name: @delivery.first_name, last_name: @delivery.last_name, phone_number: @delivery.phone_number, state: @delivery.state, user_id: @delivery.user_id, zip_code: @delivery.zip_code }
    end

    assert_redirected_to delivery_path(assigns(:delivery))
  end

  test "should show delivery" do
    get :show, id: @delivery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery
    assert_response :success
  end

  test "should update delivery" do
    patch :update, id: @delivery, delivery: { address_line1: @delivery.address_line1, address_line2: @delivery.address_line2, amazon_email: @delivery.amazon_email, amazon_password: @delivery.amazon_password, city: @delivery.city, condition_id: @delivery.condition_id, country: @delivery.country, first_name: @delivery.first_name, last_name: @delivery.last_name, phone_number: @delivery.phone_number, state: @delivery.state, user_id: @delivery.user_id, zip_code: @delivery.zip_code }
    assert_redirected_to delivery_path(assigns(:delivery))
  end

  test "should destroy delivery" do
    assert_difference('Delivery.count', -1) do
      delete :destroy, id: @delivery
    end

    assert_redirected_to deliveries_path
  end
end
