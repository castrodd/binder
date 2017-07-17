class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # memoization
    @current_user ||= User.find_by(id: session[:user_id])
  end
  helper_method :current_user

  def require_logged_in
      redirect_to root_path unless current_user
  end

end
