json.array!(@observations) do |observation|
  json.extract! observation, :id, :thermostat_id, :text, :user_id, :like
  json.url observation_url(observation, format: :json)
end
