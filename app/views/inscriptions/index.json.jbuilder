json.array!(@inscriptions) do |inscription|
  json.extract! inscription, :id, :nombre_cliente, :activity_id, :fecha, :nota
  json.url inscription_url(inscription, format: :json)
end
