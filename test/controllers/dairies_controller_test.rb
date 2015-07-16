require 'test_helper'

class DairiesControllerTest < ActionController::TestCase
  setup do
    @dairy = dairies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dairies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dairy" do
    assert_difference('Dairy.count') do
      post :create, dairy: { descripcion: @dairy.descripcion, precio: @dairy.precio, tipo: @dairy.tipo }
    end

    assert_redirected_to dairy_path(assigns(:dairy))
  end

  test "should show dairy" do
    get :show, id: @dairy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dairy
    assert_response :success
  end

  test "should update dairy" do
    patch :update, id: @dairy, dairy: { descripcion: @dairy.descripcion, precio: @dairy.precio, tipo: @dairy.tipo }
    assert_redirected_to dairy_path(assigns(:dairy))
  end

  test "should destroy dairy" do
    assert_difference('Dairy.count', -1) do
      delete :destroy, id: @dairy
    end

    assert_redirected_to dairies_path
  end
end
