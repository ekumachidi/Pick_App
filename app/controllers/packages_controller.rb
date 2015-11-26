class PackagesController < ApplicationController
  before_action :find_package, only: [:show, :destroy, :update, :edit]

  def index
  	@packages = Package.all
  	
  end

  def new
<<<<<<< HEAD
    @vendors = ["a", "b", "c", "d"]
=======
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f
    @package = Package.new
    @user = User.find(params[:user_id])
  end

  def  create
    @user = current_user
  	@package = @user.packages.build(package_params)
  	#@package.user_id = params[:user_id]
  	if @package.save
  		 redirect_to @package
  		#@redirect_to packages_path (@package.user_id)
  	else
  		redirect_to new_packages_path (@package.user_id)
  	end
  end
  

  def edit
  end

  def show
  end

  def update
  	if @package.update(package_params)
  		redirect_to @package
  	else
  		render 'edit'
  	end
  end

  def destroy

  end

  
  def package_params
    params.require(:package).permit(:tracking_code, :weight_kg, :vendor, :location)
  end

 	def find_package
  	@package = Package.find(params[:id])
  end
end
