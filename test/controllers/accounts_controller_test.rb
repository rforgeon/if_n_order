require 'test_helper'

class AccountsControllerTest < ActionController::TestCase
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post :create, account: { address_line1: @account.address_line1, address_line2: @account.address_line2, billing_first_name: @account.billing_first_name, billing_last_name: @account.billing_last_name, card_number: @account.card_number, city: @account.city, condition_id: @account.condition_id, country: @account.country, expiration_month: @account.expiration_month, expiration_year: @account.expiration_year, name_on_card: @account.name_on_card, phone_number: @account.phone_number, security_code: @account.security_code, state: @account.state, user_id: @account.user_id, zip_code: @account.zip_code }
    end

    assert_redirected_to account_path(assigns(:account))
  end

  test "should show account" do
    get :show, id: @account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @account
    assert_response :success
  end

  test "should update account" do
    patch :update, id: @account, account: { address_line1: @account.address_line1, address_line2: @account.address_line2, billing_first_name: @account.billing_first_name, billing_last_name: @account.billing_last_name, card_number: @account.card_number, city: @account.city, condition_id: @account.condition_id, country: @account.country, expiration_month: @account.expiration_month, expiration_year: @account.expiration_year, name_on_card: @account.name_on_card, phone_number: @account.phone_number, security_code: @account.security_code, state: @account.state, user_id: @account.user_id, zip_code: @account.zip_code }
    assert_redirected_to account_path(assigns(:account))
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete :destroy, id: @account
    end

    assert_redirected_to accounts_path
  end
end
