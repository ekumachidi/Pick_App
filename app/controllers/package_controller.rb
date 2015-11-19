class PackageController < ApplicationController
  before_action :find_package, only: [:show, :destroy, :update, :edit]

  def index
  	@packages = Package.all
<<<<<<< HEAD
  	@user = User.find[params(:id])
=======
>>>>>>> origin/master
  end

  def new
  	@package = Package.new
  end

  def create
  	@package = Package.new(package_param)
<<<<<<< HEAD
  	@package.user_id = User.find(params[:id])
=======
>>>>>>> origin/master
  	if @package.save
  		redirect_to @package
  	else
  		render 'new'
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
  		params.require(:package).permit(:tracking_code, :weight_kg, :vendor, :location)
  	end

  	def find_package
  		@package = Package.find(params[:id])
  	end
end
