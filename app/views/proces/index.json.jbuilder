json.array!(@proces) do |proce|
  json.extract! proce, :id, :name, :description
  json.url proce_url(proce, format: :json)
end
