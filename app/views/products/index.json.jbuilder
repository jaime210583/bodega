json.array!(@products) do |product|
  json.extract! product, :id, :tipo, :descripcion, :precio
  json.url product_url(product, format: :json)
end
