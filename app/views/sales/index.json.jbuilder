json.array!(@sales) do |sale|
  json.extract! sale, :id, :fecha, :fruit_id, :vegetable_id, :bread_id, :snack_id, :dairy_id, :herb_id, :product_id, :venta_fruta, :venta_vegetal, :venta_pan, :venta_botana, :venta_lacteo, :venta_hierba, :venta_producto, :venta_total
  json.url sale_url(sale, format: :json)
end
