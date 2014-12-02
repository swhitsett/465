json.array!(@events) do |event|
  json.extract! event, :id, :event_desc, :event_model, :event_year, :event_displacement, :event_weight, :user_id, :track_id
  json.url event_url(event, format: :json)
end
