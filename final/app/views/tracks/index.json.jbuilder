json.array!(@tracks) do |track|
  json.extract! track, :id, :track_name, :track_location, :track_desc, :image_id, :event_id
  json.url track_url(track, format: :json)
end
