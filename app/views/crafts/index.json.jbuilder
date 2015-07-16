json.array!(@crafts) do |craft|
  json.extract! craft, :id, :fecha, :descripcion, :costo, :materiales
  json.url craft_url(craft, format: :json)
end
