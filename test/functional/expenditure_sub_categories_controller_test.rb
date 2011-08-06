require 'test_helper'

class ExpenditureSubCategoriesControllerTest < ActionController::TestCase
  setup do
    @expenditure_sub_category = expenditure_sub_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expenditure_sub_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expenditure_sub_category" do
    assert_difference('ExpenditureSubCategory.count') do
      post :create, :expenditure_sub_category => @expenditure_sub_category.attributes
    end

    assert_redirected_to expenditure_sub_category_path(assigns(:expenditure_sub_category))
  end

  test "should show expenditure_sub_category" do
    get :show, :id => @expenditure_sub_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @expenditure_sub_category.to_param
    assert_response :success
  end

  test "should update expenditure_sub_category" do
    put :update, :id => @expenditure_sub_category.to_param, :expenditure_sub_category => @expenditure_sub_category.attributes
    assert_redirected_to expenditure_sub_category_path(assigns(:expenditure_sub_category))
  end

  test "should destroy expenditure_sub_category" do
    assert_difference('ExpenditureSubCategory.count', -1) do
      delete :destroy, :id => @expenditure_sub_category.to_param
    end

    assert_redirected_to expenditure_sub_categories_path
  end
end
