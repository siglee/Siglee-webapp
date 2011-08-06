require 'test_helper'

class ExpenditureItemsControllerTest < ActionController::TestCase
  setup do
    @expenditure_item = expenditure_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditure_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure_item" do
    assert_difference('ExpenditureItem.count') do
      post :create, :expenditure_item => @expenditure_item.attributes
    end

    assert_redirected_to expenditure_item_path(assigns(:expenditure_item))
  end

  test "should show expenditure_item" do
    get :show, :id => @expenditure_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expenditure_item.to_param
    assert_response :success
  end

  test "should update expenditure_item" do
    put :update, :id => @expenditure_item.to_param, :expenditure_item => @expenditure_item.attributes
    assert_redirected_to expenditure_item_path(assigns(:expenditure_item))
  end

  test "should destroy expenditure_item" do
    assert_difference('ExpenditureItem.count', -1) do
      delete :destroy, :id => @expenditure_item.to_param
    end

    assert_redirected_to expenditure_items_path
  end
end
