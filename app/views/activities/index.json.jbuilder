json.array!(@activities) do |activity|
  json.extract! activity, :id, :energy_id, :kitchen_id, :craft_id
  json.url activity_url(activity, format: :json)
end
