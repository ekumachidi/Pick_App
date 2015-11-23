class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def create
    @user = User.find(1)
    package = Package.find(params[:package_id]) 
  	@assignment = @user.assignments.build(package_id: package.id)
      if @assignment.save
        redirect_to edit_assignment_path(@assignment.id)
      else
        render 'new'
      end
  end

  def new
    @assignment = Assignment.new
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end
end
