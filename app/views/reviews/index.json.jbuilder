json.array!(@reviews) do |review|
  json.extract! review, :id, :name, :description, :price, :origin, :rating
  json.url review_url(review, format: :json)
end
