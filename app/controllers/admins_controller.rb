class AdminsController < ApplicationController
  before_action :find_admin, only:[:edit, :destroy, :update, :show]
  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def create
  end

  def find_admin
    @admin = Admin.find(params[:id])
  end
end
