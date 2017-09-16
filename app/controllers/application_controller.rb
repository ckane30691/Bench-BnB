class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def login!(user)
    session[:session_token] = user.reset_session_token
    @current_user = user
  end

  def logout!
    if current_user
      @current_user.reset_session_token
      session[:session_token] = nil
      true
    else
      false
    end
  end

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end
end
