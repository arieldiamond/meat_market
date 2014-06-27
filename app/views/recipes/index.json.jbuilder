json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :directions, :ingredients, :creator_id, :meatcut_id, :technique_id
  json.url recipe_url(recipe, format: :json)
end
