json.array!(@country_names) do |country_name|
  json.extract! country_name, :id, :name, :code
  json.url country_name_url(country_name, format: :json)
end
