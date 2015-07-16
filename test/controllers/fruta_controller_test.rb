require 'test_helper'

class FrutaControllerTest < ActionController::TestCase
  setup do
    @frutum = fruta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fruta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frutum" do
    assert_difference('Frutum.count') do
      post :create, frutum: { descripcion: @frutum.descripcion, precio: @frutum.precio, tipo: @frutum.tipo }
    end

    assert_redirected_to frutum_path(assigns(:frutum))
  end

  test "should show frutum" do
    get :show, id: @frutum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frutum
    assert_response :success
  end

  test "should update frutum" do
    patch :update, id: @frutum, frutum: { descripcion: @frutum.descripcion, precio: @frutum.precio, tipo: @frutum.tipo }
    assert_redirected_to frutum_path(assigns(:frutum))
  end

  test "should destroy frutum" do
    assert_difference('Frutum.count', -1) do
      delete :destroy, id: @frutum
    end

    assert_redirected_to fruta_path
  end
end
