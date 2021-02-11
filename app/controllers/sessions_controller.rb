class SessionsController < ApplicationController
  before_action :authenticate_user, only: [:index]

  def new
  end
  
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id  
      redirect_to '/gossip'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to gossip_index_path, notice: "Logged out!"
  end



  private

  def authenticate_user
    unless current_user
      flash[:danger] = "Please log in."
      redirect_to new_session_path
    end
  end
end
