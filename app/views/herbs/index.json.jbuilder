json.array!(@herbs) do |herb|
  json.extract! herb, :id, :tipo, :descripcion, :precio
  json.url herb_url(herb, format: :json)
end
