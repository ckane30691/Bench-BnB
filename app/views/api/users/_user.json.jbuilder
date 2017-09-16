json.session do
  json.current_user do
    json.extract! user, :id, :username, :session_token
  end
end
