json.array!(@cars) do |car|
  json.extract! car, :id, :car_make, :car_model, :car_year, :car_displacement, :car_weight, :car_desc, :image_id
  json.url car_url(car, format: :json)
end
