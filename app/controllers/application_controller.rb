class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  skip_before_action :verify_authenticity_token

  def index
    render json: 'Home'
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    unless logged_in?
      render status: :forbidden
    end
  end

end
