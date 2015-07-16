require 'test_helper'

class SalesControllerTest < ActionController::TestCase
  setup do
    @sale = sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale" do
    assert_difference('Sale.count') do
      post :create, sale: { bread_id: @sale.bread_id, dairy_id: @sale.dairy_id, fecha: @sale.fecha, fruit_id: @sale.fruit_id, herb_id: @sale.herb_id, product_id: @sale.product_id, snack_id: @sale.snack_id, vegetable_id: @sale.vegetable_id, venta_botana: @sale.venta_botana, venta_fruta: @sale.venta_fruta, venta_hierba: @sale.venta_hierba, venta_lacteo: @sale.venta_lacteo, venta_pan: @sale.venta_pan, venta_producto: @sale.venta_producto, venta_total: @sale.venta_total, venta_vegetal: @sale.venta_vegetal }
    end

    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should show sale" do
    get :show, id: @sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sale
    assert_response :success
  end

  test "should update sale" do
    patch :update, id: @sale, sale: { bread_id: @sale.bread_id, dairy_id: @sale.dairy_id, fecha: @sale.fecha, fruit_id: @sale.fruit_id, herb_id: @sale.herb_id, product_id: @sale.product_id, snack_id: @sale.snack_id, vegetable_id: @sale.vegetable_id, venta_botana: @sale.venta_botana, venta_fruta: @sale.venta_fruta, venta_hierba: @sale.venta_hierba, venta_lacteo: @sale.venta_lacteo, venta_pan: @sale.venta_pan, venta_producto: @sale.venta_producto, venta_total: @sale.venta_total, venta_vegetal: @sale.venta_vegetal }
    assert_redirected_to sale_path(assigns(:sale))
  end

  test "should destroy sale" do
    assert_difference('Sale.count', -1) do
      delete :destroy, id: @sale
    end

    assert_redirected_to sales_path
  end
end
