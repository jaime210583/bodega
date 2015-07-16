json.array!(@fruits) do |fruit|
  json.extract! fruit, :id, :tipo, :descripcion, :precio
  json.url fruit_url(fruit, format: :json)
end
