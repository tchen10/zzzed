json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :email, :dob, :bio
  json.url user_url(user, format: :json)
end
