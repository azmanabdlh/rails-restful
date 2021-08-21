json.message 'User deleted successfully.'
json.user do
    json.partial! 'users/user', user: @user
end