class CouriersController < ApplicationController
	before_action :find_courier, only: [:show, :destroy, :update, :edit]

	def new
		@courier =  Courier.new
	end

	def create
		@courier = Courier.new(courier_param)
		if @courier.save
			redirect_to @courier
		else
			render 'new'
		end
		
	end

	def show

	end

	def edit
	end

	def update
		if  @courier.update(courier_param)
			redirect_to @courier
		else
			render 'edit'
		end

	end

	def index
		@couriers = Courier.all
	end

	def destroy
	end

	private
		def courier_param
			params.require(:courier).permit(:name, :address, :phone)
		end

		
		def find_courier
			@courier = Courier.find(params[:id])
		end

end
