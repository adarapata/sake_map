json.array!(@shops) do |shop|
  json.extract! shop, :id, :name, :prefecture, :address, :latitude, :longitude
  json.url shop_url(shop, format: :json)
end
