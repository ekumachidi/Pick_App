class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def create
    @admin = Admin.find(3)
    package = Package.find(params[:package_id]) 
  	@assignment = @admin.assignments.build(package_id: package.id)
      if @assignment.save
        redirect_to assignments_path
      else
        render 'new'
      end
  end

  def new
    @assignment = Assignment.new
  end
end
