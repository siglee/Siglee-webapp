require 'test_helper'

class ExpenditureCategoriesControllerTest < ActionController::TestCase
  setup do
    @expenditure_category = expenditure_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditure_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure_category" do
    assert_difference('ExpenditureCategory.count') do
      post :create, :expenditure_category => @expenditure_category.attributes
    end

    assert_redirected_to expenditure_category_path(assigns(:expenditure_category))
  end

  test "should show expenditure_category" do
    get :show, :id => @expenditure_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expenditure_category.to_param
    assert_response :success
  end

  test "should update expenditure_category" do
    put :update, :id => @expenditure_category.to_param, :expenditure_category => @expenditure_category.attributes
    assert_redirected_to expenditure_category_path(assigns(:expenditure_category))
  end

  test "should destroy expenditure_category" do
    assert_difference('ExpenditureCategory.count', -1) do
      delete :destroy, :id => @expenditure_category.to_param
    end

    assert_redirected_to expenditure_categories_path
  end
end
