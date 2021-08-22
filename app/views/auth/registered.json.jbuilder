json.message "User registered successfully."
json.user do
    json.extract! @user, :id, :name, :username, :email, :created_at, :updated_at
end