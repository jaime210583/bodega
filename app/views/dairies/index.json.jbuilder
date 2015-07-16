json.array!(@dairies) do |dairy|
  json.extract! dairy, :id, :tipo, :descripcion, :precio
  json.url dairy_url(dairy, format: :json)
end
