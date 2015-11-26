class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def current_user
    @current_user ||= User.find_by(id: session[:id])
  end

  # def require_login
  # 	redirect_to login_path unless current_user
  # end

<<<<<<< HEAD
  

=======
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f
end
