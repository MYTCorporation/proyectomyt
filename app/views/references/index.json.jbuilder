json.array!(@references) do |reference|
  json.extract! reference, :id, :name, :cant, :talle, :description
  json.url reference_url(reference, format: :json)
end
