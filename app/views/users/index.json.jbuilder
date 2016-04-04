json.array!(@users) do |user|
  json.extract! user, :id, :name, :kana_name, :mail_address, :sex, :age, :birthday
  json.url user_url(user, format: :json)
end
