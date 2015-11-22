class PackagesController < ApplicationController
  before_action :find_package, only: [:show, :destroy, :update, :edit]

  def index
  	@packages = Package.all
  	
  end

  def new
  @user = User.find(params[:user_id])
  	#@package = Package.new
  end

  def create
  	@package = Package.new(package_param)
  	# @package.user_id = User.find(params[:id])
  	#@package.user_id = params[:user_id]
  	if @package.save
  		# redirect_to @package
  		redirect_to packages_path #(@package.user_id)
  	else
  		redirect_to new_package_path #(@package.user_id)
  	end
  end

  def edit
  end

  def show
  end

  def update
  	if @package.update(package_param)
  		redirect_to @package
  	else
  		render 'edit'
  	end
  end

  def destroy

  end

  private
  	def package_param
  		params.require(:packages).permit(:tracking_code, :weight_kg, :vendor, :location)
  	end

  	def find_package
  		@package = Package.find(params[:id])
  	end
end
