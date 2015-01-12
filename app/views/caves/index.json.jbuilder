json.array!(@caves) do |cafe|
  json.extract! cafe, :id, :name, :description, :lat, :lon
  json.url cafe_url(cafe, format: :json)
end
