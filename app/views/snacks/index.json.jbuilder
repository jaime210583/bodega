json.array!(@snacks) do |snack|
  json.extract! snack, :id, :tipo, :descripcion, :precio
  json.url snack_url(snack, format: :json)
end
