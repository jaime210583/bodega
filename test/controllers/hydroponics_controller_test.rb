require 'test_helper'

class HydroponicsControllerTest < ActionController::TestCase
  setup do
    @hydroponic = hydroponics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hydroponics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hydroponic" do
    assert_difference('Hydroponic.count') do
      post :create, hydroponic: { costo: @hydroponic.costo, descripcion: @hydroponic.descripcion, fecha: @hydroponic.fecha, materiales: @hydroponic.materiales }
    end

    assert_redirected_to hydroponic_path(assigns(:hydroponic))
  end

  test "should show hydroponic" do
    get :show, id: @hydroponic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hydroponic
    assert_response :success
  end

  test "should update hydroponic" do
    patch :update, id: @hydroponic, hydroponic: { costo: @hydroponic.costo, descripcion: @hydroponic.descripcion, fecha: @hydroponic.fecha, materiales: @hydroponic.materiales }
    assert_redirected_to hydroponic_path(assigns(:hydroponic))
  end

  test "should destroy hydroponic" do
    assert_difference('Hydroponic.count', -1) do
      delete :destroy, id: @hydroponic
    end

    assert_redirected_to hydroponics_path
  end
end
