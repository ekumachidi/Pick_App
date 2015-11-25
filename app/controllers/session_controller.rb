class SessionController < ApplicationController
  def new
  end

  def create
  	@user = User.find_by(name: params[:name])
  	if @user
      if @user.authenticate(params[:password])
  		 session[:id] = @user.id
  		 redirect_to @user
  	else
     
  		redirect_to login_path
    end
  else
    redirect_to login_path
  	end
  end

  def show
  	
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
  end
end
