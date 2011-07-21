require 'test_helper'

class CustmersControllerTest < ActionController::TestCase
  setup do
    @custmer = custmers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:custmers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custmer" do
    assert_difference('Custmer.count') do
      post :create, :custmer => @custmer.attributes
    end

    assert_redirected_to custmer_path(assigns(:custmer))
  end

  test "should show custmer" do
    get :show, :id => @custmer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @custmer.to_param
    assert_response :success
  end

  test "should update custmer" do
    put :update, :id => @custmer.to_param, :custmer => @custmer.attributes
    assert_redirected_to custmer_path(assigns(:custmer))
  end

  test "should destroy custmer" do
    assert_difference('Custmer.count', -1) do
      delete :destroy, :id => @custmer.to_param
    end

    assert_redirected_to custmers_path
  end
end
