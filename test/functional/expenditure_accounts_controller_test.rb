require 'test_helper'

class ExpenditureAccountsControllerTest < ActionController::TestCase
  setup do
    @expenditure_account = expenditure_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditure_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure_account" do
    assert_difference('ExpenditureAccount.count') do
      post :create, :expenditure_account => @expenditure_account.attributes
    end

    assert_redirected_to expenditure_account_path(assigns(:expenditure_account))
  end

  test "should show expenditure_account" do
    get :show, :id => @expenditure_account.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expenditure_account.to_param
    assert_response :success
  end

  test "should update expenditure_account" do
    put :update, :id => @expenditure_account.to_param, :expenditure_account => @expenditure_account.attributes
    assert_redirected_to expenditure_account_path(assigns(:expenditure_account))
  end

  test "should destroy expenditure_account" do
    assert_difference('ExpenditureAccount.count', -1) do
      delete :destroy, :id => @expenditure_account.to_param
    end

    assert_redirected_to expenditure_accounts_path
  end
end
