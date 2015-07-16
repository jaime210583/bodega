json.array!(@energies) do |energy|
  json.extract! energy, :id, :fecha, :descripcion, :costo, :materiales
  json.url energy_url(energy, format: :json)
end
