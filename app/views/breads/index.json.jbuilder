json.array!(@breads) do |bread|
  json.extract! bread, :id, :tipo, :descripcion, :precio
  json.url bread_url(bread, format: :json)
end
