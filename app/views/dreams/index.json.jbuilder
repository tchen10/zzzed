json.array!(@dreams) do |dream|
  json.extract! dream, :id, :date, :entry, :image_url, :user_id
  json.url dream_url(dream, format: :json)
end
