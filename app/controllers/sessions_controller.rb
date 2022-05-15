class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render json: { 'loggedIn': true }
    else
      render json: 'fail'
    end
  end

  def destroy
    session[:user_id] = nil
    render status: 200
  end
end
