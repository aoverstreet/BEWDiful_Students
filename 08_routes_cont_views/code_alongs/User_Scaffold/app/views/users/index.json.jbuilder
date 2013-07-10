json.array!(@users) do |user|
  json.extract! user, :FirstName, :LastName, :Age, :Email
  json.url user_url(user, format: :json)
end
