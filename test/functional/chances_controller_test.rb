require 'test_helper'

class ChancesControllerTest < ActionController::TestCase
  setup do
    @chance = chances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chance" do
    assert_difference('Chance.count') do
      post :create, :chance => @chance.attributes
    end

    assert_redirected_to chance_path(assigns(:chance))
  end

  test "should show chance" do
    get :show, :id => @chance.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @chance.to_param
    assert_response :success
  end

  test "should update chance" do
    put :update, :id => @chance.to_param, :chance => @chance.attributes
    assert_redirected_to chance_path(assigns(:chance))
  end

  test "should destroy chance" do
    assert_difference('Chance.count', -1) do
      delete :destroy, :id => @chance.to_param
    end

    assert_redirected_to chances_path
  end
end
