json.array!(@accesses) do |access|
  json.extract! access, :id, :track_id, :user_id, :event_id
  json.url access_url(access, format: :json)
end
