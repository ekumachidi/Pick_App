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
<<<<<<< HEAD
    @couriers = Courier.all
=======
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])
<<<<<<< HEAD
    if @assignment.update(courier_params)
       @assignment.package.update(assigned: true)
=======
    if @assignment.save
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f
      redirect_to @assignment
    else
      render :edit
      #delete that assignment
    end
  end

  def show
    @assignment = Assignment.find(params[:id])
  end
<<<<<<< HEAD
   def courier_params
    params.require(:assignment).permit(:courier_id)
  end
=======
>>>>>>> 1515b4b68bf7311968a6a1c9a1197808656b9e5f

end

