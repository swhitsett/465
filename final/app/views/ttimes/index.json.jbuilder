json.array!(@ttimes) do |ttime|
  json.extract! ttime, :id, :minutes, :seconds, :miliseconds, :car_id, :user_id, :track_id
  json.url ttime_url(ttime, format: :json)
end
