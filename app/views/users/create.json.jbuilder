json.message 'User created successfully.'
json.user do
    json.partial! 'users/user', user: @user
end