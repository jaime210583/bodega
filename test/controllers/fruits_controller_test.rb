require 'test_helper'

class FruitsControllerTest < ActionController::TestCase
  setup do
    @fruit = fruits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fruits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fruit" do
    assert_difference('Fruit.count') do
      post :create, fruit: { descripcion: @fruit.descripcion, precio: @fruit.precio, tipo: @fruit.tipo }
    end

    assert_redirected_to fruit_path(assigns(:fruit))
  end

  test "should show fruit" do
    get :show, id: @fruit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fruit
    assert_response :success
  end

  test "should update fruit" do
    patch :update, id: @fruit, fruit: { descripcion: @fruit.descripcion, precio: @fruit.precio, tipo: @fruit.tipo }
    assert_redirected_to fruit_path(assigns(:fruit))
  end

  test "should destroy fruit" do
    assert_difference('Fruit.count', -1) do
      delete :destroy, id: @fruit
    end

    assert_redirected_to fruits_path
  end
end
