json.array!(@primals) do |primal|
  json.extract! primal, :id, :name
  json.url primal_url(primal, format: :json)
end
