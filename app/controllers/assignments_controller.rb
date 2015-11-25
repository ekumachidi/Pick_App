class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def create
    @user = current_user
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

  def update
    @assignment = Assignment.find(params[:id])
    if @assignment.save
      redirect_to @assignment
    else
      render :edit
      #delete that assignment
    end
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

end

