class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def create
    @courier = Courier.find() #ourier whose location is  near  vendor location
    package = Package.find_(params[:package_id]) 
  	@assignment = @adim.assignments.build(package.id, @courier.id)
      if @assignment.save
        redirect_to assignments_path
      else
        render 'new'
      end
  end

  def new
  end
end
