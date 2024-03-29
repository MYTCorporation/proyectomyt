require 'test_helper'

class ProcesControllerTest < ActionController::TestCase
  setup do
    @proce = proces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create proce" do
    assert_difference('Proce.count') do
      post :create, proce: { description: @proce.description, name: @proce.name }
    end

    assert_redirected_to proce_path(assigns(:proce))
  end

  test "should show proce" do
    get :show, id: @proce
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @proce
    assert_response :success
  end

  test "should update proce" do
    patch :update, id: @proce, proce: { description: @proce.description, name: @proce.name }
    assert_redirected_to proce_path(assigns(:proce))
  end

  test "should destroy proce" do
    assert_difference('Proce.count', -1) do
      delete :destroy, id: @proce
    end

    assert_redirected_to proces_path
  end
end
