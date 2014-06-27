json.array!(@pins) do |pin|
  json.extract! pin, :id, :user_id, :recipe_id
  json.url pin_url(pin, format: :json)
end
