require 'test_helper'

class EnergiesControllerTest < ActionController::TestCase
  setup do
    @energy = energies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energy" do
    assert_difference('Energy.count') do
      post :create, energy: { costo: @energy.costo, descripcion: @energy.descripcion, fecha: @energy.fecha, materiales: @energy.materiales }
    end

    assert_redirected_to energy_path(assigns(:energy))
  end

  test "should show energy" do
    get :show, id: @energy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energy
    assert_response :success
  end

  test "should update energy" do
    patch :update, id: @energy, energy: { costo: @energy.costo, descripcion: @energy.descripcion, fecha: @energy.fecha, materiales: @energy.materiales }
    assert_redirected_to energy_path(assigns(:energy))
  end

  test "should destroy energy" do
    assert_difference('Energy.count', -1) do
      delete :destroy, id: @energy
    end

    assert_redirected_to energies_path
  end
end
