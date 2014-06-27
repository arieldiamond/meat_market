json.array!(@meatcuts) do |meatcut|
  json.extract! meatcut, :id, :cut_name, :primal_id
  json.url meatcut_url(meatcut, format: :json)
end
