json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :customer_address1, :customer_address2, :customer_state, :customer_zip
  json.url user_url(user, format: :json)
end
