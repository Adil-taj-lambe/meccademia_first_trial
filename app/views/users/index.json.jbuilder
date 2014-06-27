json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :mobile_number, :email, :encrypted_password, :user_name
  json.url user_url(user, format: :json)
end
