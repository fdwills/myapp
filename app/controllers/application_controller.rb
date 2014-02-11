class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :login?
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def login?
    return current_user != nil
  end

  def writeable?
    unless login?
      return redirect_to login_path, notice: 'To do that, you need to login!'
    end
  end
end
