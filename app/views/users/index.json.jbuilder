json.array!(@users) do |user|
  json.extract! user, :name, :prof, :image, :email, :remember_token, :address
  json.url user_url(user, format: :json)
end