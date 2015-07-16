json.array!(@vegetables) do |vegetable|
  json.extract! vegetable, :id, :tipo, :descripcion, :precio
  json.url vegetable_url(vegetable, format: :json)
end
