require 'test_helper'

class MastersControllerTest < ActionController::TestCase
  setup do
    @master = masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create master" do
    assert_difference('Master.count') do
      post :create, :master => @master.attributes
    end

    assert_redirected_to master_path(assigns(:master))
  end

  test "should show master" do
    get :show, :id => @master.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @master.to_param
    assert_response :success
  end

  test "should update master" do
    put :update, :id => @master.to_param, :master => @master.attributes
    assert_redirected_to master_path(assigns(:master))
  end

  test "should destroy master" do
    assert_difference('Master.count', -1) do
      delete :destroy, :id => @master.to_param
    end

    assert_redirected_to masters_path
  end
end
