class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if @user and @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to recipes_path
        return
    end
    render :new
  end

  def show
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end
