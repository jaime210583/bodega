json.array!(@hydroponics) do |hydroponic|
  json.extract! hydroponic, :id, :fecha, :descripcion, :costo, :materiales
  json.url hydroponic_url(hydroponic, format: :json)
end
