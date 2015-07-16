json.array!(@kitchens) do |kitchen|
  json.extract! kitchen, :id, :fecha, :descripcion, :costo, :materiales
  json.url kitchen_url(kitchen, format: :json)
end
