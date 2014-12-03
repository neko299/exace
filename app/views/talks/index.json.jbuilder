json.array!(@talks) do |talk|
  json.extract! talk, :content, :image, :user_id
  json.url talk_url(talk, format: :json)
end