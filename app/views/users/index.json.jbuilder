json.array!(@users) do |user|
<<<<<<< HEAD
  json.extract! user, :id, :name, :address, :phone
=======
  json.extract! user, :id, :name, :address, :phone_no
>>>>>>> origin/master
  json.url user_url(user, format: :json)
end
