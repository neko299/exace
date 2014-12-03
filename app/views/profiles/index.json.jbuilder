json.array!(@profiles) do |profile|
  json.extract! profile, :id, :image, :name, :imagetype, :image_2, :prof, :image_3, :desk, :image_4, :image_5, :price, :category_id
  json.url profile_url(profile, format: :json)
end
