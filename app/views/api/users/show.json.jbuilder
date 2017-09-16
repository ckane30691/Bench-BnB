json.partial! 'api/users/user', user: @user
json.errors do
  json.session do
    @user.errors
  end
end
